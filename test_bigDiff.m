% Tarif Riyad Rahman
% MATLAB syntax used


% This is the test bed for the function bigDiff
% sample cases are used for testing the correctness of the function
% Modified by seife kassahun
% added two test cases and the function works good
% Looks great - added one more test file - Abhirup Das


function e=test_bigDiff()

e=0;
e = e + runtest( [4 36 32], 28); %test case by Abhirup
e=e+runtest([5 4 3],2);% test case by Tarif
e=e+runtest([3],0);% test case by Tarif
e=e+runtest([6,6,10],4);% test case by Tarif
e=e+runtest([5,6,7],2);% test case by Tarif
e=e+runtest([8,9,11],3);% test case by Tarif
e=e+runtest([100 34 5 2],98);% test case by Tarif
e=e+runtest([2 2 1],1);% test case by Tarif
e=e+runtest([0 0 7],7);% test case by Tarif
e=e+runtest([8 8 400],392);% test case by Tarif
e=e+runtest([23,34,22],12);% test case by Tarif
e=e+runtest([-25 -50 100],125);% added by seife
e=e+runtest([ 100/2 900/300],47)% added by seife


end


function e=runtest(numArray,answer)

      result=bigDiff(numArray);
      
      if result==answer
         
          e=0;
          
          disp(['bigDiff(',num2str(numArray),')==',num2str(answer)]);
          
      else
          
          e=1;
          
          disp(['bigDiff(',num2str(numArray),')==',num2str(result),'<>',num2str(answer)]);
          
          
          
      end



end
