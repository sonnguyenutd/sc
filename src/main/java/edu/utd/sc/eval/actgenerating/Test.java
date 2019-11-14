package edu.utd.sc.eval.actgenerating;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import fr.uga.pddl4j.parser.Domain;
import fr.uga.pddl4j.parser.Exp;
import fr.uga.pddl4j.parser.Op;
import fr.uga.pddl4j.parser.Parser;

public class Test {

	public static void main(String[] args) throws FileNotFoundException {
		String dm = "/Users/sonnguyen/Desktop/domains/opt/organic-synthesis-split/domain-p08.pddl";
		File domainFile = new File(dm);
		Parser p = new Parser();
		p.parseDomain(domainFile);
		Domain domain = p.getDomain();

		System.out.println(domain.getOperators().size());
		List<Op> ops = domain.getOperators();
		int counter = 0;
		for (int i = 0; i < ops.size() - 1; i++) {
			Op o1 = ops.get(i);
			for (int j = i + 1; j < ops.size(); j++) {
				Op o2 = ops.get(j);
				if (checkHaveSamePre(o1, o2)) {
					counter++;
					System.out.println(o2.getName() + "---" + o1.getName());
//					System.out.println("here");
				}
			}
		}
		System.out.println(counter);
	}

	private static boolean checkHaveSamePre(Op o1, Op o2) {
		Exp pre1 = o1.getPreconditions();
		Exp pre2 = o2.getPreconditions();
		return pre1.equals(pre2);
//		return isEqualExp(pre1, pre2);
	}

	private static boolean isEqualExp(Exp pre1, Exp pre2) {
		List<Exp> exps1 = pre1.getChildren();
		List<String> simplifiedExps1 = simplify(exps1);
		List<Exp> exps2 = pre2.getChildren();
		List<String> simplifiedExps2 = simplify(exps2);
		return checkEquals(simplifiedExps1, simplifiedExps2);
	}

	private static boolean checkEquals(List<String> simplifiedExps1, List<String> simplifiedExps2) {
		Set<String> exp1 = new HashSet<String>(simplifiedExps1);
		Set<String> exp2 = new HashSet<String>(simplifiedExps2);
//		System.out.println(exp1);
//		System.out.println(exp2);
//		System.out.println("-----------");
		return exp1.equals(exp2);
	}

	private static List<String> simplify(List<Exp> exps1) {
		List<String> result = new ArrayList<String>();
		for (Exp exp : exps1) {
			String simp = simplify(exp.toString());
			result.add(simp);
		}
		return result;
	}

	private static String simplify(String expStr) {
		String result = expStr;
		result = result.replace("(", "").replace(")", "").trim();
		if (result.contains(" ?")) {
			int index = result.indexOf(" ?");
			result = result.substring(0, index);
		}
		return result.trim();
	}

}
