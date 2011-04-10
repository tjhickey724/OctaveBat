function e = test_strCount()
%test_strCount runs several tests and returns number of tests that fails.
%Author: Ritu Pradhan
%Date : 03/01/2011
	e = 0;
	e+= runtest("catcowcat","cat",2);
	e+= runtest("catcowcat","cow",1);
	e+= runtest("catcowcat","dog",0);
	e+= runtest("cacattcowcat","cat",2);
	e+= runtest("xyx","x",3);
	e+= runtest("iiijj","jj",1);
	e+= runtest("iiijj","j",2);
	e+= runtest("ababababa","aba",4);
	e+= runtest("ababababa"," ",0);
	e+= runtest("ababababa","b",4);
	e+= runtest("","",0);

end

function e=runtest(str,sub,answer)
%runtest(str,sub,answer) - calls strCount(str,sub) to get the result, %compares with the answer and returns 1 if an error
%returns 0 if not and also prints out the test results.
	result = strCount(str,sub);
	if(result == answer)
		e = 0;
		fprintf('      strCount(%s,%s)=%d\n',str,sub,result);
	else
		e = 1;
		fprintf('ERROR:strCount(%s,%s)->%d<> %d\n',str,sub,result,answer);
	end

end