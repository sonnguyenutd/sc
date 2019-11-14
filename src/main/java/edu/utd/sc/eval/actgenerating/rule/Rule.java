package edu.utd.sc.eval.actgenerating.rule;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import edu.utd.sc.eval.actgenerating.Predicate;

/**
 * Rule predicate_name ::: {assoc_id1, ...} ::: {assoc_id1, ...} ::: {id1, ...}
 * 
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
	 * The index of its parameters, such that: predicate(..., para, x) &&
	 * predicate(..., para, #x) = false e.g., at (A) && at (B) = false Implication:
	 * if at (A) in preconds, and at (B) in effects, then not at (A) must be in the
	 * effects. We need only the indexes of the paras because we already have its
	 * specification
	 */
	List<String> noRepeatedAssParas;

	public Rule() {
//		this.predicate = predicate;
		this.includedSet = new HashSet<Association>();
		this.excludedSet = new HashSet<Association>();
		this.noRepeatedAssParas = new ArrayList<String>();
	}

	public Rule(Predicate predicate, Set<Association> includedSet, Set<Association> excludedSet,
			List<String> noRepeatedAssParas) {
		this.predicate = predicate;
		this.includedSet = includedSet;
		this.excludedSet = excludedSet;
		this.noRepeatedAssParas = noRepeatedAssParas;
	}

	public Predicate getPredicate() {
		return predicate;
	}

	public void setPredicate(Predicate predicate) {
		this.predicate = predicate;
	}

	public Set<Association> getIncludedSet() {
		return includedSet;
	}

	public void setIncludedSet(Set<Association> includedSet) {
		this.includedSet = includedSet;
	}

	public Set<Association> getExcludedSet() {
		return excludedSet;
	}

	public void setExcludedSet(Set<Association> excludedSet) {
		this.excludedSet = excludedSet;
	}

	public List<String> getNoRepeatedAssParas() {
		return noRepeatedAssParas;
	}

	public void setNoRepeatedAssParas(List<String> noRepeatedAssParas) {
		this.noRepeatedAssParas = noRepeatedAssParas;
	}

}
