package anon.defeasible.benchmark.semantics;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import anon.defeasible.benchmark.core.BenchDataSet;
import anon.defeasible.benchmark.core.DataSetGenerator;
import fr.lirmm.graphik.defeasible.core.DefeasibleKnowledgeBase;
import fr.lirmm.graphik.defeasible.core.io.DlgpDefeasibleParser;
import fr.lirmm.graphik.graal.api.core.AtomSetException;
import fr.lirmm.graphik.graal.api.io.ParseException;

public class FloatingBenchDataSet implements BenchDataSet {
	private static final String NAME = "Ambiguity";
	
	private int[] sizes;
	private int nbrTerms;
	
	public FloatingBenchDataSet(int[] sizes, int nbrTerms) {
		this.sizes = sizes;
		this.nbrTerms = nbrTerms;
	}
	
	public FloatingBenchDataSet(int[] sizes) {
		this(sizes, 1);
	}
	
	public void init() {
		// Nothing to Initialize
	}

	public String getName() {
		return NAME;
	}

	public DataSetGenerator getDataSets() {
		return new LocalDataSetGenerator(this.sizes, this.nbrTerms);
	}
	
	/**
	 * 
	 * @author hamhec
	 *
	 */
	class LocalDataSetGenerator extends DataSetGenerator {

		public LocalDataSetGenerator(int[] sizes, int nbrTerms) {
			super(sizes, 1, nbrTerms);
		}

		@Override
		protected Iterator<? extends Object> generate(int n) throws ParseException, AtomSetException {
			DefeasibleKnowledgeBase kb = new DefeasibleKnowledgeBase();
			kb.addFact("tp(a).");
			
			// Add the rules
			for(int i=1; i <= n; i++) {
				// P chain
				kb.addDefeasibleRule(P+i+"(X) <= tp(X).");
				kb.addDefeasibleRule(NP+i+"(X) <= tp(X).");
				
				kb.addDefeasibleRule("q(X) <= " + P+i+"(X).");
				kb.addDefeasibleRule("q(X) <= " + NP+i+"(X).");
				
				kb.addNegativeConstraint("! :- " + NP + i + "(X), " + P + i + "(X).");
				
			}
			
			// Query
			String query = "q(a).";
			List<Object> generatedKBandQuery = new LinkedList<Object>();
			generatedKBandQuery.add(kb);
			generatedKBandQuery.add(DlgpDefeasibleParser.parseQuery("?() :- " + query));
			
			return generatedKBandQuery.iterator();
		}
		
	}
}
