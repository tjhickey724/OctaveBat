function [ e ] = test_roundsum()
%tests greenticket and determines the number of outcomes that fail

% Tests look correct: Made changes in syntax using (;) and fprintf _
% Abhirup Das Updated 7th May, 2011

e=0;
e=e+runtest(3,5,7,20);
e=e+runtest(2,14,15,30);
e=e+runtest(-5,5,28,30);
e = e + runtest(-16, 7, 45, 35); %Added test file - Abhirup Das
e=e+runtest(-51,6,10,-30);
e=e+runtest(65,11,3,80);
e=e+runtest(4,13,-15,-10);
e=e+runtest(20,29,19,70);
e=e+runtest(-1,8,-11,0);
e=e+runtest(17,-6,21,30);
e=e+runtest(114,91,56,260);
end
    function [e]= runtest(a,b,c,answer)
        %calls in roundsum(a,b,c) and compares the result to the
        %expected answer
        
        result=roundsum(a,b,c);
        if result==answer
            e=0;
             fprintf('\roundsum(%d, %d, %d) = %d\n', a, b, c, answer) %Added print output _ Abhirup Das
        else
            e=1;
             fprintf('\Error: tested roundsum(%d, %d, %d) = %d\n', a, b, c, answer) % Added print output - Abhirup Das
        end
    end