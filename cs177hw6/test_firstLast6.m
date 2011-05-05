% Ian Reichek
% 3/1/11
% Function returns number of errors in test

% Tested by Adam Rosenbloom on 5-2-11
% Missing 'end' to terminate function. Added two test functions. At first I
% was confused as to why code was written like it is, but the array
% presents certain challenges.

% Tested by Sean Kilachand
% Added two test functions.  Added output that specifies how many errors there
% were. 
function test_firstLast6()
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

    fx6 = firstLast6([0:2:6]); % Added by ASR
    fx7 = firstLast6([-6:2:8]); % Added by ASR
    
    if (fx6 == false)
        y = y+1;
    end
    if(fx7 == true)
        y = y+1;
    end
    
    fx8 = firstLast6(-6:6:6);
    
    fx9 = firstLast6(-12:6:12);
    
    if (fx8 == false)
        y = y + 1;
    end
    
    if (fx9 == true)
        y = y + 1;
    end
    fprintf('\nErrors: %d\n\n', y);
end