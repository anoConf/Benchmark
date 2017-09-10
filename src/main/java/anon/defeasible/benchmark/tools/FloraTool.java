package anon.defeasible.benchmark.tools;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.Iterator;

import anon.defeasible.benchmark.core.Approach;
import fr.lirmm.graphik.defeasible.core.preference.Preference;
import fr.lirmm.graphik.defeasible.core.rules.DefeasibleRule;
import fr.lirmm.graphik.defeasible.core.rules.DefeaterRule;
import fr.lirmm.graphik.graal.api.core.Atom;
import fr.lirmm.graphik.graal.api.core.ConjunctiveQuery;
import fr.lirmm.graphik.graal.api.core.NegativeConstraint;
import fr.lirmm.graphik.graal.api.core.Rule;
import fr.lirmm.graphik.graal.api.core.Term;
import fr.lirmm.graphik.graal.core.Rules;
import fr.lirmm.graphik.util.stream.CloseableIteratorWithoutException;

public class FloraTool extends AbstractTool {
	public static final String NAME = "FLORA-2";
	
	public static String bench = "";
	public static int size = 0;
	
	public void run() {
		String KBString = this.getKBString();
		
		//System.out.println(KBString);
		//System.out.println(this.getQuery());
		
		// make the file
        try {
            //Whatever the file path is.
            File statText = new File("resources/flora_benchs/" + bench + size + ".flr");
            FileOutputStream is = new FileOutputStream(statText);
            OutputStreamWriter osw = new OutputStreamWriter(is);    
            Writer w = new BufferedWriter(osw);
            w.write(":- use_argumentation_theory. \n");
            w.write(KBString);
            w.close();
            
            File queryText = new File("resources/flora_benchs/" + bench + size + ".flr_query");
            FileOutputStream is2 = new FileOutputStream(queryText);
            OutputStreamWriter osw2 = new OutputStreamWriter(is2);    
            Writer w2 = new BufferedWriter(osw2);
            w2.write(this.getQuery());
            w2.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
		
		/*
		// I- Prepare Phase
        String cmd = "/home/hamhec/workspace/argumentation/flora/Flora-2/flora2/runflora "
        		+ "-e \"['/home/hamhec/workspace/java/defeasible-tools-benchmark/bench.flr']. ";
        cmd += this.getQuery() + ", (tell('result.txt'), writeln(aaa), told)@\\io. \\halt.\"";
        
        System.out.println(cmd);
        
		long time = 0;
		try {
			long start = System.currentTimeMillis();
			Process p = Runtime.getRuntime()
					.exec(cmd);
			
		    p.waitFor();
		    long end = System.currentTimeMillis();
		    time = end - start;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

		// II- Query Answering Phase
		String answer = "";
		try {
			FileInputStream fstream = new FileInputStream("result.txt");
			BufferedReader br = new BufferedReader(new InputStreamReader(fstream));
			answer = br.readLine();
			br.close();
		} catch(Exception e) {
			e.printStackTrace();
		}*/
	
		// Submit Results
		this.addResult(Approach.ANSWER, "NA");
		this.addResult(Approach.TOTAL_TIME, 0);
	}

	@Override
	public String getName() {
		return NAME;
	}

	@Override
	public String formatStrictRule(Rule rule) {
		return this.formatRule(rule, "strict");
	}

	@Override
	public String formatDefeasibleRule(DefeasibleRule rule) {
		return this.formatRule(rule, "defeasible");
	}

	@Override
	public String formatDefeaterRule(DefeaterRule rule) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String formatFact(Atom atom) {
		return this.formatAtom(atom) + ".";
	}

	@Override
	public String formatNegativeConstraint(NegativeConstraint nc) {
		CloseableIteratorWithoutException<Atom> itBody = nc.getBody().iterator();
		String firstAtom = this.formatAtom(itBody.next());
		String secondAtom = this.formatAtom(itBody.next());
		return "\\opposes(" + firstAtom + ", " + secondAtom + ").";
	}

	@Override
	public String formatPreference(Preference pref) {
		return "\\overrides(" + pref.getSuperior() + ", " + pref.getInferior() + ").";
	}

	@Override
	public String formatQuery(ConjunctiveQuery query) {
		Atom atom = query.iterator().next();
		String q = atom.getPredicate().getIdentifier() + "(";
		Iterator<Term> terms = atom.getTerms().iterator();
		terms.next();
		q += "?X0";
		int i = 0;
		while(terms.hasNext()) {
			i++;
			q += ", ?X" + i;
		}
		q+=")";
		return q;
	}
	
	protected String formatRule(Rule rule, String tag) {
		String result = "";
		String label = "";
		if(rule.getLabel() != null && !rule.getLabel().isEmpty()) {
			label= "@{" + rule.getLabel() + "} ";
		}
		
		// In case the head is a conjunction and not atomic
		Iterator<Rule> itAtomicHeadRule = Rules.computeAtomicHead(rule).iterator();
		
		while(itAtomicHeadRule.hasNext()) {
			String rString = label + "@@{" + tag + "} ";
			Rule r = itAtomicHeadRule.next();
			// Format Head
			rString += this.formatAtom(r.getHead().iterator().next());
			if(!r.getBody().isEmpty()) {
				rString += " :- ";
				// Format Body
				rString += this.formatConjunctionOfAtoms(r.getBody().iterator());
			}
			result += rString + ".\n";
		}
		
		return result;
	}
	
	@Override
	public String formatAtom(Atom atom) {
		String result = "";
		result += atom.getPredicate().getIdentifier() + "(";
		Iterator<Term> itTerms = atom.getTerms().iterator();
		
		Term term = itTerms.next();
		if(term.isVariable()) result += "?"; 
		result += term.getIdentifier();
		while(itTerms.hasNext()) {
			result += ","; 
			term = itTerms.next();
			if(term.isVariable()) result += "?"; 
			result += term.getIdentifier();
		}
		result += ")";
		return result;
	}
}
