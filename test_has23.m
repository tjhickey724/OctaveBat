function e=test_has23()
%This function tests the validity of the function has23
%by testing it on several points and summing total number of tests that fail. 
%Sara Shahanaghi

% Tested by:
% Josh Silverman (expected input is int array)

  e=0;
  e = e + runtest([0,0],false);
  e = e + runtest([2,2],true);
  e = e + runtest([3,2],true);
  e = e + runtest([3,4],true);
  e = e + runtest([4,53],false);
  e = e + runtest([0,2],true);
  e = e + runtest([0,3],true);
  
end

function e=runtest(intArray,answer)
%This function compares predetermined test points to the results of has23 for those given points. 
%Returns 1 if an error exists and 0 if does not

  result = has23(intArray);

  if (result == answer)
    e=0;
  	fprintf('has23(%s)=%d\n',mat2str(intArray),result);
  else
    e=1;
  	fprintf('ERROR--lastDigit does not pass test',a,b,result,answer);
  end
end
