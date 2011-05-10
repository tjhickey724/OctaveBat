# Created Ben setel

function e = test_seriesUp()
  e = 0;
  e = e + runTest(3, [1, 1, 2, 1, 2, 3])
  e = e + runTest(4, [1, 1, 2, 1, 2, 3, 1, 2, 3, 4])
  e = e + runTest(5, [1, 1, 2, 1, 2, 3, 1, 2, 3, 4, 1, 2, 3, 4, 5])

	function k = runTest(n, answer)
		% runTest(array,answer) - checks that maxSpan(array) == answer
		result = seriesUp(n);
		if (result == answer)
			k = 0;
			fprintf('        seriesUp(');
			fprintf('%d ',n);
			fprintf(') -> %d\n',answer);
		else
			k = 1;
			fprintf('ERROR!  seriesUp(');
			fprintf('%d ',n);
			fprintf(') -> %d  <> %d\n',result,answer);
		end
	end
end

