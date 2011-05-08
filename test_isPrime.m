function e=test_isPrime()
% test_inOrder runs several tests and returns
% the number of tests that fail
% Author: Siddhi Krishna
% Date: 2/21/2011 

%Sara Shahanaghi-- everything looks good, added two test cases
%Jeremy Patton -- added abritrary test
%Huimin Jia -- Added a case 0.
%Ian Reichek -- added a large prime number test
% seife kassahun---added a negative number
% Abhirup Das --- added a test case


  e=0;
  e = e + runtest(1,false);
  e = e + runtest(2,true);
  e = e + runtest(3,true);
 
  e = e + runtest(12, false); % test case added by Abhirup Das
 
  e = e + runtest(10,false);
  e = e + runtest(100,false);
  e = e + runtest(7, true);
  e = e + runtest(13, true);
  e = e + runtest(53, true);
  e = e + runtest(97, true);
  e = e + runtest(20, false);
  e = e + runtest(16, false);
  e = e + runtest(70, false);
  e += runtest(103, true);
  e += runtest(0, false); % added by Huimin Jia
  e = e + runtest(2621, true); % added by Ian Reichek
  e=e+runtest(-9,false);% added by siefe kassahun
end

function e=runtest(a,answer)
% runtest(a,b,c, answer) - calls isPrime(a)
%  to get the result, compares with the answer
%  and returns 1 if an error 0 if not
%  also prints out the test results ...

  result = isPrime(a);

  if (result == answer)
    e=0;
    fprintf('      isPrime(%d)=%d\n',a,result);
  else
    e=1;
    fprintf('ERROR:isPrime(%d)->%d <> %d\n',a,result,answer);
  end
end
