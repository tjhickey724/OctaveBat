% Tarif Riyad Rahman
% MATLAB syntax used


% This is the test bed for the function commonTwo
% sample cases are used for testing the correctness of the function
% All test cases added by Tarif Riyad Rahman.. New Test Bed for New Solution

function e=test_maxBlock()

e=0;

e=e+runtest('hoopla',2);
e=e+runtest('aaabbcc',3);
e=e+runtest('ttt',3);
e=e+runtest('efffEEE',3);
e=e+runtest('s',1);
e=e+runtest('wwwWWW',3);
e=e+runtest('xt',1);
e=e+runtest('ddddrst',4);
e=e+runtest('abcd',1);
e=e+runtest('acccccccb',7);


end


function e=runtest(str1,answer)

      result=maxBlock(str1);
      
      if result==answer
         
          e=0;
          
          fprintf('maxBlock(%s)=%d\n',str1,answer);
      else
          
          e=1;
          
          fprintf('maxBlock(%s)=%d<>%d\n',str1,result,answer);
          
          
          
      end



end
