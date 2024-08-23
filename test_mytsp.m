classdef test_mytsp < matlab.unittest.TestCase


    methods (Test)
        % Test methods

        function simpleTest(testCase)
            N = 4;
            w = magic(N);
            G = digraph(w);
            [best_path,val] = mytsp(G);
        end
    end

end