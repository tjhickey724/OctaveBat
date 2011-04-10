% Ian Reichek
% 3/1/11
% Function returns the number of errors in the test

function y = test_sum3()
	x1 = [1 2 3];
	x2 = [1.1 2.2 3.3];
	x3 = [6 1 1];
	x4 = [1 1 1];
	x5 = [0 1 1];
	fx1 = sum3(x1);
	fx2 = sum3(x2);
	fx3 = sum3(x3);
	fx4 = sum3(x4);
	fx5 = sum3(x5);
	
	y = 0;
	if (fx1 != 6)
		y = y+1;
	end
	
	if (fx2 != 6.6)
		y = y+1;
	end
	
	if (fx3 != 8)
		y = y+1;
	end
	
	if (fx4 != 3)
		y = y+1;
	end
	
	if (fx5 != 2)
		y = y+1;
	end

