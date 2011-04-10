function e= test_fibonacci()

% test_fibonacci() runs unit tests on fibonacci(n) and check to if the function
% returns the Nth term of the fibonacci series
% author: Varenya Prasad
% date: 2nd March 2011

e=0;
e+= runTest(0,0);
e+= runTest(1,1);
e+= runTest(2,1);
e+= runTest(3,2);
e+= runTest(4,3);
e+= runTest(5,5);
e+= runTest(6,8);
e+= runTest(7,13);
e+= runTest(8,21);
e+= runTest(9,34);
end

function k = runTest(a,answer)
% runTest(n,answer) - checks that fibonacci(n)==answer

 result = fibonacci(a);

 if (result==answer)
   k=0; 
   printf("        fibonacci(%d)->%d\n",a,answer);
 else
   k=1; 
   printf("ERROR!  fibonacci(%d)->%d  <> %d\n",a,result,answer);
 end
end

