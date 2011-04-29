function e = test_array11()
%test_array11() runs several tests and returns number of test that fails.
% Author: Ritu Pradhan
%Date : 03/01/2011

%Modified By Ritu Pradhan
%Added negative testcases 
	e = 0;
	e+=runtest([11,5,1,55,11],2);
	e+=runtest([11,5,55,11],2);
	e+=runtest([11,11],2);
	e+=runtest([1,2,3,4],0);
	e+=runtest([],0);
	e+=runtest([11,5,11],2);
	e+=runtest([1],0);
	e+=runtest([11],1);
	e+=runtest([11,3,11,11],3);
	e+=runtest([0],0);
	
	e+=runtest([-56,58,1],0);
	e+=runtest([-11,58,1],0);
	e+=runtest([-11,11,1],1);
end

function e = runtest(array,answer)
%runtest(array,answer)- calls array11(array) to get the result and %compares with the answer. and returns 1 if error and 0 if no error and %also prints out the test result.
	result = array11(array);
	 
	if(result == answer)
		e = 0;
		fprintf('		array11{'); fprintf(' %d ',array); fprintf('}=');fprintf('%d\n',result);
		 	
	else
		e = 1;
		fprintf('ERROR:array11{');fprintf(' %d ',array);fprintf('}-->%d<>%d\n',result,answer);
		
	end	
end	