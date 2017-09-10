package anon.defeasible.benchmark.core;

public interface BenchDataSet {
	public void init();
	public String getName();
	public DataSetGenerator getDataSets();
}
