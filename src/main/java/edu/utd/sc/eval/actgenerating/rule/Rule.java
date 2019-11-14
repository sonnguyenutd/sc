package edu.utd.sc.eval.actgenerating.rule;

import java.util.Set;

import edu.utd.sc.eval.actgenerating.Predicate;
/**
 * Rule
 * predicate_name ::: {assoc_id1, ...} ::: {assoc_id1, ...} ::: {id1, ...}
 * @author Son
 *
 */
public class Rule {
	Predicate predicate;
	Set<Association> includedSet;
	
	/**
	 */
	Set<Association> excludedSet;
	
	/**
	 * The index of its parameters, such that:
	 * predicate(..., para, x) && predicate(..., para, #x) = false
	 * e.g., at (A) && at (B) = false
	 * Implication: if at (A) in preconds, and at (B) in effects, then not at (A) must be in the effects.
	 * We need only the indexes of the paras because we already have its specification
	 */
	Set<Integer> noRepeatedAssParaIndexes;

}
