package edu.utd.sc.eval.actgenerating;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;

import org.apache.commons.math3.distribution.EnumeratedIntegerDistribution;

import fr.uga.pddl4j.parser.Domain;
import fr.uga.pddl4j.parser.Exp;
import fr.uga.pddl4j.parser.NamedTypedList;
import fr.uga.pddl4j.parser.Op;
import fr.uga.pddl4j.parser.Parser;
import fr.uga.pddl4j.parser.TypedSymbol;

public class ActionGenerator {
	public static void main(String[] args) throws FileNotFoundException {
		String dm = "/Users/sonnguyen/Desktop/domains/tpp.pddl";
		File domainFile = new File(dm);
		Parser p = new Parser();
		p.parseDomain(domainFile);
		Domain domain = p.getDomain();
		ActionGenerator generator = new ActionGenerator();

		int numOfActions = 100;

		int counter = 0;
		Map<List<String>, Set<Action>> cluster = new HashMap<List<String>, Set<Action>>();
		List<Action> actions = generator.generate(domain, numOfActions);

		List<Action> actions2 = new ArrayList<Action>();

		for (int i = 0; i < actions.size(); i++) {
			Action a1 = actions.get(i);
			Set<Action> acts = cluster.get(a1.getPrecondsSpec());
			if (acts == null)
				acts = new HashSet<Action>();
			acts.add(a1);
			cluster.put(a1.getPrecondsSpec(), acts);
		}
		Map<List<String>, Set<Action>> cluster2 = new HashMap<List<String>, Set<Action>>();
		for (int i = 0; i < actions2.size(); i++) {
			Action a1 = actions2.get(i);
			Set<Action> acts = cluster2.get(a1.getPrecondsSpec());
			if (acts == null)
				acts = new HashSet<Action>();
			if (!a1.isMutex(acts)) {
				acts.add(a1);
				cluster2.put(a1.getPrecondsSpec(), acts);
			} else
				counter++;
		}
		System.out.println(actions.size());
		System.out.println(counter + cluster.size() + cluster2.size());

//		List<ParentAction> parents = new ArrayList<ParentAction>();
//		for (List<String> key : cluster.keySet()) {
//			ParentAction act = new ParentAction(domain.getName().toString());
//			act.addAll(cluster.get(key));
//			act.computeParent();
//			if (act.children.size() > 1) {
//				System.out.println(act.children.size());
//				for (Action child : act.children) {
//					System.out.println(child.preconds);
//				}
//				System.out.println("------------");
////				System.out.println(act);
//				break;
//			}
//		}

	}

	Map<String, Integer> paraIntDic = new HashMap<String, Integer>();
	Map<Integer, String> idParaDic = new HashMap<Integer, String>();
	Map<String, Integer> ParaFs = new HashMap<String, Integer>();
	int[] paraSingletons;
	double[] paraProbs;

	Map<String, Integer> predicateIntDic = new HashMap<String, Integer>();
	Map<String, Predicate> predicateDic = new HashMap<String, Predicate>();
	Map<Integer, String> idPredicateDic = new HashMap<Integer, String>();
	Map<String, Integer> PredicateFs = new HashMap<String, Integer>();

	Set<String> negations = new HashSet<String>();

	int[] predicateSingletons;
	double[] predicateProbs;
	int maxPredicate;
	int minPredicate;
	int maxPara;
	int minPara;

	Map<String, Double> notDistribution = new HashMap<String, Double>();

