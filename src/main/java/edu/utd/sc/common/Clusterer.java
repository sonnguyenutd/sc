package edu.utd.sc.common;

import java.io.File;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import edu.utd.swsc.utils.Utils;

public class Clusterer {
	public static Set<ParentService> group(Set<Service> services) {
		Set<ParentService> clusters = new HashSet<ParentService>();
		Map<Set<Parameter>, Set<Service>> dic = new HashMap<Set<Parameter>, Set<Service>>();
		for (Service s : services) {
			if(s.outputs.isEmpty())
				continue;
//			Set<String> key = Service.convertServicePara2ActionPara(s.inputs);
			Set<Parameter> key = new HashSet<Parameter>(s.inputs);
			Set<Service> ss = dic.get(key);
			if (ss == null) {
				ss = new HashSet<Service>();
				ss.add(s);
				dic.put(key, ss);
			} else {
				ss.add(s);
			}
		}
		for (Set<Parameter> in : dic.keySet()) {
			ParentService p = new ParentService();
			p.addAll(dic.get(in));
			clusters.add(p);
		}
		return clusters;
	}

	public static void main(String[] args) {
		Set<Service> services = Service.parseAllXML(new File("/Users/sonnguyen/Desktop/backup/services/1.1"));
		Set<ParentService> parents = group(services);
		System.out.println(services.size());
		System.out.println(parents.size());
		Utils.write("/Users/sonnguyen/Desktop/SC/domain_parent.pddl", DomainReader.toPDDLParent(parents));
		for (ParentService s : parents) {
//			System.out.println(s.children.size() + "\n--" + s.inputs.size() + "\n--" + s.outputs.size());
			System.out.println(s.toPDDL());
		}
	}
	
}
