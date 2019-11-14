package edu.utd.sc.graphplan;

import java.util.HashSet;
import java.util.Set;

import edu.utd.swsc.planning.problem.Action;
import edu.utd.swsc.planning.problem.Prop;

public class PropLayer extends Layer {
	private static int COUNTER = 0;
	Set<Pair<Prop>> mu;
	Set<Prop> props;

	public PropLayer() {
		this.id = PropLayer.COUNTER;
		remainingActions = new HashSet<Action>();
		props = new HashSet<Prop>();
		COUNTER++;
	}

	public PropLayer(Set<Action> remainingActions, Set<Prop> props) {
		this.id = PropLayer.COUNTER;
		this.remainingActions = remainingActions;
		this.props = props;
		COUNTER++;
	}
	
	@Override
	public void computeMu() {
		mu = new HashSet<Pair<Prop>>();
	}

	public ActionLayer createNext() {
		computeMu();
		Set<Action> applicableActions = new HashSet<Action>();
		for (Action act : remainingActions) {
			if (act.isApplicable(props)) {
				applicableActions.add(act);
			}
		}
		// Update next
		ActionLayer next = new ActionLayer(applicableActions);
		next.remainingActions = (remainingActions);
//		next.remainingActions.addAll(remainingActions);
//		next.remainingActions.removeAll(applicableActions);
		this.next = next;
		next.prev = this;
		return next;
	}
}
