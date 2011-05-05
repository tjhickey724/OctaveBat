function e=test_dividesSelf()
% test_dividesSelf() runs unit tests on dividesSelf(n) and returns the cases that fail
% author: Varenya Prasad
% date: 2nd March 2011

% Modified by Ritu Pradhan
% Added 3 test cases.

e=0;
e+= runTest(128,1);
e+= runTest(12,1);
e+= runTest(120,0);
e+= runTest(13,0);
e+= runTest(32,0);
e+= runTest(22,1);
e+= runTest(42,0);
e+= runTest(212,1);
e+= runTest(213,0);
e+= runTest(162,1);

e+= runTest(0,0);
e+= runTest(4560,0);
e+= runTest(122,1);
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

