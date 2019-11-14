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
import java.util.Properties;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import fr.uga.pddl4j.encoding.CodedProblem;
import fr.uga.pddl4j.exceptions.FileException;
import fr.uga.pddl4j.heuristics.relaxation.Heuristic;
import fr.uga.pddl4j.parser.ErrorManager;
import fr.uga.pddl4j.planners.Planner;
import fr.uga.pddl4j.planners.ProblemFactory;
import fr.uga.pddl4j.planners.Statistics;
import fr.uga.pddl4j.planners.statespace.AbstractStateSpacePlanner;
import fr.uga.pddl4j.planners.statespace.StateSpacePlanner;
import fr.uga.pddl4j.planners.statespace.StateSpacePlannerFactory;
import fr.uga.pddl4j.util.MemoryAgent;
import fr.uga.pddl4j.util.Plan;

public class FF_Eval {
	 private static Logger LOGGER = LogManager.getLogger(StateSpacePlannerFactory.class);
	 private static boolean ACTION_COST = false;
	public static void main(String[] args) {
		File problem = new File("/Users/sonnguyen/Desktop/domains/pfile01-001.pddl");
		File domain = new File("/Users/sonnguyen/Desktop/domains/tpp.pddl");
//		File problem = new File("pddl/blocksworld/p15.pddl");
//		File domain = new File("pddl/blocksworld/domain.pddl");
		try {
			final StateSpacePlannerFactory stateSpacePlannerFactory = StateSpacePlannerFactory.getInstance();

			// Parse the command line
			final Properties arguments = StateSpacePlannerFactory.parseArguments(args,
					StateSpacePlanner.getDefaultArguments());

			final Planner.Name plannerName = (Planner.Name) arguments.get(AbstractStateSpacePlanner.PLANNER);
//			final File domain = (File) arguments.get(AbstractStateSpacePlanner.DOMAIN);
//			final File problem = (File) arguments.get(AbstractStateSpacePlanner.PROBLEM);
			final int traceLevel = (Integer) arguments.get(AbstractStateSpacePlanner.TRACE_LEVEL);
			final int timeout = (Integer) arguments.get(AbstractStateSpacePlanner.TIMEOUT);
			final Heuristic.Type heuristicType = Heuristic.Type.FAST_FORWARD;
			final double weight = StateSpacePlanner.DEFAULT_WEIGHT;
			final boolean saveStats = (Boolean) arguments.get(AbstractStateSpacePlanner.STATISTICS);

			// Creates the planner
			final AbstractStateSpacePlanner planner = stateSpacePlannerFactory.getPlanner(plannerName, timeout,
					heuristicType, weight, saveStats, traceLevel);

			// Creates the problem factory
			final ProblemFactory factory = ProblemFactory.getInstance();
			final int factoryTraceLevel = (traceLevel == 8) ? 0 : Math.max(0, traceLevel - 1);
			factory.setTraceLevel(factoryTraceLevel);

			// Parses the PDDL domain and problem description
			long start = System.currentTimeMillis();
			long begin = System.currentTimeMillis();
			ErrorManager errorManager = factory.parse(domain, problem);
			if (saveStats) {
				planner.getStatistics().setTimeToParse(System.currentTimeMillis() - begin);
			}
			if (!errorManager.isEmpty()) {
				errorManager.printAll();
				System.exit(0);
			} else if (traceLevel > 0 && traceLevel != 8) {
				StringBuilder strb = new StringBuilder();
				strb.append("\nparsing domain file \"").append(domain.getName()).append("\" done successfully")
						.append("\nparsing problem file \"").append(problem.getName()).append("\" done successfully")
						.append("\n");
				LOGGER.trace(strb);
			}

			// Encodes and instantiates the problem in a compact representation
			begin = System.currentTimeMillis();
			final CodedProblem pb = factory.encode();
			if (saveStats) {
				planner.getStatistics().setTimeToEncode(System.currentTimeMillis() - begin);
				planner.getStatistics().setMemoryUsedForProblemRepresentation(MemoryAgent.getDeepSizeOf(pb));
			}

			if (pb != null) {
				planner.getStatistics().setNumberOfActions(pb.getOperators().size());
				planner.getStatistics().setNumberOfRelevantFluents(pb.getRelevantFacts().size());

				if (traceLevel > 0 && traceLevel != 8) {
					StringBuilder strb = new StringBuilder();
					strb.append("\nencoding problem done successfully (")
							.append(planner.getStatistics().getNumberOfActions()).append(" ops, ")
							.append(planner.getStatistics().getNumberOfRelevantFluents()).append(" facts)\n");
					LOGGER.trace(strb);
				}

				if (traceLevel > 0 && traceLevel != 8 && !pb.isSolvable()) {
					StringBuilder strb = new StringBuilder();
					strb.append(String.format("goal can be simplified to FALSE. no search will solve it%n%n"));
					LOGGER.trace(strb);
					System.exit(0);
				}

				// Searches for a solution plan
				final Plan plan = planner.search(pb);

				// Print the results
				final String problemName = problem.getName().substring(0, problem.getName().indexOf('.'));
				final int numberOfActions = planner.getStatistics().getNumberOfActions();
				final int numberOfFluents = planner.getStatistics().getNumberOfRelevantFluents();
				double timeToParseInSeconds = 0.0;
				double timeToEncodeInSeconds = 0.0;
				double timeToSearchInSeconds = 0.0;
				double totalTimeInSeconds = 0.0;
				double memoryForProblemInMBytes = 0.0;
				double memoryUsedToSearchInMBytes = 0.0;
				double totalMemoryInMBytes = 0.0;

				if (saveStats) {
					timeToParseInSeconds = Statistics.millisecondToSecond(planner.getStatistics().getTimeToParse());
					timeToEncodeInSeconds = Statistics.millisecondToSecond(planner.getStatistics().getTimeToEncode());
					timeToSearchInSeconds = Statistics.millisecondToSecond(planner.getStatistics().getTimeToSearch());
					totalTimeInSeconds = timeToParseInSeconds + timeToEncodeInSeconds + timeToSearchInSeconds;

					memoryUsedToSearchInMBytes = Statistics
							.byteToMByte(planner.getStatistics().getMemoryUsedToSearch());
					memoryForProblemInMBytes = Statistics
							.byteToMByte(planner.getStatistics().getMemoryUsedForProblemRepresentation());
					totalMemoryInMBytes = memoryForProblemInMBytes + memoryUsedToSearchInMBytes;
				}

				if (traceLevel > 0 && traceLevel != 8) {
					final StringBuilder strb = new StringBuilder();
					if (plan != null) {
						strb.append(String.format("%nfound plan as follows:%n%n"));
						if (ACTION_COST) {
							strb.append(pb.toStringCost(plan));
						} else {
							strb.append(pb.toString(plan));
						}

						strb.append(String.format("%nplan total cost: %4.2f%n%n", plan.cost()));

					} else {
						strb.append(String.format("%nno plan found%n%n"));
					}
					if (saveStats) {
						strb.append(String.format("%ntime spent:   %8.2f seconds parsing %n", timeToParseInSeconds));
						strb.append(String.format("              %8.2f seconds encoding %n", timeToEncodeInSeconds));
						strb.append(String.format("              %8.2f seconds searching%n", timeToSearchInSeconds));
						strb.append(String.format("              %8.2f seconds total time%n", totalTimeInSeconds));

						strb.append(String.format("%nmemory used:  %8.2f MBytes for problem representation%n",
								memoryForProblemInMBytes));
						strb.append(String.format("              %8.2f MBytes for searching%n",
								memoryUsedToSearchInMBytes));
						strb.append(String.format("              %8.2f MBytes total%n%n%n", totalMemoryInMBytes));
					}
					LOGGER.trace(strb);
				} else if (traceLevel == 8) {
					final StringBuilder strb = new StringBuilder();
					if (plan != null) {
						strb.append(String.format("%5s %8d %8d %8.2f %8.2f %8.2f %8.2f %8.2f %8.2f %8.2f %5d%n",
								problemName, numberOfActions, numberOfFluents, timeToParseInSeconds,
								timeToEncodeInSeconds, timeToSearchInSeconds, totalTimeInSeconds,
								memoryForProblemInMBytes, memoryUsedToSearchInMBytes, totalMemoryInMBytes,
								plan.size()));
					} else {
						strb.append(String.format("%5s %8d %8d %8.2f %8.2f %8s %8s %8.2f %8s %8s %5s%n",
								problem.getName(), numberOfActions, numberOfFluents, timeToParseInSeconds,
								timeToEncodeInSeconds, "--", "--", memoryForProblemInMBytes, "--", "--", "--"));
					}
					LOGGER.trace(strb);
				}
			} else {
				LOGGER.trace("encoding problem failed");
			}
			long end = System.currentTimeMillis();
			System.out.println((end - start)/1000);
		} catch (IOException ioExp) {
			LOGGER.error(ioExp);
		} catch (FileException fileEx) {
			LOGGER.error(fileEx);
			System.exit(1);
		}
	}

}
