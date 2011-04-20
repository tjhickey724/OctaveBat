function e = test_in3050()
% test_in3050 runs several tests and returns
%  the number of tests that fail
% Author: Iain Crosby
% Date 2/28/11
% Mehreen Asad (Changed test cases to show correct result, Added 3 test cases)

e=0;
e= e + runtest(20,40,false);
e= e + runtest(35,49,false); % this was originally true but should be false
e= e + runtest(99,200,false);
e= e + runtest(44,33,false); % this was originally true but should be false
e= e + runtest(9999,8888,false);
e= e + runtest(34,8976454,false);
e= e + runtest(44,33,false); % this was originally true but should be false
e= e + runtest(45,32,false); % this was originally true but should be false
e= e + runtest(30,50, false);% this was originally true but should be false
e= e + runtest(30,41,false);% Added this test case
e= e + runtest(43,45,true);% Added this test case
e= e + runtest(37,38,true);% Added this test case



end

function e=runtest(a,b,answer)
% runtest(a,b,answer) - calls in3050(a,b)
%  to get the result, compares with the answer
%  and returns 1 if an error 0 if not
%  also prints out the test results

	result = in3050(a,b);

		if (result == answer)
			e=0;
			fprintf(' in3050(%d,%d)=%d\n' ,a,b,result)
		else
			e=1;
			fprintf( 'ERROR:in3050(%d,%d) ->%d <> %d\n' ,a,b,result,answer)
		end
end
