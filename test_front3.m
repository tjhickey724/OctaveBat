% Stuart Davis
% HW4

function e = test_front3()
	% front3(string) Given a string, we'll say that the front is the first
	% 3 chars of the string. If the string length is less than 3, the front
	% is whatever is there. Return a new string which is 3 copies of the front.
	
	% test_front3() runs unit tests on front3(str) and returns the number that fail
    
    %Modified by Huimin Jia - add 2 case and fixed a problem that may lead error.
	e = 0;
	e = e + runTest('a', 'aaa');
	e = e + runTest('Ab', 'AbAbAb');
	e = e + runTest('AbC', 'AbCAbCAbC');
	e = e + runTest('_a_', '_a__a__a_');
	e = e + runTest('abcde', 'abcabcabc');
	e = e + runTest('AbCdEf', 'AbCAbCAbC');
    
    e = e + runTest('', ''); %added by Huimin Jia
    e = e + runTest(' a', ' a a a'); %added by Huimin Jia
	e = e + runTest('finalssss', 'finfinfin'); %added by Liz Li
	
	function k = runTest(str,answer)
		% runTest(str,answer) - checks that front3(str) == answer
		result = front3(str);
		if isequal(result,answer) % Modified by Huimin Jia, for matching null input.
			k = 0;
			fprintf('        front3(%s) -> %s\n',str,answer);
		else
			k = 1;
			fprintf('ERROR!  front3(%s) -> %s  <> %s\n',str,result,answer);
		end
	end
end

