function e=test_has23()
%This function tests the validity of the function has23
%by testing it on several points and summing total number of tests that fail. 
%Sara Shahanaghi

  e=0;
  e = e + runtest(0,0,false);
  e = e + runtest(2,2,true);
  e = e + runtest(3,2,true);
  e = e + runtest(3,4,true);
  e = e + runtest(1,51, false); % added by Abhirup Das
  e = e + runtest(4,53,false)
  e = e + runtest(-2, 3, true); %added by Siddhi Krishna
  
fprintf('Number of errors: %d\n', e); %added by Siddhi Krishna
  
end

function e=runtest(a,b,answer)
%This function compares predetermined test points to the results of has23 for those given points. 
%Returns 1 if an error exists and 0 if does not

  result = has23(a,b);

  if (result == answer)
    e=0;
  fprintf('has23(%d,%d)=%d\n',a,b,result);
  else
    e=1;
  fprintf('ERROR--lastDigit does not pass test',
	a,b,result,answer);
  end
end
