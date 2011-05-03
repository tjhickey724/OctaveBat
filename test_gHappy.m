function e=test_gHappy()
% This is a test script for the function gHappy(s)
% Antonio Cancio

%Modifications:
% Varenya Prasad
% Modified the test file to modularize the creation of  test cases,
% and their eventual testing. The file now prints out the results in 
% the correct format. Also added test cases, mostly to check bounds.

e=0;
e+= runTest("xxggxx",1);
e+= runTest('xxgxx',0);
e+= runTest('xxggyygxx',0);
e+= runTest('g',0);
e+= runTest('ggggggxxggg',1);
e+= runTest('xx',0);

e+= runTest('ggg',1); % Added tests
e+= runTest('x',0);
e+= runTest('',0);

end

function k = runTest(a,answer)
% runTest(n,answer) - checks that gHappy(n)==answer

 result = gHappy(a);
 #fprintf("This is from runTest %s")

 if (result==answer)
   k=0; 
   printf("        gHappy(%s)->%d\n",a,answer);
 else
   k=1; 
   printf("ERROR!  gHappy(%s)->%d  <> %d\n",a,result,answer);
 end
end

