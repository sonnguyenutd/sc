package edu.utd.sc.test;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.List;

import fr.uga.pddl4j.parser.Domain;
import fr.uga.pddl4j.parser.NamedTypedList;
import fr.uga.pddl4j.parser.Op;
import fr.uga.pddl4j.parser.Parser;

public class ActionExplorer {

	public static void main(String[] args) throws FileNotFoundException {
		String dm = "/Users/sonnguyen/Desktop/domains/tpp.pddl";
		File domainFile = new File(dm);
		Parser p = new Parser();
		p.parseDomain(domainFile);
		Domain domain = p.getDomain();
		

		for (NamedTypedList pre : domain.getPredicates()) {
			System.out.println(pre);
		}

		System.out.println(domain.getOperators().size());
		List<Op> ops = domain.getOperators();
//		for (int i = 0; i < ops.size() - 1; i++) {
//			Op o1 = ops.get(i);
//			System.out.println(o1);
//		}
	}

}
