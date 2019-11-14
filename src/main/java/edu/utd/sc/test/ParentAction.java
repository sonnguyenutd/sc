package edu.utd.sc.test;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import edu.utd.swsc.utils.Utils;
import fr.uga.pddl4j.parser.Domain;
import fr.uga.pddl4j.parser.Parser;

/**
 * TODO: the relation between predicates
 * 
 * @author sonnguyen
 *
 */
public class ParentAction extends Action {
	List<Action> children;
	List<ParentAction> siblings;
	List<Action> singletons;

	public ParentAction(String domain) {
		super();
		this.setNameByDomain(domain);
		this.children = new ArrayList<Action>();
	}

	public void add(Action act) {
		this.children.add(act);
	}

	public void addAll(Collection<Action> acts) {
		this.children.addAll(acts);
	}

	public void computeParent() {
		this.preconds.addAll(children.get(0).preconds);
		if (children.size() > 1)
			for (int i = 1; i < children.size(); i++) {
				Action child = children.get(i);
				mapEffects(child);
			}
	}

	public void standardize() {
		if (children.size() > 1)
			for (int i = 1; i < children.size(); i++) {
				Action child = children.get(i);
				standardize(child);
			}
	}

	private void standardize(Action child) {
		Map<String, String> child2parent = map(this, child);
		if (child2parent == null) {
			System.out.println(children.size());
			return;
		}
		for (Argument arg : child.paras) {
			arg.name = child2parent.get(arg.name);
		}
//		for (Predicate pre : child.effects) {
//			for (Argument arg : pre.args) {
//				String newName = child2parent.get(arg.name);
//				if (newName != null)
//					arg.name = child2parent.get(arg.name);
//			}
//		}
	}

	private void mapEffects(Action child) {
		Map<String, String> child2parent = map(this, child);
		for (Predicate pre : child.effects) {
			Predicate p = pre.clone();
			for (Argument arg : p.args) {
				arg.name = child2parent.get(arg.name);
			}
			this.effects.add(p);
		}
	}

	public static boolean isConsistent(Action a1, Action a2) {
		if (a1.preconds.size() != a2.preconds.size())
			return false;
		Map<String, String> child2parent = new HashMap<String, String>();
		for (int i = 0; i < a1.preconds.size(); i++) {
			Predicate childPre = a2.preconds.get(i);
			Predicate parentPre = a1.preconds.get(i);
			if (!childPre.name.equals(parentPre.name))
				return false;
			for (int j = 0; j < childPre.args.size(); j++) {
				String childName = child2parent.get(childPre.args.get(j).getName());
				String parentName = parentPre.args.get(j).getName();
//				System.out.println(childName + "---" + childPre.args.get(j).getName() + "---" + parentName);
				if (childName != null) {
					if (!childName.equals(parentName))
						return false;
				} else
					child2parent.put(childPre.args.get(j).getName(), parentName);
			}
		}
		return true;
	}

	public static Map<String, String> map(Action a1, Action a2) {
		if (a1.preconds.size() != a2.preconds.size())
			return null;
		Map<String, String> child2parent = new HashMap<String, String>();
		for (int i = 0; i < a1.preconds.size(); i++) {
			Predicate childPre = a2.preconds.get(i);
			Predicate parentPre = a1.preconds.get(i);
			if (!childPre.name.equals(parentPre.name))
				return null;
			for (int j = 0; j < childPre.args.size(); j++) {
				String childName = child2parent.get(childPre.args.get(j).getName());
				String parentName = parentPre.args.get(j).getName();
				if (childName != null) {
					if (!childName.equals(parentName))
						return null;
				} else
					child2parent.put(childPre.args.get(j).getName(), parentName);
			}
		}
		return child2parent;
	}

	public static boolean isConsistent(List<Predicate> pres1, List<Predicate> pres2) {
		if (pres1.size() != pres2.size())
			return false;
		Map<String, String> child2parent = new HashMap<String, String>();
		for (int i = 0; i < pres1.size(); i++) {
			Predicate childPre = pres2.get(i);
			Predicate parentPre = pres1.get(i);
			if (!childPre.name.equals(parentPre.name))
				return false;
			for (int j = 0; j < childPre.args.size(); j++) {
				String childName = child2parent.get(childPre.args.get(j).getName());
				String parentName = parentPre.args.get(j).getName();
				if (childName != null) {
					if (!childName.equals(parentName))
						return false;
				} else
					child2parent.put(childPre.args.get(j).getName(), parentName);
			}
		}
		return true;
	}

	public static boolean isConsistent(Predicate childPre, Predicate parentPre) {
		Map<String, String> child2parent = new HashMap<String, String>();
		if (!childPre.name.equals(parentPre.name))
			return false;
		for (int j = 0; j < childPre.args.size(); j++) {
			String childName = child2parent.get(childPre.args.get(j).getName());
			String parentName = parentPre.args.get(j).getName();
			if (childName != null) {
				if (!childName.equals(parentName))
					return false;
			} else
				child2parent.put(childPre.args.get(j).getName(), parentName);
		}
		return true;
	}

	public void split() {
		siblings = new ArrayList<ParentAction>();
		Set<List<Action>> consistentSet = splitSiblings(this.children);
		for (List<Action> children : consistentSet) {
			ParentAction sibling = new ParentAction(this.name);
			sibling.children = children;
			siblings.add(sibling);
		}
	}

