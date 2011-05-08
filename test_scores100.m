% Tarif Riyad Rahman
% MATLAB syntax used


% This is the test bed for the function commonTwo
% sample cases are used for testing the correctness of the function


function e=test_scores100()

e=0;

e=e+runtest([100 100 1],1);
e=e+runtest([3],0);
e=e+runtest([6,6,10],0);
e=e+runtest([100,100,10],1);
e=e+runtest([100,100,5],1);
e=e+runtest([100 34 5 2],0);
e=e+runtest([2 2 1],0);
e=e+runtest([0 100 7],0);
e=e+runtest([8 100 100],1);
e=e+runtest([23,34,22],0);


end


function e=runtest(numArray,answer)

      result=scores100(numArray);
      
      if result==answer
         
          e=0;
          
          disp(['scores100(',num2str(numArray),')==',num2str(answer)]);
          
      else
          
          e=1;
          
          disp(['scores100(',num2str(numArray),')==',num2str(result),'<>',num2str(answer)]);
          
          
          
      end



end