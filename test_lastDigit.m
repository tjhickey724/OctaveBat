function e=test_lastDigit()
%This function tests the validity of the function lastDigit 
%by testing it on several points and summing total number of tests that fail. 
%Sara Shahanaghi
%Mehreen Asad(Added 5 new test cases, Added comment lines for function description,
% Added test cases that fail to see if test code works correctly)


  e=0;
  e = e + runtest(10,10,true);
  e = e + runtest(19,18,false);
  e = e + runtest(1002,102,true);
  e = e + runtest(1000,1001,true);
  e = e + runtest(111,22,false);
  e = e + runtest(23,3,true);
e = e + runtest(11,0,true);
e = e + runtest(76,76,true);
e = e + runtest(1000,0,true);
e = e + runtest(5,34,true);

  
end

  function e = runtest(a,b,answer)
%This function compares predetermined test points to the results of lastDigit for those given points. 
% The function calls lastDigit(a,b) which returns true if the rightmost digits of two integers
% are the same and returns false if the rightmost digits of two integers are not the same 
%Returns 1 if false and 0 if true

  result = lastDigit(a,b);

  if (result == answer)
    e=0;
  fprintf('lastDigit(%d,%d)=%d\n',a,b,result);
  else
    e=1;
fprintf('ERROR--lastDigit does not pass test: lastDigit(%d,%d)->%d <> %d\n',
	a,b,result,answer);
  end
end
