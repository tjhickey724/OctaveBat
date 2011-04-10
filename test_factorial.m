function e=test_factorial()
%runs unit tests on factorial(n) and returns if the cases fail or pass
%author-Robin Jha
%date-02/21/2011
e=0;
e+= runTest(5,120);
e+= runTest(1,1);
e+= runTest(0,1);
e+= runTest(4,24);
e+= runTest(8,40320);
e+= runTest(6,720);
e+= runTest(2,2);
e+= runTest(9,362880);
e+= runTest(3,6);
e+= runTest(7,5040);
end

function k = runTest(n,answer)
% runTest(n,answer) - checks that everyNth(n)==answer

 result = factorial(n);

 if (result==answer)
   k=0; 
   printf("        factorial(%d)->%d\n",n,answer);
 else
   k=1; 
   printf("ERROR!  factorial(%d)->%d  <> %d\n",n,result,answer);
 end
end

