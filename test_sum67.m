function e=test_sum67(s)
% test_sum67(s) runs tests on sum67
%  and returns number of failed tests
%  also prints out info about tests
% author: Huimin Jia

% add two tests for this function by Kai Wu

  e=0;
  e = e+ runtest([1,2,2],5);
  e = e+ runtest([1,2,2,6,99,99,7],5);
  e = e+ runtest([1,1,6,7,2],4);
  e = e+ runtest([1,6,2,2,7,1,6,99,99,7],2);
  e = e+ runtest([1,6,2,6,2,7,1,6,99,99,7],2);
  e = e+ runtest([2,7,6,2,6,7,2,7],18);
  e = e+ runtest([2,7,6,2,6,2,7],9);
  e = e+ runtest([1,6,7,7],8);
  e = e+ runtest([6,8,1,6,7],0);
  e = e+ runtest([0],0);
  e = e+ runtest([6,7,11],11);
  e = e+ runtest([11,6,7,11],22);
  e = e+ runtest([2,2,6,7,7],11);
  e = e+ runtest([8,8,6,6,7,7],7);% by Kai Wu
  e = e+ runtest([11,11,2,2,5,5],11);% by Kai Wu

end  



function e=runtest(a,answer)
%runtest(a) - runs the sum67 test

  result = sum67(a);
  
  if (result == answer)
    e=0;
    fprintf('       sum67(');
    fprintf('%d',a);
    fprintf(') = %d\n',answer);
  else
    e=1;
    fprintf('ERROR: sum67(');
    fprintf('%d',a);
    fprintf(')->%d <> %d\n',result,answer);
  end;
end