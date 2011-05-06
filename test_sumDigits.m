% Tarif Riyad Rahman
% MATLAB syntax used


% This is the test bed for the function commonTwo
% sample cases are used for testing the correctness of the function


function e=test_sumDigits()

e=0;

e=e+runtest('1asds3',4);
e=e+runtest('345',12);
e=e+runtest('dsdsd1',1);
e=e+runtest('1eee',1);
e=e+runtest('d3d78d',18);
e=e+runtest('23',5);
e=e+runtest('111',3);
e=e+runtest('23',5);
e=e+runtest('4',4);
e=e+runtest('45',9);


end


function e=runtest(str1,answer)

      result=sumDigits(str1);
      
      if result==answer
         
          e=0;
          
          fprintf('sumDigits(%s)=%d\n',str1,answer);
      else
          
          e=1;
          
          fprintf('sumDigts(%s)=%d<>%d\n',str1,result,answer);
          
          
          
      end



end