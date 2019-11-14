package edu.utd.sc.graphplan;

import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

import edu.utd.sc.graphplan.problem.Action;
import edu.utd.sc.graphplan.problem.Prop;

public class ActionLayer extends Layer {
	private static int COUNTER = 1;
	Set<Pair<Action>> mu;
	Set<Action> actions;
	Set<Prop> preconds;
	Set<Prop> effects;

	public ActionLayer(Set<Action> actions) {
		this.id = ActionLayer.COUNTER;
		this.actions = actions;
		createLayer();
		COUNTER++;
	}

	public PropLayer createNext() {
		computeMu();
		Set<Prop> state = new HashSet<Prop>();
		// Adding the previous one's
		//state.addAll(((PropLayer) this.prev).props);
		//But using noop operation, so no need to add previous one's props
		state.addAll(this.effects);
		PropLayer next = new PropLayer(remainingActions, state);
		next = new PropLayer(remainingActions, state);
		next.prev = this;
		this.next = next;
		return next;
	}

	public boolean isApplicable(Collection<Prop> state) {
		return (new HashSet<Prop>(state)).containsAll(preconds);
	}

	private void createLayer() {
		preconds = new HashSet<Prop>();
		effects = new HashSet<Prop>();
		for (Action action : actions) {
			preconds.addAll(action.getPreconds());
			effects.addAll(action.getEffects());
		}
	}

	@Override
	public void computeMu() {

	}

	public Set<Action> getActions() {
		return actions;
	}

	public Set<Prop> getEffects() {
		return effects;
	}

	public Set<Pair<Action>> getMu() {
		return mu;
	}

	public Set<Prop> getPreconds() {
		return preconds;
	}

	private ActionLayer() {
	}

}
