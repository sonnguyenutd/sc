package edu.utd.sc.graphplan;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import edu.utd.swsc.planning.problem.Action;
import edu.utd.swsc.planning.problem.NoOpAction;
import edu.utd.swsc.planning.problem.Prop;

public class Solution {
	public final static Solution FAILURE = new Solution(null);
	public final static Solution EMPTY_SOLUTION = new Solution(new ArrayList<Action>());
	List<Action> actionSequence;
	List<Integer> steps;

	public List<Integer> getSteps() {
		return steps;
	}

	public boolean test(Set<Prop> init, Set<Prop> goal) {
		Set<Prop> allEffects = new HashSet<Prop>(init);
		for (Action a : actionSequence) {
			allEffects.addAll(a.getEffects());
//			goal.removeAll(a.getEffects());
//			System.out.println(a.getName() + "--->" + goal);
		}
		return allEffects.containsAll(goal);
	}

	private Solution(List<Action> reversedSequence) {
		this.actionSequence = reversedSequence;
		steps = new ArrayList<Integer>();
	}

	public Solution removeNoOps() {
		if (actionSequence == null)
			return FAILURE;
		Solution standard = new Solution();
		for (int i = 0; i < actionSequence.size(); i++) {
			Action action = actionSequence.get(i);
			if (!(action instanceof NoOpAction)) {
				standard.actionSequence.add(action);
				standard.steps.add(steps.get(i));
			}
		}
		return standard;
	}

	public List<Set<Action>> toSteps() {
		List<Set<Action>> execution = new ArrayList<Set<Action>>();
		int currStep = -1;
		Set<Action> currActions = null;
		for (int i = 0; i < steps.size(); i++) {
			int index = steps.get(i);
			if (index != currStep) {
				if (currActions != null) {
					execution.add(currActions);
				}
				currActions = new HashSet<Action>();
				currStep = index;
			}
			currActions.add(actionSequence.get(i));
		}
		if (currActions != null)
			execution.add(currActions);
		return execution;
	}

	public Solution() {
		actionSequence = new ArrayList<Action>();
		steps = new ArrayList<Integer>();
	}

	public Solution appends(Action a) {
		Solution newOne = new Solution();
		newOne.actionSequence = new ArrayList<Action>(this.actionSequence);
		newOne.actionSequence.add(a);
		return newOne;
	}

	public Solution appends(Solution other, int step) {
		Solution newOne = new Solution();
		newOne.actionSequence = new ArrayList<Action>(this.actionSequence);
		newOne.actionSequence.addAll(other.actionSequence);
		newOne.steps = new ArrayList<Integer>(this.steps);
		for (int i = 0; i < other.actionSequence.size(); i++)
			newOne.steps.add(step);
		return newOne;
	}

	public List<Action> getActionSequence() {
		return actionSequence;
	}

	public Set<Prop> getPreconds() {
		Set<Prop> result = new HashSet<Prop>();
		for (Action a : actionSequence) {
			result.addAll(a.getPreconds());
		}
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		Solution other = (Solution) obj;
		if (other.actionSequence == null && this.actionSequence == null)
			return true;
		if (other.actionSequence != null && this.actionSequence != null)
			return other.actionSequence.equals(this.actionSequence);
		return false;
	}

	@Override
	public String toString() {
		if (actionSequence == null)
			return "FAILURE";
		return actionSequence.toString();
	}
}
