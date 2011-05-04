% This is a test script for the function gHappy(s)
% Antonio Cancio

function test_gHappy()
g=0;
g=g+runtest('xxggxx',true)
g=g+runtest('xxgxx',false)
g=g+runtest('xxggyygxx',true)
g=g+runtest('g',false)
g=g+runtest('ggggggxxggg',true)
g=g+runtest('xx',false)
g=g+runtest("egsgsaggsetsx",true) %added by Siddhi Krishna

fprintf('Failures: %d\n', g);
end

%function added by Siddhi Krishna
function e = runtest(a, ans)
% calls biggerTwo() on a and b
% returns 1 if test fails, 0 if it holds

if(isequal(gHappy(a), ans))
	e = 0;
	%fprintf('gHappy([%s], [%s]) = [%s]\n\n',num2str(a), num2str(b), num2str(ans));
else
	e = 1;
	%fprintf('Error: gHappy([%s], [%s]) != [%s]\n\n',num2str(a), num2str(b), num2str(ans));
end
