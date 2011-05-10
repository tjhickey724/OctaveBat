% This is a test script for the function gHappy(s)
% Antonio Cancio
# Added two tests, changed return values of 2 others, and commented out an ambiguous one -- Ben Setel

function test_gHappy()
g=0;
g=g+runtest('xxggxx',true)
g=g+runtest('xxgxx',false)
g=g+runtest('xxggyygxx',false) #changed from true to false by Ben Setel
g=g+runtest('g',false)
g=g+runtest('ggggggxxggg',true)
#g=g+runtest('xx',false)  #this seems like a poor test, since
		         #the problem never specifies one 
                         #way or the other, and both
			 #interpretations seem reasonable.
                         #In fact, technically, it should be
                         #true, since there are no unhappy
                         #g's in this string.  Ben Setel
g=g+runtest("egsgsaggsetsx",false) %added by Siddhi Krishna
                                   #changed from true to false
                                   #by Ben Setel
g=g+runtest("egggabcgg183gg", true) #added by Ben Setel
g=g+runtest("egg1g1", false) #added by Ben Setel

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
