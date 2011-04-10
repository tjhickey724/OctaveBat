function e=test_lastDigit()
%This function tests the validity of the function lastDigit 
%by testing it on several points and summing total number of tests that fail. 
%Sara Shahanaghi

  e=0;
  e = e + runtest(10,10,true);
  e = e + runtest(19,18,false);
  e = e + runtest(1002,102,true);
  e = e + runtest(1000,1001,false);
  e = e + runtest(111.2,22,false)
  
end

function e=runtest(a,b,answer)
%This function compares predetermined test points to the results of lastDigit for those given points. 
%Returns 1 if an error exists and 0 if does not

  result = lastDigit(a,b);

  if (result == answer)
    e=0;
  fprintf('lastDigit(%d,%d)=%d\n',a,b,result);
  else
    e=1;
  fprintf('ERROR--lastDigit does not pass test',
	a,b,result,answer);
  end
end
