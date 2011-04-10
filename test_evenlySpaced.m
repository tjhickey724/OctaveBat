function test_evenlySpaced()
% test_evenlySpaced() runs 12 tests on the function evenlySpaced to check reliability
% function returns total number of failures.
% Taha Bakhtiyar 2/2011
  e = 0;
  e = e + runtest(0,0,0,1);
  e = e + runtest(-1,-1,-1,1);
  e = e + runtest(1,1,1,1);
  e = e + runtest(-1,0,1,1);
  e = e + runtest(1,2,3,1);
  e = e + runtest(2,3,1,1);
  e = e + runtest(3,2,1,1);
  e = e + runtest(0,0,1,0);
  e = e + runtest(1,1,2,0);
  e = e + runtest(-1,1,-1,0);
  e = e + runtest(1,0,1,0);
  e = e + runtest(-1,-2,-3,1);
  printf ('Failures: %d\n',e)
end

function e=runtest(a,b,c,ans)
% runtest(a,b,c,ans) calls function evenlySpaced.
% It inputs vlues of a, b and c and compares output with known answer
% Returns 1 if the test fails and 0 otherwise.
  if ((evenlySpaced(a,b,c)) == ans)
    e=0;
    fprintf ('evenlySpaced(%d,%d,%d) reported correct solution.\n',a,b,c)
  else
    e=1;
    fprintf ('Error: evenlySpaced(%d,%d,%d) reported incorrect solution.\n',a,b,c)
  end
end