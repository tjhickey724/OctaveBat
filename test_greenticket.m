function e  = test_greenticket()
%tests greenticket and determines the number of outcomes that fail

%Mehreen Asad(Made changes as shown in front of each test case, Added fprintf 
%statements which were not there originally, Added a new test case)

% Varenya Prasad
% Added tests to check for negative numbers and fractions

e=0;
e=e+runtest(1,1,1,20); % originally was 30, should be 20
e=e+runtest(1,1,2,10); %originally was 20, should be 10
e=e+runtest(1,2,3,0);
e=e+runtest(2,1,1,10); % originally was 20, should be 10
e=e+runtest(1,2,1,10); % originally was 20, should be 10
e=e+runtest(3,2,1,0);
e=e+runtest(20,200,2,0);
e=e+runtest(5,05,50,10);% originally was 20, should be 10
e=e+runtest(3,3,30,10); % originally was 20, should be 10
e=e+runtest(500,500,500,20);% originally was 30, should be 20

e=e+runtest(4,8,4,10);
e=e+runtest(0,0,0,20); % Test Added
e=e+runtest(-4,8,-4,10);
e=e+runtest(0.5,0.5,100,10);

end

    function e = runtest(a,b,c,answer)
        %calls in greenticket(a,b,c) and compares the result to the
        %expected answer
        
        result=greenticket(a,b,c);
       if result==answer
	 e=0;	 
	fprintf('      greenticket(%d,%d,%d)=%d\n',a,b,c,result);            

        else
        e=1;
		fprintf('ERROR:greenricket(%d,%d,%d)->%d <> %d\n', a,b,c,result,answer);
        end
    end
        


