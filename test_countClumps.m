function e = test_countClumps()
#Jeremy Patton

#Tested by: 
#
#1. Josh Silverman

e=0;
e+=runTest([1, 2, 2, 3, 4, 4, 2], 2);
e+=runTest([1, 1, 2, 1, 1], 2);
e+=runTest([1, 1, 1, 1, 1], 1);
e+=runTest([1, 2, 3], 0);
e+=runTest([2, 2, 1, 1, 1, 2, 1, 1, 2, 2], 4);
e+=runTest([0, 2, 2, 1, 1, 1, 2, 1, 1, 2, 2], 4);
e+=runTest([0, 0, 2, 2, 1, 1, 1, 2, 1, 1, 2, 2] , 5);
e+=runTest([0, 0, 0, 2, 2, 1, 1, 1, 2, 1, 1, 2, 2], 5);
e+=runTest([], 0);
e+=runTest([1, 1, 1, 1, 1], 1);
e+=runTest([0, 2, 3, 2, 1, 4, 1, 5, 1, 2, 1, 6, 1, 2, 2], 1);
e+=runTest([0, 0, 2, 2, 1, 1, 1, 2, 1, 1, 2] , 4);
e+=runTest([0, 0, 0, 2, 2, 1, 1, 1, 2, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2], 5);
e+=runTest([-1, -1, 2, 2, 1, -1], 2);
end

function k=runTest(nums, answer)

result=countClumps(nums);

if(result==answer)
k=0;
printf("         countClumps([");printf("%i ", nums);printf("]) %d -> %d\n", result, answer);
else
k=1;
printf("ERROR!   countClumps([");printf("%d ", nums);printf("]) %d <> %d\n", result, answer);
end
end
