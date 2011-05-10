# Created Ben setel

function e = test_scoreUp()
  e = 0;
  e = e + runTest(["a" "a" "b" "b"], ["a" "c" "b" "c"], 6);
  e = e + runTest(["a" "a" "b" "b"], ["a" "a" "b" "c"], 11);
  e = e + runTest(["a" "a" "b" "b"], ["a" "a" "b" "b"], 16);

	function k = runTest(key, answers, answer)
		% runTest(array,answer) - checks that maxSpan(array) == answer
		result = scoreUp(key, answers);
		if (result == answer)
			k = 0;
			fprintf('        scoreUp( [ ');
			fprintf('%d ',answers);
			fprintf('] ) -> %d\n',answer);
		else
			k = 1;
			fprintf('ERROR!  scoreUp( [ ');
			fprintf('%d ',answers);
			fprintf('] ) -> %d  <> %d\n',result,answer);
		end
	end
end

