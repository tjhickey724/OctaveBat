% Tarif Riyad Rahman
% MATLAB syntax used


% This is the test bed for the function powerN
% sample cases are used for testing the correctness of the function

% Tested by:
% Mehreen Asad (Added 2 new test cases)
% Josh Silverman (good coverage)
% Antonio Cancio (Added a new test case)
% Ritu Pradhan(Added 2 new test cases)
% one test case added - Tarif Riyad Rahman

function e=test_powerN()

e=0;

e=e+runtest(3,2,9);
e=e+runtest(5,3,125);
e=e+runtest(9,3,729);
e=e+runtest(10,3,1000);
e=e+runtest(7,2,49);
e=e+runtest(4,4,256);
e=e+runtest(8,3,512);
e=e+runtest(6,3,216);
e=e+runtest(2,5,32);
e=e+runtest(11,2,121);
e=e+runtest(25,4,390625);
e=e+runtest(4,9,262144);
e=e+runtest(0,2,0);

e=e+runtest(2,1,2);
e=e+runtest(2,0,1);
e=e+runtest(2,-2,.25); %added by Ian Reichek

e=e+runtest(0,1,0);% by Robin Jha
e=e+runtest(1,0,1);% by Robin Jha

e=e+runtest(2,3,8); % added by Tarif Riyad Rahman

end


function e=runtest(base,N,answer)

      result=powerN(base,N);
      
      if result==answer
         
          e=0;
          
          fprintf('powerN(%d,%d)=%d\n',base,N,result);
      else
          
          e=1;
          
          fprintf('powerN(%d,%d)=%d<>%d\n',base,N,result,answer);
          
          
          
      end



end
