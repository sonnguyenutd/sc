package edu.utd.swsc.planning.problem;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import edu.utd.swsc.common.Service;
import edu.utd.swsc.utils.Utils;

public class PlanProblem {
	static int counter = 10000;
	int ID;
	Set<Prop> init;
	Set<Prop> goal;

	public static void main(String[] args) {
		List<PlanProblem> ps = fromResultFile("/Users/sonnguyen/Desktop/SC/result_failure_cases");
		for (PlanProblem p : ps) {
			String pddl = p.toPDDLNoTyping();
			Utils.write("/Users/sonnguyen/Desktop/SC/failure/prob_" + p.ID + ".pddl", pddl);
		}
		List<PlanProblem> ps2 = fromResultFile("/Users/sonnguyen/Desktop/SC/result_found_cases");
		for (PlanProblem p : ps2) {
			String pddl = p.toPDDLNoTyping();
			Utils.write("/Users/sonnguyen/Desktop/SC/found/prob_" + p.ID + ".pddl", pddl);
		}
	}

	public static List<PlanProblem> fromResultFile(String file) {
		List<PlanProblem> results = new ArrayList<PlanProblem>();

		String content = Utils.read(file).trim();
		String[] probs = content.split("-------");

		for (String prob : probs) {
			PlanProblem p = null;
			String[] lines = prob.replace("[", "").replace("]", "").trim().split("\n");
			if (lines.length >= 2) {
				String[] in = lines[0].split(",");
				Set<Prop> init = new HashSet<Prop>();
				for (String pr : in) {
					pr = Service.normalize(pr);
					init.add(new Prop(pr.trim()));
				}

				String[] out = lines[1].split(",");
				Set<Prop> goal = new HashSet<Prop>();
				for (String pr : out) {
					pr = Service.normalize(pr);
					goal.add(new Prop(pr.trim()));
				}
				p = new PlanProblem(init, goal);
			}
			results.add(p);
		}
		return results;
	}

	public static PlanProblem fromFile(String file) {
		PlanProblem p = null;
		String content = Utils.read(file);
		String[] lines = content.replace("[", "").replace("]", "").trim().split("\n");
		if (lines.length == 2) {
			String[] in = lines[0].split(",");
			Set<Prop> init = new HashSet<Prop>();
			for (String pr : in)
				init.add(new Prop(pr.trim()));

			String[] out = lines[1].split(",");
			Set<Prop> goal = new HashSet<Prop>();
			for (String pr : out)
				goal.add(new Prop(pr.trim()));
			p = new PlanProblem(init, goal);
		}
		return p;
	}

	public PlanProblem(Set<Prop> init, Set<Prop> goal) {
		this.ID = counter++;
		this.init = init;
		this.goal = goal;
	}

	public void setInit(Set<Prop> init) {
		this.init = init;
	}

	public void setGoal(Set<Prop> goal) {
		this.goal = goal;
	}

	public Set<Prop> getInit() {
		return init;
	}

	public Set<Prop> getGoal() {
		return goal;
	}

	@Override
	public String toString() {
		String result = "init (" + init.size() + "): ";
		for (Prop prop : init) {
			result += "\t" + prop.getName();
		}
		result += "\n" + "goal (" + goal.size() + "): ";
		for (Prop prop : goal) {
			result += "\t" + prop.getName();
		}
		return result;
	}

	public String toPDDLNoTyping() {
		String result = "(define (problem sc_no_typing_" + this.ID + ")\n" + "\t(:domain swsc_no_typing)\n";

		String objects = "";

		Set<Prop> paras = new HashSet<Prop>(goal);
		paras.addAll(init);

		for (Prop p : paras) {
			objects += "\t\t" + p.getName() + " \n";
		}

		result += "\t(:objects \n";
		result += objects;
		result += "\n\t)\n";

		String in = "";
		for (Prop p : init) {
			in += ("\t\t " + "(" + Service.PREDICATE + " " + p.getName().replace(Service.REPLACE, "") + ")\n");
		}

		result += "\t(:init \n";
		result += in;
		result += "\n\t)\n";

		String out = "";
		for (Prop p : goal) {
			out += ("\t\t " + "(" + Service.PREDICATE + " " + p.getName().replace(Service.REPLACE, "") + ")\n");
		}

		result += "\t(:goal ( and \n";
		result += out;
		result += "\n\t\t)\n\t)\n";

		result += ")";
		return result;
	}
}
