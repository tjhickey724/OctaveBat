function e = test_everyNth()
% test_everyNth() - runs unit tests on the everyNth function and returns number of tests that fail
% author: Tim Hickey
% date: 14 Feb 2011
  e=0;
  e += runTest("Miracle",2,"Mrce");
  e += runTest("abcdefg",2,"aceg");
  e += runTest("abcdefg",3,"adg");
  e += runTest("Chocolate",3,"Cca");
  e += runTest("Chocolates",3,"Ccas");
  e += runTest("Chocolates",4,"Coe");
  e += runTest("Chocolates",100,"C");
end

function k = runTest(s,n,answer)
% runTest(s,n,answer) - checks that everyNth(s,n)==answer
% note the use of strcmp rather than == to test equality of strings!
 result = everyNth(s,n);
 if (strcmp(result,answer))
   k=0; 
   printf("        everyNth(%s,%d)->%s\n",s,n,answer);
 else
   k=1; 
   printf("ERROR!  everyNth(%s,%d)->%s  <> %s\n",s,n,result,answer);
 end
end

% Test Git
