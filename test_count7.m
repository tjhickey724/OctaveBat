function e=test_count7()
% test_count7() runs unit tests on count7(n) and returns the cases that fail
% author: Varenya Prasad
% date: 2nd March 2011
e=0;
e+= runTest(717,2);
e+= runTest(07,1);
e+= runTest(123,0);
e+= runTest(77,2);
e+= runTest(7123,1);
e+= runTest(77123,2);
e+= runTest(771737,4);
e+= runTest(47571,2);
e+= runTest(777777,6);
e+= runTest(70701277,4);
e+= runTest(777576197,5);
e+= runTest(99999,0);
e+= runTest(99799,1);
end

function k = runTest(a,answer)
% runTest(n,answer) - checks that count7(n)==answer

 result = count7(a);

 if (result==answer)
   k=0; 
   printf("        count7(%d)->%d\n",a,answer);
 else
   k=1; 
   printf("ERROR!  count7(%d)->%d  <> %d\n",a,result,answer);
 end
end

