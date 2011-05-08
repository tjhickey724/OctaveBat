function e=test_answercell()
%
% Tests the answerCell function several cases and returns the number of errors.
%
% Answercell as described on CodingBat:
% 
% Your cell phone rings. Return true if you should answer it. Normally you 
% answer, except in the morning you only answer if it is your mom calling. In 
% all cases, if you are asleep, you do not answer. 
%
% Marcus Kelly, May 8, 2010
%
% Note: the following 8 test cases represent ALL POSSIBLE valid inputs
% for this program. It would be silly to add more.
%
%
                %isMorning %isMom %isAsleep %expect

e=0
e = e +  runtest( true  , true  , true  , false ) ; 
e = e +  runtest( true  , true  , false , true ) ; 
e = e +  runtest( true  , false , true  , false ) ; 
e = e +  runtest( true  , false , false , false  ) ; 
e = e +  runtest( false , true  , true  , false ) ; 
e = e +  runtest( false , true  , false , true ) ; 
e = e +  runtest( false , false , true  , false ) ; 
e = e +  runtest( false , false , false , true  ) ; 




function e = runtest(test_isMorning,test_isMom,test_isAsleep,answer)

    result=answerCell(test_isMorning,test_isMom,test_isAsleep) ; 

    if ( result == answer )]
        e=0 ;
        fprintf('       answerCell(%s,%s,%s)=%s\n',test_isMorning,test_isMom,test_isAsleep,answer) ; 
    else
        e=1 ; 
        fprintf('ERROR: answerCell(%s,%s,%s) returned %s, should be %s.\n',test_isMorning,test_isMom,test_isAsleep,answer) ; 
end


end
