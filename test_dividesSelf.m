function e=test_dividesSelf()
% test_dividesSelf() runs unit tests on dividesSelf(n) and returns the cases that fail
% author: Varenya Prasad
% date: 2nd March 2011

% Modified by Ritu Pradhan
% Added 3 test cases.
% add 1 test for this function by Kai Wu
% Add 1 more test case - Abhirup Das
% Also MATLAB doesn't process += so changed syntax accordingly - Abhirup
% Das

e=0;
e= e + runTest(128,1);
e= e + runTest(22,1);
e= e +runTest(12,1);
e= e +runTest(120,0);
e= e +runTest(13,0);
e= e +runTest(32,0);
e= e +runTest(22,1);
e= e +runTest(42,0);
e= e +runTest(212,1);
e= e +runTest(213,0);
e= e +runTest(162,1);

e= e +runTest(0,0);
e= e +runTest(4560,0);
e= e +runTest(122,1);

e= e +runTest(203,0); %by Kai Wu
end

function k = runTest(a,answer)
% runTest(n,answer) - checks that dividesSelf(n)==answer

 result = dividesSelf(a);

 if (result==answer)
   k=0; 
   printf("        divideSelf(%d)->%d\n",a,answer);
 else
   k=1; 
   printf("ERROR!  divideSelf(%d)->%d  <> %d\n",a,result,answer);
 end
end

