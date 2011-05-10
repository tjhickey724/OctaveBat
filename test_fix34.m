#Created by Ben Setel
#Test the function fix34
function e = test_fix34()


e=0;
e+=runTest([1 3 1 4], [1 3 4 1]);
e+=runTest([1 3 1 4 4 3 1], [1 3 4 1 1 3 4]);
e+=runTest([3 2 2 4], [3 4 2 2]);

end

function k=runTest(nums, answer)

result=fix34(nums);

if(result==answer)
k=0;
printf("         fix34([");printf("%i ", nums);printf("]) %d -> %d\n", result, answer);
else
k=1;
printf("ERROR!   fix34([");printf("%d ", nums);printf("]) %d <> %d\n", result, answer);
end
end
