package edu.utd.sc.test;

public class Argument {
	static int counter = 1000000;
	String type;
	String name;
	boolean isUsed = false;

	public Argument(String type) {
		this.type = type;
		this.name = type + "_" + counter++;
	}

	public String getName() {
		return name;
	}

	public String getType() {
		return type;
	}

	@Override
	public String toString() {
		return "?" + name;
	}

	@Override
	public boolean equals(Object obj) {
		return toString().equals(obj.toString());
	}

	@Override
	public int hashCode() {
		return toString().hashCode();
	}

	public String paraPDDL() {
		return "?" + name;
	}

	public String pddl() {
		return "?" + name + " - " + type;
	}
	public boolean isUsed() {
		return isUsed;
	}
}
