package edu.utd.sc.graphplan;

import java.io.File;
import java.util.HashSet;
import java.util.Set;

import edu.utd.sc.common.Clusterer;
import edu.utd.sc.common.ParentService;
import edu.utd.sc.common.Service;
import edu.utd.sc.graphplan.problem.PlanDomain;
import edu.utd.sc.graphplan.problem.PlanProblem;

public class GraphPlanner {
	public static void main(String[] args) {
		Set<Service> ss = Service.parseAllXML(new File("/Users/sonnguyen/Desktop/backup/services/1.1"));
		Set<String> ALL_IN = new HashSet<String>();
		Set<String> ALL_OUT = new HashSet<String>();
		for (Service s : ss) {
			ALL_IN.addAll(s.getInputTypes());
			ALL_OUT.addAll(s.getOutputTypes());
		}
		// ---------------------------------------
		PlanDomain domain = new PlanDomain(ss);

		Set<ParentService> parents = Clusterer.group(ss);

		PlanDomain parentDomain = new PlanDomain(parents, 0);
//		System.out.println(parentDomain.getActions().size());
		int counter = 0;

		while (true) {
			if (counter > 500)
				break;
			PlanProblem problem = PlanProblem.fromFile("/Users/sonnguyen/Desktop/test.txt");

			long start = System.currentTimeMillis();
			Solution s = plan(domain, problem);
			if (!s.equals(Solution.FAILURE)) {
				System.out.println(problem.getInit());
				System.out.println(problem.getGoal());
				counter++;
				System.out.println(s.removeNoOps().toSteps());
				long withoutClustering = System.currentTimeMillis() - start;
				// ------------------------------
				start = System.currentTimeMillis();
				Solution s2 = plan(parentDomain, problem);
				Solution childrenSolution = ParentToChildrenSolution.toChildren(s2, problem.getInit(),
						problem.getGoal());
				long withClustering = System.currentTimeMillis() - start;
				
				float improv = 100 * (float) (withoutClustering - withClustering) / withoutClustering;
				if(improv < 0)
					System.out.print("XXXXX");
				System.out.println(improv);
				System.out.println("-------");
			}
		}
	}

	public static Solution plan(PlanDomain domain, PlanProblem problem) {
		PlanningGraph G = new PlanningGraph(domain, problem);
		// TODO mutex handling
		while (!G.reach(problem.getGoal()) && !G.isFixedPoint())
			G.expand();
		if (!G.reach(problem.getGoal())) {
			return Solution.FAILURE;
		}

		int nogoodSize = !G.reach(problem.getGoal()) ? 0 : G.getCurLevel().nogood.size();

		Solution PI = G.extractSolution(problem.getGoal(), G.CUR_LEVEL);
		while (PI.equals(Solution.FAILURE)) {
			G.expand();
			PI = G.extractSolution(problem.getGoal(), G.CUR_LEVEL);
			if (PI.equals(Solution.FAILURE) && G.isFixedPoint()) {
				if (nogoodSize == G.getCurLevel().nogood.size())
					return Solution.FAILURE;
				nogoodSize = G.getCurLevel().nogood.size();
			}
		}
		return PI;
	}
}
