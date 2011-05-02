% Tarif Riyad Rahman
% MATLAB syntax used

% This is the test bed for the function sumDigit
% sample cases are used for testing the correctness of the function

%Modified by Ritu Pradhan
%Added 3 test cases

function e=test_sumDigit()

	e=0;
	e=e+runtest(32,5);
	e=e+runtest(53,8);
	e=e+runtest(953,17);
	e=e+runtest(103,4);
	e=e+runtest(4944,21);
	e=e+runtest(256,13);
	e=e+runtest(5121,9);
	e=e+runtest(1216,10);
	e=e+runtest(2532,12);
	e=e+runtest(121,4);

	e=e+runtest(1111,4);
	e=e+runtest(0,0);
	e=e+runtest(10,1);

end

function e=runtest(n,answer)

      result=sumDigit(n);
      
      if result==answer
         
          e=0;
          
          fprintf('sumDigit(%d)=%d\n',n,result);
      else
          
          e=1;
          
          fprintf('sumDigit(%d)=%d<>%d\n',n,result,answer);
          
          
          
      end



end