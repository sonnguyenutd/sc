package edu.utd.sc.eval.actgenerating.rule;

import java.util.Set;

import edu.utd.sc.eval.actgenerating.Predicate;
/**
 * assoc_id ::: predicate_name ::: {id1, ...}
 * @author Son
 *
 */
public class Association {
	Predicate predicate;
	Set<Integer> associatedParas;
}
