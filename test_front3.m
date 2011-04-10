% Stuart Davis
% HW4

function e = test_front3()
	% front3(string) Given a string, we'll say that the front is the first
	% 3 chars of the string. If the string length is less than 3, the front
	% is whatever is there. Return a new string which is 3 copies of the front.
	
	% test_front3() runs unit tests on front3(str) and returns the number that fail
	e = 0;
	e = e + runTest('a', 'aaa');
	e = e + runTest('Ab', 'AbAbAb');
	e = e + runTest('AbC', 'AbCAbCAbC');
	e = e + runTest('_a_', '_a__a__a_');
	e = e + runTest('abcde', 'abcabcabc');
	e = e + runTest('AbCdEf', 'AbCAbCAbC');
	
	function k = runTest(str,answer)
		% runTest(str,answer) - checks that front3(str) == answer
		result = front3(str);
		if (result == answer)
			k = 0;
			fprintf('        front3(%s) -> %s\n',str,answer);
		else
			k = 1;
			fprintf('ERROR!  front3(%s) -> %s  <> %s\n',str,result,answer);
		end
	end
end

