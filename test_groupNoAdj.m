function e = test_groupNoAdj()
#Jeremy Patton

e=0;
e+=runTest(1, [2, 5, 10, 4], 12, 1);
e+=runTest(1, [2, 5, 10, 4], 14, 0);
e+=runTest(1, [2, 5, 10, 4], 7, 0);
e+=runTest(1, [2, 5, 10, 4, 2], 7, 1);
e+=runTest(1, [2, 5, 10, 4], 9, 1);
e+=runTest(1, [10, 2, 2, 3, 3], 15, 1);
e+=runTest(1, [10, 2, 2, 3, 3], 7, 0);
e+=runTest(1, [], 0, 1);
e+=runTest(1, [1], 1, 1);
e+=runTest(1, [9], 1, 0);
e+=runTest(1, [9], 0, 1);
e+=runTest(1, [5, 10, 4, 1], 11, 1);
end

function k = runTest(start, nums, target, answer)

	result = groupNoAdj(start,nums,target);
	if(result==answer)
		k=0;
		printf("         groupNoAdj(%d, [", start); printf("%d ",nums); printf("], %d) %d -> %d\n", target, result, answer);
	else
		k=1;
		printf("ERROR!  g groupNoAdj(%d, [", start); printf("%d ",nums); printf("], %d) %d <-> %d\n", target, result, answer);
	end
	
end
