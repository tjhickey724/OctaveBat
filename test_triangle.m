function e=test_triangle()
%runs unit tests on triangle(n) and returns if the cases fail or pass
%author-Robin Jha
%date-02/21/2011
%Mehreen Asad (Added 2 Test cases)
%add 1 test for this function by Kai Wu

e=0;
e+= runTest(5,15);
e+= runTest(1,1);
e+= runTest(0,0);
e+= runTest(4,10);
e+= runTest(6,21);
e+= runTest(7,28);
e+= runTest(8,36);
e+= runTest(2,3);
e+= runTest(3,6);
e+= runTest(9,45);
e+= runTest(10,55);
e+= runTest(12,78);
e+= runTest(20,2100);% by Kai Wu

end

function k = runTest(n,answer)
% runTest(n,answer) - checks that everyNth(n)==answer

 result = triangle(n);

 if (result==answer)
   k=0; 
   printf("        triangle(%d)->%d\n",n,answer);
 else
   k=1; 
   printf("ERROR!  triangle(%d)->%d  <> %d\n",n,result,answer);
 end
end

