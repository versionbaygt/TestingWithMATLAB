classdef test_tsp < matlab.unittest.TestCase

    methods (Test)
        % Test methods

        function simple_Test(testCase)
            N = 4;
            [best_path, val] = tsp(N);
        end
        function N2_Test(testCase)
            N = 2;
            [best_path, val] = tsp(N);
            testCase.verifyEqual(best_path, [2 1 2]);
            testCase.verifyEqual(val, 7);
        end
        function N3_Test(testCase)
            N = 3;
            [best_path, val] = tsp(N);
            testCase.verifyEqual(best_path, [3 1 2 3]);
            testCase.verifyEqual(val, 12);
        end
        function N4_Test(testCase)
            N = 4;
            [best_path, val] = tsp(N);
            testCase.verifyEqual(best_path, [4 1 3 2 4]);
            testCase.verifyEqual(val, 22);
        end
    end

end