package edu.utd.swsc.planning.problem;

import java.util.HashSet;
import java.util.Set;

import edu.utd.sc.common.ParentService;
import edu.utd.sc.common.Service;

public class PlanDomain {
	Set<Action> actions;

	public PlanDomain(Set<Service> services) {
		this.actions = new HashSet<Action>();
		for (Service service : services) {
			Action a = service.toAction();
			this.actions.add(a);
			this.actions.addAll(a.getNoOpActions());
		}
	}
	public PlanDomain(Set<ParentService> parents, int x) {
		this.actions = new HashSet<Action>();
		for (ParentService s : parents) {
			Action a = s.toAction();
			this.actions.add(a);
			this.actions.addAll(a.getNoOpActions());
		}
	}

	public Set<Action> getActions() {
		return actions;
	}

	@Override
	public String toString() {
		String result = "";
		for (Action action : actions) {
			result += action.getName() + "<-" + action.preconds.size() + "->" + action.effects.size();
		}
		return result;
	}
}
