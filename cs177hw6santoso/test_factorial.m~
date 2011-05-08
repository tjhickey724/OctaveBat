function e=test_factorial()
%runs unit tests on factorial(n) and returns if the cases fail or pass
%author-Robin Jha
%date-02/21/2011

%Tested by:
%1. Mehreen Asad (Added a new test case)
%2. Josh Silverman (adde negative test cases)
%3. Antonio Cancio (Added a new test case)
%
%4. Adam Rosenbloom on 5-2-11
%   MATLAB does not permit the use of += for assignment, so I went through
%   all the test cases and eliminated that invalid assignment syntax. Also,
%   the use of double quotes (") is not allowed in fprintf statements in
%   MATLAB, so I made that compatible as well. Further, MATLAB does not
%   have a printf function, so I changed the printf commands to fprintf.
%   Added two new test functions.
%5. Add two tests for this function by Kai Wu

e=0;
e = e + runTest(5,120);
e = e + runTest(1,1);
e = e + runTest(0,1);
e = e + runTest(4,24);
e = e + runTest(8,40320);
e = e + runTest(6,720);
e = e + runTest(2,2);
e = e + runTest(9,362880);
e = e + runTest(3,6);
e = e + runTest(7,5040);
e = e + runTest(11,39916800);
e = e + runTest(20,2432902008176640000);

e = e + runTest(-5,-120);
e = e + runTest(-1,-1);
e = e + runTest(-0,1);
e = e + runTest(-4,-24);
e = e + runTest(10,3628800); % Added by ASR
e = e + runTest(15, 1307674368000); % Added by ASR

e = e + runTest(16, 20922789888000); % by Kai Wu
e = e + runTest(17, 355678428096000); % by Kai Wu

end

function k = runTest(n,answer)
% runTest(n,answer) - checks that everyNth(n)==answer

 result = factorial(n);

 if (result==answer)
   k=0; 
   fprintf('        factorial(%d)->%d\n',n,answer);
 else
   k=1; 
   fprintf('ERROR!  factorial(%d)->%d  <> %d\n',n,result,answer);
 end
end