	public List<Action> generate(Domain domain, int numOfActions) {
		Set<Action> actSet = new HashSet<Action>();
		List<Action> actions = new ArrayList<Action>();
		if (predicateSingletons == null || paraSingletons == null) {
			computePredicateProp(domain);
			computeParameterProp(domain);
			computeNegationProp(domain);
		}

		EnumeratedIntegerDistribution predicateDist = new EnumeratedIntegerDistribution(predicateSingletons,
				predicateProbs);
		EnumeratedIntegerDistribution paraDist = new EnumeratedIntegerDistribution(paraSingletons, paraProbs);

		Random rand = new Random();
		int counter = 0;
		while (actSet.size() < numOfActions) {
			int numOfPredicates = minPredicate;
			if (maxPredicate > minPredicate)
				numOfPredicates = minPredicate + rand.nextInt(maxPredicate - minPredicate);
			int numOfPara = minPara;
			if (maxPara > minPara)
				numOfPara = minPara + rand.nextInt(maxPara - minPara);

			int[] paraIDs = paraDist.sample(numOfPara);
			List<String> paras = toParas(paraIDs);
			int[] predicateIDs = predicateDist.sample(numOfPredicates);
			List<String> predicates = toPredicates(predicateIDs);

			Action a = applicable(predicates, paras, domain.getName().toString());
			if (a != null && !actSet.contains(a)) {
//				System.out.println(a);
//				System.out.println("----------------");
				actSet.add(a);
			}
//			System.out.println(counter++ + "---" + actSet.size());

		}
		actions.addAll(actSet);
		return actions;
	}

	private Action applicable(List<String> predicates, List<String> parasTypes, String domain) {
		List<Predicate> defPredicates = toDefPredicates(predicates);
		List<Argument> args = toArguments(parasTypes);

		if (quickCheck(defPredicates, parasTypes) == false)
			return null;

		for (Predicate pre : defPredicates) {
			if (!pre.applicable(args))
				return null;
			else if (!pre.canAggregate(args, defPredicates))
				return null;
		}

		List<Predicate> predefs = new ArrayList<Predicate>();
		for (Predicate pre : defPredicates) {
//			if (!pre.isAdded(predefs))
			predefs.add(pre);
		}
		for (Argument argument : args)
			if (!argument.isUsed()) {
				return null;
			}

		if (predefs.size() < 2)
			return null;

		Action a = new Action(args, predefs, notDistribution, domain);

		if (!a.isAppropriate())
			return null;

		return a;
	}

	private Predicate toPredicate(NamedTypedList def) {
		List<String> types = new ArrayList<String>();
		for (TypedSymbol t : def.getArguments())
			types.add(t.getTypes().get(0).toString());
		Predicate pre = new Predicate(def.getName().toString(), types);
		return pre;
	}

	private List<Argument> toArguments(List<String> parasTypes) {
		List<Argument> args = new ArrayList<Argument>();
		for (String type : parasTypes) {
			args.add(new Argument(type));
		}
		return args;
	}

	private List<Predicate> toDefPredicates(List<String> predicates) {
		List<Predicate> results = new ArrayList<Predicate>();
		for (String name : predicates)
			results.add(predicateDic.get(name).init());
		return results;
	}

	private boolean quickCheck(List<Predicate> defPredicates, List<String> paras) {
		Set<String> paraTypes = new HashSet<String>(paras);
		Set<String> predicateParaTypes = new HashSet<String>();
		for (Predicate def : defPredicates) {
			predicateParaTypes.addAll(def.argsTypes);
		}
		return paraTypes.equals(predicateParaTypes);
	}

	private List<String> toPredicates(int[] predicateIDs) {
		List<String> results = new ArrayList<String>();
		for (int i : predicateIDs)
			results.add(idPredicateDic.get(i));
		return results;
	}

	private List<String> toParas(int[] paraIDs) {
		List<String> results = new ArrayList<String>();
		for (int i : paraIDs)
			results.add(idParaDic.get(i));
		return results;
	}

