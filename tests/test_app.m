classdef test_app < matlab.uitest.TestCase
    properties
        App
    end

    methods (TestMethodSetup)
        function launchApp(testCase)
            testCase.App = tspapp;
            testCase.addTeardown(@delete,testCase.App)
        end
    end


    methods (Test)
        % Test methods

        function testSlider(testCase)
            % Choose Slide value 3
            NSlider = testCase.App.NSlider;
            choose(testCase, NSlider, 3)
            choose(testCase, NSlider, 4)
            choose(testCase, NSlider, 5)
            choose(testCase, NSlider, 6)
            choose(testCase, NSlider, 7)
            choose(testCase, NSlider, 8)
            choose(testCase, NSlider, 4)
            choose(testCase, NSlider, 2)
            choose(testCase, NSlider, 4)
            choose(testCase, NSlider, 8)


    
        end
    end

end