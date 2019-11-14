package edu.utd.sc.common;

import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import edu.utd.sc.graphplan.problem.Action;
import edu.utd.sc.graphplan.problem.ParentAction;
import edu.utd.sc.graphplan.problem.Prop;

public class ParentService extends Service {
	static int COUNTER = 1000000;
	Map<List<String>, Set<Service>> output2service;
	Set<Service> children;

	public Action toAction() {
		Set<Prop> preconds = new HashSet<Prop>();
		for (String input : inputTypes) {
			preconds.add(new Prop(input));
		}
		Set<Action> childrenAction = new HashSet<Action>();
		for (Service child : children) {
			childrenAction.add(child.toAction());
		}
		ParentAction action = new ParentAction(preconds, childrenAction);
		return action;
	}

	@Override
	public int hashCode() {
		return name.hashCode();
	}

	@Override
	public boolean equals(Object obj) {
		return hashCode() == obj.hashCode();
	}

	public ParentService() {
		super("parent_" + COUNTER);
		COUNTER++;
		children = new HashSet<Service>();
		output2service = new HashMap<List<String>, Set<Service>>();
	}

	

	public void add(Service s) {
		s.parent = this;
		this.outputs.addAll(s.outputs);
		this.outputTypes.addAll(s.outputTypes);
		this.inputs.addAll(s.inputs);
		this.inputTypes.addAll(s.inputTypes);
		children.add(s);
	}

	public void addAll(Set<Service> ss) {
		for (Service s : ss) 
			add(s);
	}

	public void setChildren(Set<Service> children) {
		this.children = children;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Set<Service> getChildren() {
		return children;
	}

	public String getName() {
		return name;
	}

	public static void main(String[] args) {

	}

}
