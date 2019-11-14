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

package edu.utd.sc.test;

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

public class FF_Eval2 {

	public static void main(String[] args) {
		try {
			File problem = new File("/Users/sonnguyen/Desktop/domains/pfile01-001.pddl");
			File domain = new File("/Users/sonnguyen/Desktop/domains/tpp.pddl");

			final int traceLevel = 0;
			final int timeout = 60;
			final Heuristic.Type heuristicType = Heuristic.Type.FAST_FORWARD;
			final double weight = StateSpacePlanner.DEFAULT_WEIGHT;
			final boolean saveStats = false;

			final AbstractStateSpacePlanner planner = new FF(timeout, heuristicType, weight, saveStats, traceLevel);
			// Creates the problem factory
			ProblemFactory factory = ProblemFactory.getInstance();
			factory.setTraceLevel(traceLevel);

			long start1 = System.currentTimeMillis();
			ErrorManager errorManager_parent = factory.parse(domain, problem);
			if (!errorManager_parent.isEmpty()) {
				errorManager_parent.printAll();
				System.exit(0);
			}
			CodedProblem pb_parent = factory.encode();
			if (pb_parent.isSolvable()) {
				Plan plan = planner.search(pb_parent);
				if (plan != null)
					for (BitOp op : plan.actions()) {
						System.out.println(op.getName());
					}
			}
			long end1 = System.currentTimeMillis();
			System.out.println(end1 - start1);
		} catch (IOException ioExp) {
			ioExp.printStackTrace();
		}
	}

}
