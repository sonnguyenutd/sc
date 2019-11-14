package edu.utd.sc.eval;

import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

import edu.utd.sc.common.Parameter;
import edu.utd.sc.graphplan.problem.PlanProblem;
import edu.utd.sc.graphplan.problem.Prop;

public class Case {
	static int COUNTER = 1000000;
	Integer ID;
	Set<Parameter> input;
	Set<Parameter> output;

	public PlanProblem toProblem() {
		Set<Prop> goal = new HashSet<Prop>();
		Set<Prop> init = new HashSet<Prop>();
//		for (Parameter i : input) 
//			init.add(new Prop(i.getType()));
//		for (Parameter o : output) 
//			goal.add(new Prop(o.getType()));
		for (Parameter i : input)
			init.add(new Prop(i.toProp()));
		for (Parameter o : output)
			goal.add(new Prop(o.toProp()));
		return new PlanProblem(init, goal);
	}

	@Override
	public int hashCode() {
		return (input.hashCode() + "-" + output.hashCode()).hashCode();
	}

	@Override
	public String toString() {
		return ID + "-" + input.size() + "-" + output.size();
	}

	@Override
	public boolean equals(Object obj) {
		Case other = (Case) obj;
		return this.ID == other.ID;
	}

	public Integer getID() {
		return ID;
	}

	public Case() {
		COUNTER++;
		ID = COUNTER;
		input = new HashSet<Parameter>();
		output = new HashSet<Parameter>();
	}

	public Case(Collection<Parameter> input, Collection<Parameter> output) {
		COUNTER++;
		ID = COUNTER;
		this.input = new HashSet<Parameter>(input);
		this.output = new HashSet<Parameter>(output);
	}

	public Set<Parameter> getInput() {
		return input;
	}

	public Set<Parameter> getOutput() {
		return output;
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

	public boolean isValid() {
		Set<String> outTypes = new HashSet<String>();
		Set<String> inTypes = new HashSet<String>();
		for (Parameter p : input) {
			inTypes.add(p.getType());
		}
		for (Parameter p : output) {
			outTypes.add(p.getType());
		}
		return !inTypes.containsAll(outTypes);
	}

}
