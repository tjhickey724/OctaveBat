function test_count11()
% array of test values
	
% Modified by Ritu Pradhan
% Added 2 new test cases.
	testValues = {'ab11c11d11ar', 3; 
				  "ssssabcdar", 0; 
				  "abcbcdabcr11", 1; 
				  "11lghkl;gabcbcdabcr", 1; 
				  "111bcbcdabcdfljldfr", 1; 
				  "cccabccc1111cbcdabccccr", 2; 
				  "abcb1cdabcr", 0; 
				  "", 0; 
				  "11", 1; 
				  "1", 0;
				  "1111", 2;
				  "111",1};

	% assertions
	passes = 0;
	fails = 0;
	for i=1:length(testValues)
		if(testValues{i,2} == count11(testValues{i,1}))
			printf(". ")
			passes++;
		else
			printf("F ")
			fails++;
		end
		printf("Test %d | count11(%s)\n", i, testValues{i,1})
	end
	printf("\nCompleted with %d passes and %d fails\n\n", passes, fails)

end
