classdef test_tsp < matlab.perftest.TestCase

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
        function N7_Test(testCase)
            N = 7;
            testCase.startMeasuring()
            [best_path, val] = tsp(N);
            testCase.stopMeasuring()
            testCase.verifyEqual(best_path, [7 6 3 2 4 1 5 7]);
            testCase.verifyEqual(val, 77);
            
        end
    end

end