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
	fx1 = sameFirstLast(x1);
	fx2 = sameFirstLast(x2);
	fx3 = sameFirstLast(x3);
	fx4 = sameFirstLast(x4);
	fx5 = sameFirstLast(x5);
	fx6 = sameFirstLast(x6); %added by Siddhi Krishna
	
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
	
	if (fx6 == true)
    y=y+1;
  end

fprintf('Number of errors: %d\n', y); %added by Siddhi Krishna