function [ e ] = test_lessby10()
%tests greenticket and determines the number of outcomes that fail
e=0;
e=e+runtest(5,5,5,0)
e=e+runtest(4,5,14,1)
e=e+runtest(14,5,4,1)
e=e+runtest(-3,3,-2,0) %fix made by Siddhi Krishna
e=e+runtest(-10,-20,1,1)
e=e+runtest(4,13,-11,1)
e=e+runtest(200,209,190,1)
e=e+runtest(-1,8,-11,1)
e=e+runtest(3,3,3,0)
e=e+runtest(1,9,56,1)
e=e+runtest(10,19,28,1) % added by Gabriel Bronk

fprintf ('Failures: %d\n',e) %added 

end
    function [e]= runtest(a,b,c,answer)
        %calls in lessby10(a,b,c) and compares the result to the
        %expected answer
        
        result=lessby10(a,b,c);
        if result==answer
            e=0;
        else
            e=1;
        end
    end