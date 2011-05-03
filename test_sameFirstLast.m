% Ian Reichek
% 3/1/11
% Returns the number of errors in the test

function y = test_sameFirstLast()
	x1 = [1 2 3 4 5 6 7];
	x2 = [1.1 2.2 3.3 4.4];
	x3 = [6 1 1 1 6];
	x4 = [1 1 1 1];
	x5 = [0 1 1 1 0];
	fx1 = sameFirstLast(x1);
	fx2 = sameFirstLast(x2);
	fx3 = sameFirstLast(x3);
	fx4 = sameFirstLast(x4);
	fx5 = sameFirstLast(x5);
ictest= sameFirstLast([1 2 3 4 5 6 7 1])
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

	if (ictest==false)
	  y = y+1
end

