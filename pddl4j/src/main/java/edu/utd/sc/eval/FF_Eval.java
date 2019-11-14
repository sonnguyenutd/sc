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

import fr.uga.pddl4j.encoding.CodedProblem;
import fr.uga.pddl4j.heuristics.relaxation.Heuristic;
import fr.uga.pddl4j.parser.ErrorManager;
import fr.uga.pddl4j.planners.ProblemFactory;
import fr.uga.pddl4j.planners.statespace.AbstractStateSpacePlanner;
import fr.uga.pddl4j.planners.statespace.StateSpacePlanner;
import fr.uga.pddl4j.planners.statespace.ff.FF;
import fr.uga.pddl4j.util.BitOp;
import fr.uga.pddl4j.util.Plan;

public class FF_Eval {

	public static void main(String[] args) {
		try {
			float sum = 0;
			File folder = new File("/Users/sonnguyen/Desktop/SC/FF/found/");
			for (File problem : folder.listFiles()) {
				final File domain = new File("/Users/sonnguyen/Desktop/SC/domain.pddl");
				final int traceLevel = 0;
				final int timeout = 60;
				final Heuristic.Type heuristicType = Heuristic.Type.FAST_FORWARD;
				final double weight = StateSpacePlanner.DEFAULT_WEIGHT;
				final boolean saveStats = false;

				final AbstractStateSpacePlanner planner = new FF(timeout, heuristicType, weight, saveStats, traceLevel);

				// Creates the problem factory
				ProblemFactory factory = ProblemFactory.getInstance();
				factory.setTraceLevel(traceLevel);

				long start = System.currentTimeMillis();
				ErrorManager errorManager = factory.parse(domain, problem);
				if (!errorManager.isEmpty()) {
					errorManager.printAll();
					System.exit(0);
				}
				CodedProblem pb = factory.encode();
				if (pb.isSolvable()) {
					Plan plan = planner.search(pb);
					for (BitOp op : plan.actions()) {
						System.out.println(op.getName());
					}
				}
				long end = System.currentTimeMillis();
//				System.out.println(end - start + "\t" + pb.isSolvable());
				sum += (end - start);

			}
			System.out.println(sum/folder.list().length);
			
		} catch (IOException ioExp) {
//			ioExp.printStackTrace();
		}
	}

}
