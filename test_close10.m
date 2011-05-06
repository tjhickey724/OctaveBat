function test_close10()
% test_close10() runs unit tests on close10(a,b) and returns the number that fail
% author: Tim Hickey
% date: Feb 14 2011 (Valentine's Day)
% Modified by  Iain Crosby, added one case
% Modified by Sean Kilachand
% Fixed syntax of test file
% Added 2 test cases
% Modified by Huimin Jia: Fixed output error in runTest function for fprintf. '%d' should
% be '%g'. And add a case.

e=0;
e=e+ runTest(8,13,8);
e=e+ runTest(13,8,8);
e=e+ runTest(7,13,0);
e=e+ runTest(13,7,0);
e=e+ runTest(5,21,5);
e=e+ runTest(0,20,0);
e=e+ runTest(10,10,0);
e=e+ runTest(27, -7, 0); 
e=e+ runTest(15.5, 4.5, 0); % close10(a,b) just need input two ints, but it's good to do more than function requirement. Commented by Huimin Jia
e=e+ runTest(123456,123457,123456) % Test runs fine, added this case icrosby
e=e+ runTest(15, 15, 0); % Added by Huimin Jia.

fprintf('\nErrors: %d\n\n', e);

end

function k = runTest(a,b,answer)
% runTest(s,n,answer) - checks that everyNth(s,n)==answer

 result = close10(a,b);

 if (result==answer)
   k=0; 
   fprintf('        close10(%g,%g)->%g\n',a,b,answer);
 else
   k=1; 
   fprintf('ERROR!  close10(%g,%g)->%g  <> %g\n',a,b,result,answer);
 end
end

