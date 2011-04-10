function e=test_close10()
% test_close10() runs unit tests on close10(a,b) and returns the number that fail
% author: Tim Hickey
% date: Feb 14 2011 (Valentine's Day)
e=0;
e+= runTest(8,13,8);
e+= runTest(13,8,8);
e+= runTest(7,13,0);
e+= runTest(13,7,0);
e+= runTest(5,21,5);
e+= runTest(0,20,0);
e+= runTest(10,10,0);
end

function k = runTest(a,b,answer)
% runTest(s,n,answer) - checks that everyNth(s,n)==answer

 result = close10(a,b);

 if (result==answer)
   k=0; 
   printf("        close10(%d,%d)->%d\n",a,b,answer);
 else
   k=1; 
   printf("ERROR!  close10(%d,%d)->%d  <> %d\n",a,b,result,answer);
 end
end