	public String toString() {
		if (this.siblings == null || !this.siblings.isEmpty() || this.effects == null || this.effects.isEmpty()) {
//			if (this.children.size() > 1) {
//				this.preconds = this.children.get(0).preconds;
//				this.effects = new ArrayList<Predicate>();
//				Set<Predicate> effectSet = new HashSet<Predicate>();
//				for (Action child : this.children) {
//					effectSet.addAll(child.effects);
//				}
//				this.effects.addAll(effectSet);
//				Collections.sort(this.effects);
//				result = super.toString();
//			} else {
//				result = this.children.get(0).toString();
//			}
			refine();
		}
		return super.toString();
	}

	public void refine() {
		if (this.siblings == null || !this.siblings.isEmpty() || this.effects == null || this.effects.isEmpty()) {
			this.paras = new ArrayList<Argument>();
			Set<Argument> paraSet = new HashSet<Argument>();
			this.preconds = this.children.get(0).preconds;
			this.effects = new ArrayList<Predicate>();
			Set<Predicate> effectSet = new HashSet<Predicate>();
			for (Action child : this.children) {
				effectSet.addAll(child.effects);
				paraSet.addAll(child.paras);
			}
			this.paras.addAll(paraSet);
			this.effects.addAll(effectSet);
			Collections.sort(this.effects);
		}
	}

	public String toMap() {
		String result = this.name + "--->{";

		for (Action child : this.children)
			result += child.name + ",";

		return result + "}";
	}

	public void computeSingletons() {
		singletons = new ArrayList<Action>();
		for (Action child : children) {
			if (isASingleton(child)) {
				singletons.add(child);
			}
		}
	}

	private boolean isASingleton(Action child) {
		for (Predicate effect : child.effects) {
			for (Predicate precond : this.preconds) {
				if (effect.equals(precond) && effect.isNegated != precond.isNegated)
					return true;
			}
		}
		return false;
	}

	private Set<List<Action>> splitSiblings(List<Action> children) {
		List<Action> consistentChildren = new ArrayList<Action>();
		List<Action> otherChildren = new ArrayList<Action>();
		Set<List<Action>> siblingSet = new HashSet<List<Action>>();

		if (children.isEmpty())
			return null;

		for (Action child : children) {
			if (!child.isMutex(consistentChildren))
				consistentChildren.add(child);
			else
				otherChildren.add(child);
		}
		siblingSet.add(consistentChildren);
		Set<List<Action>> otherSiblingSet = splitSiblings(otherChildren);
		if (otherSiblingSet != null)
			siblingSet.addAll(otherSiblingSet);
		return siblingSet;
	}

	private static ParentAction findParent(Action a, List<ParentAction> ps) {
		for (ParentAction parentAction : ps) {
			if (!parentAction.children.isEmpty()) {
				if (ParentAction.isConsistent(a, parentAction) && ParentAction.isConsistent(parentAction, a))
					return parentAction;
			}
		}
		return null;
	}

	public static void main(String[] args) throws FileNotFoundException {
		long start = System.currentTimeMillis();
		String dm = "/Users/sonnguyen/Desktop/domains/tpp.pddl";
		File domainFile = new File(dm);
		Parser p = new Parser();
		p.parseDomain(domainFile);
		Domain domain = p.getDomain();
		ActionGenerator generator = new ActionGenerator();

		int numOfActions = 1200;

		List<Action> actions = generator.generate(domain, numOfActions);

		List<ParentAction> ps = new ArrayList<ParentAction>();
		for (int i = 0; i < actions.size(); i++) {
			Action a1 = actions.get(i);
			ParentAction parent = findParent(a1, ps);
			if (parent == null) {
				parent = new ParentAction(domain.getName().toString());
				parent.preconds = a1.preconds;
				parent.add(a1);
				ps.add(parent);
			} else {
				parent.add(a1);
			}
		}
		int counter = 0;
		List<ParentAction> all = new ArrayList<ParentAction>();
		for (ParentAction parent : ps) {
			parent.standardize();
			parent.computeSingletons();
			parent.split();

			all.addAll(parent.siblings);
//			if (parent.siblings.size() > 1) {
//				for (ParentAction sibling : parent.siblings) {
//					System.out.println(sibling.children.size());
//					System.out.println(sibling);
//					System.out.println("------");
//				}
//				break;
//			}
		}

		StringBuffer content = new StringBuffer();

		for (Action a : actions) {
			content.append(a.toString() + "\n\n");
		}
		Utils.write("/Users/sonnguyen/Desktop/domains/" + domain.getName().toString() + "_generated.pddl",
				content.toString());

		content = new StringBuffer();
		for (ParentAction pr : all) {
			content.append(pr.toString() + "\n\n");
		}
		Utils.write("/Users/sonnguyen/Desktop/domains/" + domain.getName().toString() + "_parents.pddl",
				content.toString());

		content = new StringBuffer();
		for (ParentAction pr : all) {
			content.append(pr.toMap() + "\n");
			System.out.println(pr.toMap());
		}
		Utils.write("/Users/sonnguyen/Desktop/domains/" + domain.getName().toString() + "_mapping.pddl",
				content.toString());

		System.out.println((float) all.size() / actions.size());
		System.out.println((System.currentTimeMillis() - start) / 1000);
	}

}
