% Ian Reichek
% 3/1/11
% Returns the number of errors in the test

function y = test_sameFirstLast();
	x1 = [1 2 3 4 5 6 7];
	x2 = [1.1 2.2 3.3 4.4];
	x3 = [6 1 1 1 6];
	x4 = [1 1 1 1];
	x5 = [0 1 1 1 0];
	x6 = [-1 3 5 3 5 -2]; %added by Siddhi Krishna
	
	%Jeremy Patton - made the whole test more efficient

	y=0;
	y+=runtest(x1,false);
	y+=runtest(x2,false);
	y+=runtest(x3,true);
	y+=runtest(x4,true);
	y+=runtest(x5,true);
	y+=runtest(x6,false);
	

printf('Number of errors: %i\n', y); %added by Siddhi Krishna
end

function e = runtest(a, answer)
result=sameFirstLast(a);

if(result==answer)
printf('sameFirstLast() %i<==>%i\n', result, answer)
e=0;
else
printf('sameFirstLast() %i<=/=>%i ERROR\n', result, answer)
e=1;
endif

endfunction
