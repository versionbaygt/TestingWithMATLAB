classdef test_mytsp < matlab.perftest.TestCase

    properties (TestParameter)
        N = {2,3,4,5,7};
        exp_path = {[2 1 2],[3 1 2 3], [4 1 3 2 4],[5 4 1 3 2 5],[7 6 3 2 4 1 5 7]};
        exp_val = {7, 12, 22, 35, 77}
    end
    methods (Test, ParameterCombination="sequential")
        % Test methods

        function simpleTest(testCase, N, exp_path, exp_val)
            w = magic(N);
            G = digraph(w);
            testCase.startMeasuring()
            [best_path,val] = mytsp(G);
            testCase.stopMeasuring()
            testCase.verifyEqual(best_path, exp_path);
            testCase.verifyEqual(val, exp_val);
        end
        function simpleNewTest(testCase, N, exp_path, exp_val)
            w = magic(N);
            G = digraph(w);
            testCase.startMeasuring()
            [best_path,val] = mytsp_opt(G);
            testCase.stopMeasuring()
            testCase.verifyEqual(best_path, exp_path);
            testCase.verifyEqual(val, exp_val);
        end
    end
end