% Tarif Riyad Rahman
% MATLAB syntax used


% This is the test bed for the function commonTwo
% sample cases are used for testing the correctness of the function


function e=test_equalsIsNot()

e=0;

e=e+runtest('isisnot',0);
e=e+runtest('isnot',1);
e=e+runtest('isnotnot',0);
e=e+runtest('notnot',0);
e=e+runtest('isxnotanotis',1);
e=e+runtest('is',0);
e=e+runtest('aisnota',1);
e=e+runtest('ii',1);
e=e+runtest('ee',1);
e=e+runtest('notisisnot',1);


end


function e=runtest(str1,answer)

      result=equalIsNot(str1);
      
      if result==answer
         
          e=0;
          
          fprintf('equalIsNot(%s)=%d\n',str1,answer);
      else
          
          e=1;
          
          fprintf('equalIsNot(%s)=%d<>%d\n',str1,result,answer);
          
          
          
      end



end