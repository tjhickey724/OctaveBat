function e=test_scores()
%runs unit tests on scores(n) and returns if the cases fail or pass
%author-Robin Jha
%date-02/21/2011
e=0;
e= e+runTest([1,100,100,1],1);
e= e+runTest([100,100,100,1],1);
e= e+runTest([100,1,100,1],0);
e= e+runTest([10,100,10,100,100,1],1);
e= e+runTest([1,1,100,1,100,100,100,1],1);
e= e+runTest([1,100,100],1);
e= e+runTest([1,100,99,100],0);
e= e+runTest([100,1,100,100],1);
e= e+runTest([1,2,3,4,5],0);
e= e+runTest([1,2,100,4,5],0);
end

function k = runTest(n,answer)
% runTest(n,answer) - checks that everyNth(n)==answer

 result = scores(n)


 
 if (result==answer)
   k=0;
   fprintf('        scores(%d)->%d\n',n,answer);
 else
   k=1; 
   fprintf('ERROR!  scores(%d)->%d  <> %d\n',n,result,answer);
 %error = error + 1;
 end
end

