function data = testPerformance()
tr = runperf("test_tsp", "ProcedureName","N7*");
data = tr.sampleSummary;
end

