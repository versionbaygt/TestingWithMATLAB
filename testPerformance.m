function data = testPerformance()
tr = runperf("test_tsp", "ProcedureName","N7*");
data = tr.sampleSummary;

Base = runperf("test_mytsp", "ProcedureName","simpleTest");
newBase = runperf("test_mytsp", "ProcedureName","simpleNewTest");
comparisonPlot(Base, newBase)


end

