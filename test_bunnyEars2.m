% This is a test script for the function file bunnyEars2
% Antonio Cancio

%Jeremy Patton - Fixed to be an actual test
function y = test_bunnyEars2()
e=0;
e+=runtest(0,0);
e+=runtest(1,2);
e+=runtest(2,5);
e+=runtest(3,7);
e+=runtest(4,10);
e+=runtest(5,12);
e+=runtest(6,15);
e+=runtest(10,25);

printf('# of errors: %i\n', e);
end

function e = runtest(a,answer)
result = bunnyEars2(a);
if(result==answer)
printf('bunnyEars2(%i) %i<==>%i\n', a, result, answer);
e=0;
else
printf('bunnyEars2(%i) %i<=/=>%i (ERROR)\n', a, result, answer);
e=1;
end
end
