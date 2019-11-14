/*
 * Copyright (c) 2016 by Damien Pellier <Damien.Pellier@imag.fr>.
 *
 * This file is part of PDDL4J library.
 *
 * PDDL4J is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
 *
 * PDDL4J is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty
 * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along with PDDL4J.  If not, see
 * <http://www.gnu.org/licenses/>
 */

package edu.utd.sc.eval;

import java.io.File;
import java.io.IOException;
import java.util.HashSet;
import java.util.Random;
import java.util.Set;

import edu.utd.swsc.common.Parameter;
import edu.utd.swsc.common.Problem;
import edu.utd.swsc.common.Service;
import edu.utd.swsc.utils.Utils;
import fr.uga.pddl4j.encoding.CodedProblem;
import fr.uga.pddl4j.heuristics.relaxation.Heuristic;
import fr.uga.pddl4j.parser.ErrorManager;
import fr.uga.pddl4j.planners.ProblemFactory;
import fr.uga.pddl4j.planners.statespace.AbstractStateSpacePlanner;
import fr.uga.pddl4j.planners.statespace.StateSpacePlanner;
import fr.uga.pddl4j.planners.statespace.ff.FF;
import fr.uga.pddl4j.util.BitOp;
import fr.uga.pddl4j.util.Plan;

public class FF_CaseGenerator {
	public static Case generate2(File domain, Set<Parameter> ALL_IN, Set<Parameter> ALL_OUT) {
		Case all = new Case();
		try {
			ProblemFactory factory = ProblemFactory.getInstance();
			factory.setTraceLevel(0);
			while (true) {
				Random rand = new Random();
				int numOfIn = rand.nextInt(ALL_IN.size() / 3) + 1;
				int numOfOut = rand.nextInt(ALL_OUT.size() / 6) + 1;
				Case c = CaseGenerator.generate(ALL_IN, ALL_OUT, numOfIn, numOfOut);
				Utils.write("/Users/sonnguyen/Desktop/SC/problem_temp.pddl", Problem.toPDDL(c));
				File problem = new File("/Users/sonnguyen/Desktop/SC/problem_temp.pddl");
				ErrorManager errorManager_parent = factory.parse(domain, problem);
				if (!errorManager_parent.isEmpty()) {
					errorManager_parent.printAll();
					System.exit(0);
				}
				CodedProblem pb = factory.encode();
				if (pb.isSolvable()) {
					final int traceLevel = 0;
					final int timeout = 60;
					final Heuristic.Type heuristicType = Heuristic.Type.FAST_FORWARD;
					final double weight = StateSpacePlanner.DEFAULT_WEIGHT;
					final boolean saveStats = false;
					AbstractStateSpacePlanner planner = new FF(timeout, heuristicType, weight, saveStats, traceLevel);
					final Plan plan = planner.search(pb);
					System.out.println(plan.cost());
					for (BitOp op : plan.actions()) {
						System.out.println(op.getName());
					}
					break;
				}
			}
		} catch (IOException ioExp) {
			ioExp.printStackTrace();
		}
		return all;
	}

	public static Case generate(File domain, Set<Parameter> ALL_IN, Set<Parameter> ALL_OUT) {
		Case all = new Case();
		try {
			ProblemFactory factory = ProblemFactory.getInstance();
			factory.setTraceLevel(0);
			while (true) {
				Random rand = new Random();
				int numOfIn = rand.nextInt(ALL_IN.size() / 3) + 1;
				int numOfOut = rand.nextInt(ALL_OUT.size() / 6) + 1;
				Case c = CaseGenerator.generate(ALL_IN, ALL_OUT, numOfIn, numOfOut);
				Utils.write("/Users/sonnguyen/Desktop/SC/problem_temp.pddl", Problem.toPDDL(c));
				File problem = new File("/Users/sonnguyen/Desktop/SC/problem_temp.pddl");
				ErrorManager errorManager_parent = factory.parse(domain, problem);
				if (!errorManager_parent.isEmpty()) {
					errorManager_parent.printAll();
					System.exit(0);
				}
				CodedProblem pb = factory.encode();
				if (pb.isSolvable()) {
					all = CaseGenerator.merge(all, c);
					if (all.output.size() > 5) {
						if (all.input.size() < 70)
							break;
						all = new Case();
					}
				}
			}
		} catch (IOException ioExp) {
			ioExp.printStackTrace();
		}
		return all;
	}

	public static void main(String[] args) {
		Set<Service> ss = Service.parseAllXML(new File("/Users/sonnguyen/Desktop/backup/services/1.1"));
		Set<Parameter> ALL_IN = new HashSet<Parameter>();
		Set<Parameter> ALL_OUT = new HashSet<Parameter>();
		for (Service s : ss) {
			ALL_IN.addAll(s.getInputs());
			ALL_OUT.addAll(s.getOutputs());
		}
		File domain = new File("/Users/sonnguyen/Desktop/SC/domain.pddl");
//		File domain = new File("/Users/sonnguyen/Desktop/SC/domain_parent.pddl");
//		for (int i = 0; i < 500; i++) {
		Case pddl = generate2(domain, ALL_IN, ALL_OUT);
//		Utils.write("/Users/sonnguyen/Desktop/SC/FF/found/sc_" + pddl.ID + ".pddl", Problem.toPDDL(pddl));
//		System.out.println(pddl.input.size() + "-->" + pddl.output.size());
//		}
	}
}
