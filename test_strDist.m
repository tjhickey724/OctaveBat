function test_strDist()

	% array of test values
	testValues = {'abacdar', 'a', 6; 
				  "ssssabcdar", "a", 5; 
				  "abcbcdabcr", "abc", 9; 
				  "lgabchkl;gabcbcdabcr", "abc", 17; 
				  "abcbcdabcdfljldfr", "abc", 9; 
				  "cccabccccbcdabccccr", "abcccc", 15; 
				  "abcbcdabcr", "abc123", 0; 
				  "abcbcdabcr", "", 0; 
				  "", "abc", 0; 
				  "1", "1", 0};

	% assertions
	passes = 0;
	fails = 0;
	for i=1:length(testValues)
		if(testValues{i,3} == strDist(testValues{i,1}, testValues{i,2}))
			printf(". ")
			passes++;
		else
			printf("F ")
			fails++;
		end
		printf("Test %d | strDist(%s, %s)\n", i, testValues{i,1}, testValues{i,2})
	end
	printf("\nCompleted with %d passes and %d fails\n\n", passes, fails)

end
