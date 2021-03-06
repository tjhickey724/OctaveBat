function e=test_lastDigit()
%This function tests the validity of the function lastDigit 
%by testing it on several points and summing total number of tests that fail. 
%Sara Shahanaghi
%Mehreen Asad(Added 5 new test cases, Added comment lines for function description)
% Iain Crosby added one case
% Tested by Adam Rosenbloom on 5-2-2011
% Added elipsis on fprintf statement for error - it is broken up into two
% lines, and MATLAB syntax requires that an elipsis is used. Added two new
% test cases.
% Modified by Yohanes Santoso added two tests

  e=0;
  e = e + runtest(10,10,true);
  e = e + runtest(19,18,false);
  e = e + runtest(1002,102,true);
  e = e + runtest(1000,1001,false);
  e = e + runtest(111,22,false);
  e = e + runtest(23,3,true);
  e = e + runtest(11,0,false);
  e = e + runtest(76,76,true);
  e = e + runtest(1000,0,true);
  e = e + runtest(5,34,false);
  e = e + runtest(115, 235, true);
  e = e + runtest(1192, 1191, false);
e = e + runtest(-12345, 34545,true); %added this test to check if neg ints work icrosby
e = e + runtest(0, 0, false);
e = e + runtest(0, 0, true);
end

  function e = runtest(a,b,answer)
%This function compares predetermined test points to the results of lastDigit for those given points. 
% The function calls lastDigit(a,b) which returns true if the rightmost digits of two integers
% are the same and returns false if the rightmost digits of two integers are not the same 
% Prints 1 if true and 0 if false

  result = lastDigit(a,b);

  if (result == answer)
    e=0;    % for test cases that pass
  fprintf('lastDigit(%d,%d)=%d\n',a,b,result);
  else
    e=1;    % for failed test cases
fprintf('ERROR--lastDigit does not pass test: lastDigit(%d,%d)->%d <> %d\n', ...
	a,b,result,answer);
  end
end
