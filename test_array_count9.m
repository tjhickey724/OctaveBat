function e=test_array_count9()
%This function tests the validity of the function array_count9
%by testing it on several points and summing total number of tests that fail. 
%Sara Shahanaghi, HW #4

  e=0;
  e = e + runtest([7,45,9,89,45,9,3,9,1],3);
  e = e + runtest([9,9,9,9],4);
  e = e + runtest([93,94,95,96,97,98,99],0);
  e = e + runtest([9,0,1,0,9],2)
  e = e + runtest([0],0)
end

function e=runtest(X,answer)
%This function compares predetermined test points to the results of lastDigit for those given points. 
%Returns 1 if an error exists and 0 if does not

  result = array_count9(X,answer);

  if (result == answer)
    e=0;
  fprintf('array_count9(%d,%d)=%d\n',X,result);
  else
    e=1;
  fprintf('ERROR--lastDigit does not pass test',
	X,result,answer);
  end
  
end
