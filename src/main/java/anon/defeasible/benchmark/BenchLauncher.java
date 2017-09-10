package anon.defeasible.benchmark;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.LinkedList;
import java.util.List;

import com.beust.jcommander.IStringConverter;
import com.beust.jcommander.JCommander;
import com.beust.jcommander.Parameter;

import anon.defeasible.benchmark.core.Approach;
import anon.defeasible.benchmark.core.BenchDataSet;
import anon.defeasible.benchmark.core.BenchRunner;
import anon.defeasible.benchmark.expressivness.CyclicConflictBenchDataSet;
import anon.defeasible.benchmark.expressivness.CyclicGRDBenchDataSet;
import anon.defeasible.benchmark.expressivness.DefeaterBenchDataSet;
import anon.defeasible.benchmark.expressivness.ExistentialBenchDataSet;
import anon.defeasible.benchmark.expressivness.LevelsBenchDataSet;
import anon.defeasible.benchmark.expressivness.TransitiveChainBenchDataSet;
import anon.defeasible.benchmark.preformance.ChainBenchDataSet;
import anon.defeasible.benchmark.preformance.DirectedAcyclicGraphBenchDataSet;
import anon.defeasible.benchmark.preformance.TreeBenchDataSet;
import anon.defeasible.benchmark.semantics.AmbiguityBenchDataSet;
import anon.defeasible.benchmark.semantics.CircularReasoningBenchDataSet;
import anon.defeasible.benchmark.semantics.FloatingBenchDataSet;
import anon.defeasible.benchmark.semantics.TeamBenchDataSet;
import anon.defeasible.benchmark.tools.ASPICTool;
import anon.defeasible.benchmark.tools.DEFTTool;
import anon.defeasible.benchmark.tools.DeLPTool;
import anon.defeasible.benchmark.tools.FloraTool;
import fr.lirmm.graphik.util.stream.IteratorException;

public class BenchLauncher {
	public static final String BENCH_CHAIN = "CHAIN";
	

	
	public static final String BENCH_TRANSITIVE_CHAIN = "TRANSITIVE_CHAIN";
	
	public static final String BENCH_AMBIGUITY = "AMBIGUITY_TEST";
	public static final String BENCH_TEAM = "TEAM";
	public static final String BENCH_CIRCULAR = "CIRCULAR";
	public static final String BENCH_FLOATING = "FLOAT";
	
	public static final String BENCH_EXIST = "EXIST";
	public static final String BENCH_CYCLE= "CYCLE";
	public static final String BENCH_CYCLE_CONF= "CYCLE_CONF";
	public static final String BENCH_LEVELS = "LEVELS";
	
	public static final String BENCH_DEFEATER = "defeater";
	
	public static final String BENCH_CIRCULAR_SUPPORT = "circular-support";
	public static final String BENCH_CIRCULAR_CONFLICT = "circular-attack";
	
	public static final String BENCH_TREE = "TREE";
	public static final String BENCH_DAG = "DAG";
	
	
	@Parameter(names = { "-h", "--help" }, description = "Print this message", help = true)
	private boolean            help;
	
	@Parameter(names = { "-n", "--size" }, converter = IntArrayConverter.class, description = "Comma-separated list of sizes of the generated knowledge bases")
	private int[]              sizes          = new int[] {400, 4000};
	
	@Parameter(names = { "-b", "--bench" }, description = BENCH_CHAIN+"|"+BENCH_CIRCULAR+"|...")
	private String             benchType             = BENCH_CIRCULAR;
	
	@Parameter(names = { "-o", "--output-file" }, description = "Output file (use '-' for stdout)")
	private String             outputFilePath = benchType + ".csv"; //"chain.csv"
	
	@Parameter(names = { "-t", "--timeout" }, description = "Timeout in ms")
	private long               timeout        = 300000;
	
	@Parameter(names = { "-i", "--iterations" }, description = "Number of iterations for each Bench size")
	private int 			   iterations     = 1;
	
	@Parameter(names = { "-a", "--n-atoms" }, description = "Number of atoms per rule")
	private int 			   nbrAtoms          = 1;
	
	@Parameter(names = { "-x", "--n-terms" }, description = "Number of terms per rule")
	private int 			   nbrTerms          = 1;
	
	public static void main(String args[]) throws FileNotFoundException, IteratorException {
		System.out.println("===Start the execusion===");
		
		BenchLauncher options = new BenchLauncher();

		JCommander commander = new JCommander(options, args);

		if (options.help) {
			commander.usage();
			System.exit(0);
		}
		
		OutputStream outputStream = null;
		if (options.outputFilePath.equals("-")) {
			outputStream = System.out;
		} else {
			try {
				outputStream = new FileOutputStream(options.outputFilePath);
			} catch (Exception e) {
				System.err.println("Could not open file: " + options.outputFilePath);
				System.err.println(e);
				e.printStackTrace();
				System.exit(1);
			}
		}
		
		List<Approach> approaches = new LinkedList<Approach>();
		//approaches.add(new ELDRTool());
		//approaches.add(new ASPICTool());
		//approaches.add(new DEFTTool());
		//approaches.add(new DeLPTool());
		approaches.add(new FloraTool());
		//approaches.add(new DRDeviceTool());
		
		
		BenchDataSet bench = null;
		if(options.benchType.equals(options.BENCH_AMBIGUITY)) {
			bench = new AmbiguityBenchDataSet(options.sizes, options.nbrTerms);
		} else if(options.benchType.equals(options.BENCH_TEAM)) {
			bench = new TeamBenchDataSet(options.sizes);
		} else if(options.benchType.equals(options.BENCH_FLOATING)) {
			bench = new FloatingBenchDataSet(options.sizes);
		} else if(options.benchType.equals(options.BENCH_CIRCULAR)) {
			bench = new CircularReasoningBenchDataSet(options.sizes);
		} else if(options.benchType.equals(options.BENCH_EXIST)) {
			bench = new ExistentialBenchDataSet(options.sizes);
		} else if(options.benchType.equals(options.BENCH_CYCLE)) {
			bench = new CyclicGRDBenchDataSet(options.sizes);
		} else if(options.benchType.equals(options.BENCH_CYCLE_CONF)) {
			bench = new CyclicConflictBenchDataSet(options.sizes);
		} else if(options.benchType.equals(options.BENCH_LEVELS)) {
			bench = new LevelsBenchDataSet(options.sizes);
		} else if(options.benchType.equals(options.BENCH_CHAIN)) {
			bench = new ChainBenchDataSet(options.sizes);
		} else if(options.benchType.equals(options.BENCH_TREE)) {
			bench = new TreeBenchDataSet(options.sizes, 5);
		} else if(options.benchType.equals(options.BENCH_DAG)) {
			bench = new DirectedAcyclicGraphBenchDataSet(options.sizes, 15);
		}
		
		new BenchRunner(bench, approaches, outputStream, options.iterations, options.timeout).run();
		
		System.out.println("===End the execusion===");
	}
	
	
	
	
	
	
	
	public class IntArrayConverter implements IStringConverter<int[]> {
		public int[] convert(String value) {
			String[] strArray = value.split(",");
			int[] intArray = new int[strArray.length];
			for(int i = 0; i < strArray.length; i++) {
			    intArray[i] = Integer.parseInt(strArray[i]);
			}
			return intArray;
		}
	}

}
