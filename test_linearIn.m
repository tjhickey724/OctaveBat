function e = test_linearIn()
#Created by Ben Setel  

e=0;
e+=runTest([1 2 4 6], [2 4], 1);
e+=runTest([1 2 4 6], [2 3 4],  0);
e+=runTest([1 2 4 4 6], [2 4],  1);
e+=runTest([1 2 4 2 6], [2 4],  1);
e+=runTest([1 2 4 4 6 7 8], [2 4 8],  1);
e+=runTest([-1 2 4 4 6], [2 4],  1);
e+=runTest([1 -2 4 4 6], [2 4],  0);
e+=runTest([-2 -4 0 6], [2 4],  0);
e+=runTest([1 2 4 10], [2 4],  1);
e+=runTest([1 2 4 10], [4 5],  0);
e+=runTest([1 2 4 10 20], [4 20],  1);

end

function k=runTest(super, sub, answer)

result=linearIn(super, sub);

if(result==answer)
k=0;
printf("         linearIn([");printf("%i ", super);printf("]) %d -> %d\n", result, answer);
else
k=1;
printf("ERROR!   linearIn([");printf("%i ", super);printf("]) %d <> %d\n", result, answer);
end
end
