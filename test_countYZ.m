% Tarif Riyad Rahman
% MATLAB syntax used


% This is the test bed for the function commonTwo
% sample cases are used for testing the correctness of the function


function e=test_countYZ()

e=0;

e=e+runtest('eez yellow',1);
e=e+runtest('fadfdsf',0);
e=e+runtest('z y y',3);
e=e+runtest('wz yey',2);
e=e+runtest('zebra canny',1);
e=e+runtest('sssz yyyy yyyy',3);
e=e+runtest('harvard university',1);
e=e+runtest('brandeis university',1);
e=e+runtest('Kutz',1);
e=e+runtest('ZZZZZZ',1);


end


function e=runtest(str1,answer)

      result=countYZ(str1);
      
      if result==answer
         
          e=0;
          
          fprintf('countYZ(%s)=%d\n',str1,answer);
      else
          
          e=1;
          
          fprintf('countYZ(%s)=%d<>%d\n',str1,result,answer);
          
          
          
      end



end