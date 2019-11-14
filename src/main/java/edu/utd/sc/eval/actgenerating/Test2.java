package edu.utd.sc.eval.actgenerating;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;

public class Test2 {

	public static void main(String[] args) {
//		int[] negation = {0, 1};
//		double[] probs = {0.3, 1-0.3};
//		EnumeratedIntegerDistribution predicateDist = new EnumeratedIntegerDistribution(negation, probs);
//		System.out.println(predicateDist.sample());

		ArrayList<String> listOne = new ArrayList<>(Arrays.asList("a", "b", "c", "d", "f"));

		ArrayList<String> listTwo = new ArrayList<>(Arrays.asList("a", "b", "c", "d", "e"));

		Collections.sort(listOne);
		Collections.sort(listTwo);

		// Compare unequal lists example

		boolean isEqual = listOne.equals(listTwo); // false
		System.out.println(isEqual);

		// Compare equals lists example

		ArrayList<String> listThree = new ArrayList<>(Arrays.asList("a", "f", "c", "d", "b"));
		Collections.sort(listThree);

		isEqual = listOne.equals(listThree); // true
		System.out.println(isEqual);
	}

}
