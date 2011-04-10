function e = test_groupSum()
#Jeremy Patton

e=0;
e+=runTest(1, [2, 4, 8], 10, 1);
e+=runTest(1, [2, 4, 8], 14, 1);    
e+=runTest(1, [2, 4, 8], 9, 0);
e+=runTest(1, [2, 4, 8], 8, 1);
e+=runTest(2, [2, 4, 8], 8, 1);
e+=runTest(2, [2, 4, 8], 2, 0);
e+=runTest(1, [1], 1, 1);
e+=runTest(1, [9], 1, 0);
e+=runTest(2, [9], 0, 1);
e+=runTest(1, [], 0, 1);
e+=runTest(1, [10, 2, 2, 5], 17, 1);
e+=runTest(1, [10, 2, 2, 5], 15, 1); 
e+=runTest(1, [10, 2, 2, 5], 9, 1);

end

function k = runTest(start, nums, target, answer)

	result = groupSum(start,nums,target);
	if(result==answer)
		k=0;
		printf("         groupSum(%d, [", start); printf("%d ",nums); printf("], %d) %d -> %d\n", target, result, answer);
	else
		k=1;
		printf("ERROR!  g groupSum(%d, [", start); printf("%d ",nums); printf("], %d) %d <-> %d\n", target, result, answer);
	end
	
end



