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

public class CircularReasoningBenchDataSet implements BenchDataSet {
	private static final String NAME = "CircleBench";
	
	private int[] sizes;
	private int nbrAtoms, nbrTerms;
	
	public CircularReasoningBenchDataSet(int[] sizes, int nbrAtoms, int nbrTerms) {
		this.sizes = sizes;
		this.nbrAtoms = nbrAtoms;
		this.nbrTerms = nbrTerms;
	}
	
	public CircularReasoningBenchDataSet(int[] sizes) {
		this(sizes, 1, 1);
	}
	
	public void init() {
		// Nothing to Initialize
	}

	public String getName() {
		return NAME;
	}

	public DataSetGenerator getDataSets() {
		return new LocalDataSetGenerator(this.sizes, this.nbrAtoms, this.nbrTerms);
	}
	
	/**
	 * 
	 * @author hamhec
	 *
	 */
	class LocalDataSetGenerator extends DataSetGenerator {

		public LocalDataSetGenerator(int[] sizes, int nbrAtoms, int nbrTerms) {
			super(sizes, nbrAtoms, nbrTerms);
		}

		@Override
		protected Iterator<? extends Object> generate(int n) throws ParseException, AtomSetException {
			DefeasibleKnowledgeBase kb = new DefeasibleKnowledgeBase();
			kb.addFact("tp(a0).");
			//No atoms
			kb.addDefeasibleRule("[r0] np0(a0) <= tp(a0).");
			
			// Add rules
			for(int i=1; i <= n; i++) {
				String label = "[r" + i + "] ";
				String body = P + (i-1) + this.getTermsString("a");
				
				String head = P + (i % n) + this.getTermsString("a");
				
				String ruleString = label + head + " <= " + body + ".";
				kb.addDefeasibleRule(ruleString);
			}
			
			kb.addNegativeConstraint("! :- p0(a0), np0(a0).");
			
			String query = "np0(a0).";
			List<Object> generatedKBandQuery = new LinkedList<Object>();
			generatedKBandQuery.add(kb);
			generatedKBandQuery.add(DlgpDefeasibleParser.parseQuery("?() :- " + query));
			
			return generatedKBandQuery.iterator();
		}
		
	}
}
