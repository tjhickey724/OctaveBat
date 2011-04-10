function test_blackjack()
% test_blackjack() runs 12 tests on the function blackjack to check reliability
% function returns total number of failures.
% Taha Bakhtiyar 2/2011
  e = 0;
  e = e + runtest(0,-1,111);
  e = e + runtest(1,1,1);
  e = e + runtest(2,1,2);
  e = e + runtest(1,2,2);
  e = e + runtest(21,21,21);
  e = e + runtest(20,21,21);
  e = e + runtest(21,20,21);
  e = e + runtest(0,0,111);
  e = e + runtest(19,21,21);
  e = e + runtest(22,21,21);
  e = e + runtest(21,22,21);
  e = e + runtest(22,22,0);
  printf ('Failures: %d\n',e);
end

function e=runtest(a,b,ans)
% runtest(a,b,ans) calls function blackjack.
% It inputs vlues of a and b and output against known answer
% Returns 1 if the test fails and 0 otherwise.
  if ((blackjack(a,b)) == ans)
    e=0;
    fprintf ('blackjack(%d,%d) = %d.\n',a,b,ans)
  else
    e=1;
    fprintf ('Error: blackjack(%d,%d) <> %d.\n',a,b,ans)
  end
end