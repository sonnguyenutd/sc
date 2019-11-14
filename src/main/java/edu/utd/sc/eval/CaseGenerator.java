package edu.utd.sc.eval;

import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Random;
import java.util.Set;

import edu.utd.swsc.common.Parameter;
import edu.utd.swsc.common.Service;

public class CaseGenerator {
	// 0--9--0--4
	static Random rand = new Random();
	public static Integer MAX_CASES = 1;

	public static Integer MAX_SIZE_IN = 220;
	public static Integer MAX_SIZE_OUT = 222 / 2;

	public static void main(String[] args) {
		Set<Service> ss = Service.parseAllXML(new File("/Users/sonnguyen/Desktop/backup/services/1.1"));
		Set<Parameter> ALL_IN = new HashSet<Parameter>();
		Set<Parameter> ALL_OUT = new HashSet<Parameter>();
		for (Service s : ss) {
			ALL_IN.addAll(s.getInputs());
			ALL_OUT.addAll(s.getOutputs());
		}
	}

	public static Set<Case> generate(Set<Parameter> ALL_IN, Set<Parameter> ALL_OUT) {
		Set<Case> cases = new HashSet<Case>();
		List<Parameter> IN = new ArrayList<Parameter>(ALL_IN);
		List<Parameter> OUT = new ArrayList<Parameter>(ALL_OUT);
		Collections.shuffle(IN);
		Collections.shuffle(OUT);
		Random rand = new Random();
		while (cases.size() < MAX_CASES) {
			int numOfIn = rand.nextInt(ALL_IN.size() / 3);
			Set<Parameter> input = generateParas(IN, numOfIn);

			int numOfOut = rand.nextInt(ALL_OUT.size() / 6);
			Set<Parameter> output = generateParas(OUT, numOfOut);

			Case c = new Case(input, output);
			if (c.isValid())
				cases.add(c);
		}
		return cases;
	}

	public static Case generate(Set<Parameter> ALL_IN, Set<Parameter> ALL_OUT, int in, int out) {
		List<Parameter> IN = new ArrayList<Parameter>(ALL_IN);
		List<Parameter> OUT = new ArrayList<Parameter>(ALL_OUT);
		Collections.shuffle(IN);
		Collections.shuffle(OUT);

		Case c = null;
		while (c == null || !c.isValid()) {
			int numOfIn = rand.nextInt(in) + 1;
			Set<Parameter> input = generateParas(IN, numOfIn);
			int numOfOut = rand.nextInt(out) + 1;
			Set<Parameter> output = generateParas(OUT, numOfOut);
			c = new Case(input, output);
		}
		return c;
	}

	public static Case merge(Case c1, Case c2) {
		Case c = new Case();
		c.input.addAll(c1.input);
		c.input.addAll(c2.input);

		c.output.addAll(c1.output);
		c.output.addAll(c2.output);
		return c;
	}

	public static Case reduceInput(Case c1, Parameter i) {
		Case c = new Case();
		c.input.addAll(c1.input);
		c.output.addAll(c1.output);
		c.input.remove(i);
		return c;
	}

	public static Case updateForLonger(Case old, Set<Parameter> addedTypes, Set<Parameter> ALL_IN,
			Set<Parameter> ALL_OUT) {
		List<Parameter> ALL = new ArrayList<Parameter>(ALL_IN);
		ALL.addAll(ALL_OUT);
		ALL.removeAll(addedTypes);
		if (ALL.isEmpty())
			return null;
		Collections.shuffle(ALL);
		Case c = new Case(old.input, old.output);
		Set<Parameter> para = generateParas(ALL, 1);
		c.input.addAll(para);
		return c;
	}

	private static Set<Parameter> generateParas(List<Parameter> ALL, int numOfIn) {
		Set<Parameter> paras = new HashSet<Parameter>();
		Random rand = new Random();
		while (paras.size() < numOfIn) {
			int index = rand.nextInt(ALL.size());
			paras.add(ALL.get(index));
		}
		return paras;
	}

}
