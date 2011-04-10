function [ e ] = test_greenticket()
%tests greenticket and determines the number of outcomes that fail
e=0;
e=e+runtest(1,1,1,30)
e=e+runtest(1,1,2,20)
e=e+runtest(1,2,3,0)
e=e+runtest(2,1,1,20)
e=e+runtest(1,2,1,20)
e=e+runtest(3,2,1,0)
e=e+runtest(20,200,2,0)
e=e+runtest(5,05,50,20)
e=e+runtest(3,3,30,20)
e=e+runtest(500,500,500,30)
end
    function [e]= runtest(a,b,c,answer)
        %calls in greenticket(a,b,c) and compares the result to the
        %expected answer
        
        result=greenticket(a,b,c);
        if result==answer
            e=0;
        else
            e=1;
        end
    end
        


