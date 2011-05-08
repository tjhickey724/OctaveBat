function test_makeChocolate()
% test_makeChocolate() runs 12 tests on the function makeChocolate to check reliability
% function returns total number of failures.
% Taha Bakhtiyar 2/2011

  e = 0;
  e = e + runtest(0,0,0,0);
  e = e + runtest(1,1,1,1);
  e = e + runtest(1,5,6,1);
  e = e + runtest(1,5,5,0);
  e = e + runtest(1,2,3,1);
  e = e + runtest(2,3,1,1);
  e = e + runtest(3,2,1,1);
  e = e + runtest(-2,0,0,-1);
  e = e + runtest(1,1,2,-1);
  e = e + runtest(7,13,21,1);
  e = e + runtest(7,3,21,6);
  e = e + runtest(.1,.2,.3,.4); %added by Ian Reichek

  printf ('Failures: %d\n',e)
end

function e=runtest(a,b,c,ans)
% runtest(a,b,c,ans) calls function makeChocolate.
% It inputs values of a, b and c and compares output with known answer
% Returns 1 if the test fails and 0 otherwise.
  if ((makeChocolate(a,b,c)) == ans)
    e=0;
    fprintf ('makeChocolate(%d,%d,%d) reported correct solution.\n',a,b,c)
  else
    e=1;
    fprintf ('Error: makeChocolate(%d,%d,%d) reported incorrect solution.\n',a,b,c)
  end
end
