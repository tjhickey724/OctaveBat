function e = test_countTriple()
#Ben Setel

e=0;
e+=runTest("abcXXXabc", 1);
e+=runTest("xxxabyyyycd", 3);
e+=runTest("cdcdcd", 0);
e+=runTest("a", 0);
e+=runTest("", 0);
e+=runTest("XXXxxx", 2);
e+=runTest("111222", 2);
e+=runTest("faaaaa", 3);

end

function k=runTest(nums, answer)

result=countTriple(nums);

if(result==answer)
k=0;
printf("         countTriple([");printf("%i ", nums);printf("]) %d -> %d\n", result, answer);
else
k=1;
printf("ERROR!   countTriple([");printf("%d ", nums);printf("]) %d <> %d\n", result, answer);
end
end
