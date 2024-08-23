classdef test_mytsp < matlab.unittest.TestCase

    properties (TestParameter)
        N = {2,3,4,5};
        exp_path = {[2 1 2],[3 1 2 3], [4 1 3 2 4],[5 4 1 3 2 5]};
        exp_val = {7, 12, 22, 35}
    end
    methods (Test, ParameterCombination="sequential")
        % Test methods

        function simpleTest(testCase, N, exp_path, exp_val)
            w = magic(N);
            G = digraph(w);
            [best_path,val] = mytsp(G);
            testCase.verifyEqual(best_path, exp_path);
            testCase.verifyEqual(val, exp_val);
        end
    end

end