package edu.utd.sc.eval.actgenerating;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.Set;

public class Predicate implements Comparable<Predicate> {
	static int counter = 1000000;
	String name;
	List<String> argsTypes;
	List<Argument> args;
	boolean isNegated;
	private int ID;

	protected Predicate clone() {
		Predicate p = new Predicate(name, argsTypes);
		p.args = new ArrayList<Argument>();
		for (Argument arg : this.args) {
			Argument a = new Argument(arg.type);
			a.name = arg.getName();
			p.args.add(a);
		}
		p.isNegated = this.isNegated;
		return p;
	}

	public void setNegated(boolean isNegated) {
		this.isNegated = isNegated;
	}

	public boolean isNegated() {
		return isNegated;
	}

	public Predicate(String name, List<String> argsTypes) {
		this.name = name;
		this.argsTypes = argsTypes;
		counter++;
		ID = counter;
	}

	public Predicate init() {
		Predicate instance = new Predicate(name, argsTypes);
		instance.args = new ArrayList<Argument>();
		return instance;
	}

	public String pddl() {
		String result = "(";
		result += name + " ";
		for (Argument argument : args) {
			result += argument.paraPDDL() + " ";
		}
		result = result.trim();
		result += ")";
		if (isNegated) {
			result = "(not " + result + ")";
		}

		return result.trim();
	}

	public boolean applicable(List<Argument> paras) {
		for (String t : argsTypes) {
			if (!existsArg(paras, t))
				return false;
		}
		return true;
	}

	private boolean existsArg(List<Argument> paras, String t) {
		for (Argument argument : paras)
			if (argument.getType().equals(t))
				return true;
		return false;
	}

	public void addArg(Argument arg) {
		args.add(arg);
	}

	public void addAllArgs(Set<Argument> args) {
		args.addAll(args);
	}

	@Override
	public int hashCode() {
		return toString().hashCode();
	}

	@Override
	public boolean equals(Object obj) {
		return toString().equals(obj.toString());
	}

	@Override
	public String toString() {
		return name + " " + argsTypes.toString() + " " + args.toString();
	}
	
	/**
	 * Check if a set of predicates can be applied on a set of arguments
	 * @param paras
	 * @param defPredicates
	 * @return
	 */
	public boolean canAggregate(List<Argument> paras, List<Predicate> defPredicates) {
		Random rd = new Random();
		int n = rd.nextInt(3) + 1;
		for (int i = 0; i < n; i++) {
			Collections.shuffle(paras);
		}

		for (String type : argsTypes) {
			Argument arg = findAppropriateArg(paras, type);
			if (arg != null) {
				addArg(arg);
				arg.isUsed = true;
			} else
				return false;
		}
		if (isAdded(defPredicates)) {
			return false;
		}
		return true;
	}

	public boolean isAdded(List<Predicate> defPredicates) {
		for (Predicate pre : defPredicates) {
			if (pre.ID != this.ID && pre.pddl().equals(pddl()))
				return true;
		}
		return false;
	}

	private Argument findAppropriateArg(List<Argument> paras, String type) {
		for (Argument arg : paras) {
			if (arg.type.equals(type) && !args.contains(arg))
				return arg;
		}
		return null;
	}

	@Override
	public int compareTo(Predicate o) {
		return this.name.compareTo(o.name);
	}

	public void renameArg(Argument arg, String newName) {
		arg.name = newName;
	}
}
