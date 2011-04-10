% Ian Reichek
% 3/1/11
% Function returns number of errors in test
function y = test_firstLast6()
	x1 = [1 2 3 4 5 6 7];
	x2 = [1.1 2.2 3.3 4.4];
	x3 = [6 1 1 1 6];
	x4 = [6 1 1 1];
	x5 = [1 1 1 1 6];
	fx1 = firstLast6(x1);
	fx2 = firstLast6(x2);
	fx3 = firstLast6(x3);
	fx4 = firstLast6(x4);
	fx5 = firstLast6(x5);
	
	y = 0;
	if (fx1 == true)
		y = y+1;
	end
	
	if (fx2 == true)
		y = y+1;
	end
	
	if (fx3 == false)
		y = y+1;
	end
	
	if (fx4 == false)
		y = y+1;
	end
	
	if (fx5 == false)
		y = y+1;
	end