	public void computePredicateProp(Domain domain) {
		int preCounter = 0;
		for (NamedTypedList pre : domain.getPredicates()) {
			predicateDic.put(pre.getName().toString(), toPredicate(pre));

			preCounter++;
			predicateIntDic.put(pre.getName().toString(), preCounter);
			idPredicateDic.put(preCounter, pre.getName().toString());
		}
		List<Op> ops = domain.getOperators();

		int sumPreCounter = 0;
		maxPredicate = 0;
		minPredicate = 1000;
		for (int i = 0; i < ops.size() - 1; i++) {
			Op o1 = ops.get(i);
			List<String> allPreconds = extractPredicates(o1.getPreconditions());
			for (String pre : allPreconds) {
				Integer f = PredicateFs.get(pre);
				if (f == null)
					f = 0;
				PredicateFs.put(pre, f + 1);
				sumPreCounter++;
			}
			List<String> allEffects = extractPredicates(o1.getEffects());
			for (String eff : allEffects) {
				Integer f = PredicateFs.get(eff);
				if (f == null)
					f = 0;
				PredicateFs.put(eff, f + 1);
				sumPreCounter++;
			}
			if (maxPredicate < allPreconds.size() + allEffects.size())
				maxPredicate = allPreconds.size() + allEffects.size();
			if (minPredicate > allPreconds.size() + allEffects.size())
				minPredicate = allPreconds.size() + allEffects.size();
		}
		predicateSingletons = new int[PredicateFs.size()];
		predicateProbs = new double[PredicateFs.size()];
		int index = 0;
		for (String pr : PredicateFs.keySet()) {
			predicateSingletons[index] = (predicateIntDic.get(pr));
			predicateProbs[index] = ((double) PredicateFs.get(pr) / sumPreCounter);
			index++;
		}
	}

	public void computeNegationProp(Domain domain) {
		List<Op> ops = domain.getOperators();
		for (int i = 0; i < ops.size() - 1; i++) {
			Op o1 = ops.get(i);
			computeNegation(o1.getEffects());
		}
		if (PredicateFs.isEmpty())
			computePredicateProp(domain);
		for (String name : notDistribution.keySet()) {
			int f = PredicateFs.get(name);
			double prob = notDistribution.get(name) / f;
			notDistribution.put(name, prob);
//			System.out.println(name + "--> " + prob);
		}
	}

	private void computeNegation(Exp expr) {
		if (expr.isLiteral()) {
			if (expr.toString().startsWith("(not (")) {
				String name = expr.getChildren().get(0).getAtom().get(0).toString();
				Double f = notDistribution.get(name);
				if (f == null)
					f = 0.0;
				notDistribution.put(name, f + 1);
			}
		} else {
			for (Exp child : expr.getChildren()) {
				computeNegation(child);
			}
		}
	}

	public void computeParameterProp(Domain domain) {
		int typeCounter = 0;
		for (TypedSymbol t : domain.getTypes()) {
			typeCounter++;
			paraIntDic.put(t.getImage().toString(), typeCounter);
			idParaDic.put(typeCounter, t.getImage().toString());
		}
		List<Op> ops = domain.getOperators();

		int sumTypeCounter = 0;
		maxPara = 0;
		minPara = 1000;
		for (int i = 0; i < ops.size() - 1; i++) {
			Op o1 = ops.get(i);
			for (TypedSymbol para : o1.getParameters()) {
				String pr = para.getTypes().get(0).toString();
				Integer f = ParaFs.get(pr);
				if (f == null)
					f = 0;
				ParaFs.put(pr, f + 1);
				sumTypeCounter++;
			}
			if (o1.getParameters().size() > maxPara)
				maxPara = o1.getParameters().size();
			if (o1.getParameters().size() < minPara)
				minPara = o1.getParameters().size();
		}
		paraSingletons = new int[ParaFs.size()];
		paraProbs = new double[ParaFs.size()];
		int index = 0;
		for (String pr : ParaFs.keySet()) {
			paraSingletons[index] = (paraIntDic.get(pr));
			paraProbs[index] = ((double) ParaFs.get(pr) / sumTypeCounter);
			index++;
		}
//		EnumeratedIntegerDistribution distribution = new EnumeratedIntegerDistribution(singletons, probabilities);
//		int numSamples = 20;
//		int[] samples = distribution.sample(numSamples);
//		for (int i : samples) {
//			System.out.println(i + "--" + idParaDic.get(i));
//		}
	}

	private List<String> extractPredicates(Exp expr) {
		List<String> results = new ArrayList<String>();

		if (expr.isLiteral() && expr.getAtom() != null) {
			results.add(expr.getAtom().get(0).toString());
		} else {
			for (Exp child : expr.getChildren()) {
				results.addAll(extractPredicates(child));
			}
		}
		return results;
	}

}
