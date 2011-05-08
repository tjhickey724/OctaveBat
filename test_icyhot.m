function e = test_icyhot()
% Runs several tests and returns the number of false tests or tests that
% fail while calling on the function icyhot
% Abhirup Das 2/14/2010
fprintf('Runs several tests on the function icyhot(t1, t2) \nwhere t1 and t2 are integers,\nand returns the number of false tests or tests that fail \nwhile calling on the function icyhot\n\n')
e = 0;
e = e + runtest(120,-1,true);
e = e + runtest(1,50,false);
e = e + runtest(77,68,false);
e = e + runtest(-1,101,true);
e = e + runtest(1,101,false);
e = e + runtest(101,-1,true);
e = e + runtest(132,212,false);

fprintf('Total Number of errors in test = %d\n',e)
end

function e = runtest(t1,t2,answer)
%Calls function icyhot
%Get results, compare answers and returns 1 if error and 0 if not
%also prints the test results
result = icyhot(t1,t2);
  if (result == answer)
    e=0;
    fprintf('      icyhot(%d,%d)=%d\n',t1,t2,result);
  else
    e= e+1;
    fprintf('ERROR:icyhot(%d,%d)=%d <> %d\n',t1,t2,result,answer);
  end
end

