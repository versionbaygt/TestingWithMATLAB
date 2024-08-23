function results = testCoverage()
import matlab.unittest.plugins.CodeCoveragePlugin
import matlab.unittest.plugins.codecoverage.CoverageReport

suite = testsuite("test_tsp");
runner = testrunner("textoutput");
reportFormat = CoverageReport("coverageReport");
p = CodeCoveragePlugin.forFolder("src","Producing",reportFormat);
runner.addPlugin(p)

results = runner.run(suite);
end