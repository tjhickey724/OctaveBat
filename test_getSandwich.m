function err = test_getSandwich()
%Modified By Ritu Pradhan
%Added 3 testcases 
err = 0;
err = err + runTestSandwich('breadjellybread', 'jelly');
err = err + runTestSandwich('xxbreadjellybreadjellyxxbread', 'jellybreadjellyxx');
err = err + runTestSandwich('xxbreadxxxx', '');
err = err + runTestSandwich('brxxeadxxbreadjambread', 'jam');
err = err + runTestSandwich('breadbreadbreadbread', 'breadbread');
err = err + runTestSandwich('breadjuicyhamandturkeybreadmoreturkeybread', 'juicyhamandturkeybreadmoreturkey');
err = err + runTestSandwich('turkeybreadham', '');
err = err + runTestSandwich('breadporkxbrxreadxbredbradbread', 'porkxbrxreadxbredbrad');
err = err + runTestSandwich('bread', '');
err = err + runTestSandwich('breadbread', '');


err = err + runTestSandwich('abc', '');
err = err + runTestSandwich('xyzbreadbreadbreadxyz', 'bread');
err = err + runTestSandwich('bread1234bread', '');

end

function x = runTestSandwich(s, correct)
ansr = getSandwich(s);
if strcmp(ansr, correct)
    x=0; 
    fprintf('getSandwich(%s) --> %s\n', s, ansr);
 else
   x=1; 
   fprintf('ERROR! getSandwich(%s) --> %s\n', s, ansr);
 end
end