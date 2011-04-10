function e=test_intMax()
% test_intMax runs several tests and returns
%  the number of tests that fail
% Author: Iain Crosby
% Date 2/28/11

e=0;
e= e + runtest(1,2,3,3);
e= e + runtest(12,44,15,44);
e= e + runtest(98,75,20,98);
e= e + runtest(111,2000,8956,8956);
e= e + runtest(30,40,5000,5000);
e= e + runtest(111,1111,11111,11111);
e= e + runtest(7463837,9287230949,90238,9287230949);
e= e + runtest(0,0,1,1);
e= e + runtest(1,1,1,1);
e= e + runtest(0,0,0,0);



end

function e = runtest(a,b,c,answer)
% runtest(a,b,answer) - calls intMax(a,b,c)
%  to get the result, compares with the answer
%  and returns 1 if an error 0 if not
%  also prints out the test results 

result = intMax(a,b,c);

	if (result == answer)
		e=0;
		fprintf(' intMax(%d,%d,%d)=%d\n' ,a,b,c,result)
	else
		e=1;
		fprintf( 'Error: intMax(%d,%d,%d) -> %d <> %d\n' ,a,b,c,result,answer)
	end
end