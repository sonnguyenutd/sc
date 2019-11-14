package edu.utd.sc.eval.actgenerating.rule;

import java.util.ArrayList;
import java.util.List;

import edu.utd.sc.eval.actgenerating.Predicate;
/**
 * assoc_id ::: predicate_name ::: {_, para1, para2, _ ...}
 * @author Son
 *
 */
public class Association {
	Predicate predicate;
//	Set<Integer> associatedParas;
	List<String> essentialParas;
	
	public Association() {
		essentialParas = new ArrayList<String>();
	}
}
