function e=test_intMax()
% test_intMax runs several tests and returns
%  the number of tests that fail
% Author: Iain Crosby
% Date 2/28/11
%Modified by seife kassahun 
% added test cases using negative fractional numbers and sqaure root numbers
%Sylvie added a test case 

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
e=e+runtest(9/8,21/8,50/5,10);% added by seife kassahun
e=e+runtest(sqrt(2),sqrt(1),sqrt(5),sqrt(5));% added by seife kassahun
e= e + runtest(-5,0.3,0,0.3);% added by Liz Li
e= e + runtest(70,40,10,70);%added by Sylvie




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