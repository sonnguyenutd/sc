package edu.utd.sc.eval.actgenerating;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;

import org.apache.commons.math3.distribution.EnumeratedIntegerDistribution;

public class Action {
	static int counter = 1000;
	String name;
	List<Argument> paras;
	List<Predicate> preconds;
	List<Predicate> effects;

	public boolean isSimilarPreconds(Action other) {
		if (other.preconds.size() != this.preconds.size())
			return false;
		List<String> preNames1 = getPrecondsSpec();
		List<String> preNames2 = other.getPrecondsSpec();

		return preNames2.equals(preNames1);
	}

	public boolean isMutex(Action other) {
		for (Predicate ef : effects) {
			for (Predicate ef2 : other.effects) {
				if (ef.equals(ef2) && ef.isNegated != ef2.isNegated)
					return true;
			}
		}
		return false;
	}

	public boolean isMutex(Collection<Action> others) {
		for (Action action : others) {
			if (isMutex(action))
				return true;
		}
		return false;
	}

	public List<String> getPrecondsSpec() {
		List<String> preNames1 = new ArrayList<String>();
		for (Predicate p : this.preconds) {
			preNames1.add(p.name);
		}
		Collections.sort(preNames1);
		return preNames1;
	}

	public List<String> getEffectsSpec() {
		List<String> preNames1 = new ArrayList<String>();
		for (Predicate p : this.effects) {
			preNames1.add(p.name + " - " + p.isNegated);
		}
		Collections.sort(preNames1);
		return preNames1;
	}

	public Action() {
		paras = new ArrayList<Argument>();
		preconds = new ArrayList<Predicate>();
		effects = new ArrayList<Predicate>();
	}

	@Override
	public int hashCode() {
		return getSpec().hashCode();
	}

	@Override
	public boolean equals(Object obj) {
		Action other = (Action) obj;
		if (!getSpec().equals(other.getSpec()))
			return false;
		if (!ParentAction.isConsistent(this.preconds, other.preconds)
				|| !ParentAction.isConsistent(other.preconds, this.preconds))
			return false;

		if (!ParentAction.isConsistent(this.effects, other.effects)
				|| !ParentAction.isConsistent(other.effects, this.effects))
			return false;

		return true;
	}

	private String getSpec() {
		return getPrecondsSpec().toString() + "--" + getEffectsSpec().toString();
	}

	/**
	 * Check if the set of arguments in preconds = the set of arguments in effects
	 * 
	 * @return
	 */
	public boolean isAppropriate() {
		Set<String> preParaNames = new HashSet<String>();
		for (Predicate pre : preconds) {
			for (Argument a : pre.args)
				preParaNames.add(a.name);
		}

		Set<String> effParaNames = new HashSet<String>();
		for (Predicate pre : effects) {
			for (Argument a : pre.args)
				effParaNames.add(a.name);
		}
		if (!preParaNames.equals(effParaNames))
			return false;

		// Check duplicated predicate across preconds and effects
		for (Predicate precond : preconds) {
			String precondPDDL = precond.pddl();
			for (Predicate effect : effects) {
				if (precondPDDL.equals(effect.pddl()))
					return false;
			}
		}

		// Duplicate predicate in preconds
		Set<String> precondSet = new HashSet<String>();
		for (Predicate precond : preconds) {
			precondSet.add(precond.pddl());
		}
		if (precondSet.size() != preconds.size())
			return false;

		// Duplicate predicate in effects
		Set<String> effectSet = new HashSet<String>();
		for (Predicate effect : effects) {
			effectSet.add(effect.pddl());
		}
		if (effectSet.size() != effects.size())
			return false;

		// inconsistent predicates in effects
		for (int i = 0; i < effects.size() - 1; i++) {
			Predicate effect1 = effects.get(i);
			for (int j = i + 1; j < effects.size(); j++) {
				Predicate effect2 = effects.get(j);
				if (effect1.equals(effect2) && effect1.isNegated() != effect2.isNegated)
					return false;
			}
		}
		return true;

	}

	public Action(List<Argument> paras, List<Predicate> predicates, Map<String, Double> notDistribution,
			String domain) {
		this.preconds = new ArrayList<Predicate>();
		this.effects = new ArrayList<Predicate>();
		this.paras = new ArrayList<Argument>(paras);
		Random rd = new Random();
		int pre = rd.nextInt(predicates.size()) + 1;

		while (pre >= predicates.size()) 
			pre = rd.nextInt(predicates.size()) + 1;
		
		Set<Predicate> shouldBNegated = new HashSet<Predicate>();

		for (int i = 0; i < pre; i++) {
			Predicate p = predicates.get(i);
			preconds.add(p);
			if(notDistribution.keySet().contains(p.name))
				shouldBNegated.add(p);
		}
		
		for (int i = pre; i < predicates.size(); i++) {
			Predicate predicate = predicates.get(i);
			Double prob = notDistribution.get(predicate.name);
			if (prob != null) {
				int[] negation = { 0, 1 };
				double[] probs = { prob, 1 - prob };
				EnumeratedIntegerDistribution sampler = new EnumeratedIntegerDistribution(negation, probs);
				if (sampler.sample() == 0)
					predicate.setNegated(true);
			}
			
			effects.add(predicate);
		}
		this.name = "act_" + domain + "_" + (counter++);

		Collections.sort(preconds);
		Collections.sort(effects);
	}

	public void setNameByDomain(String domain) {
		this.name = "act_" + domain + "_" + (counter++);
	}

	@Override
	public String toString() {
		String result = "(:action " + name + "\n";

		result += "\t:parameters ( ";
		for (Argument p : paras) {
			result += p.pddl() + " ";
		}
		result = result.trim();
		result += ")\n";

		result += "\t:precondition (and \n\t\t\t";
		for (Predicate p : preconds) {
			result += p.pddl() + " \n\t\t\t";
		}
		result = result.trim();
		result += "\n\t)\n";

		if (effects.size() > 1)
			result += "\t:effect (and \n\t\t";
		else
			result += "\t:effect ";
		for (Predicate p : effects) {
			result += p.pddl() + " \n\t\t";
		}

		result = result.trim();
		if (effects.size() > 1)
			result += "\n\t)\n";
		else
			result += "\n";

		result += ")";
		return result;
	}
}
