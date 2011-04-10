function test_groupSum6(ints, target)

	% array of test values
	testValues = {[5 6 2], 8, true;
				  [5 6 2], 9, false;
				  [5 6 2], 7, false;
				  [], 1, false;
				  [10], 0, true;
				  [], 0, true;
				  [9], 1, false;
				  [3 2 4 6], 8, true;
				  [1 6 2 6 5], 16, false;
				  [1 6 2 6 5], 14, true;
				  [1 6 2 6 5], 15, true;
				  [1 6 2 6 4], 4, false;
				  [], 0, true};

	% assertions
	passes = 0;
	fails = 0;
	for i=1:length(testValues)
		if(testValues{i,3} == groupSum6(testValues{i,1}, testValues{i,2}))
			printf(". ")
			passes++;
		else
			printf("F ")
			fails++;
		end
		printf("Test %d | groupSum6([...], %d)\n", i, testValues{i,2})
	end
	printf("\nCompleted with %d passes and %d fails\n\n", passes, fails)

end
