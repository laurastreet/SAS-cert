proc fcmp outlib=work.functions.dev;
	function ReverseName(name $) $ 20;
		rname=catx(" ", scan(name,2,","),scan(name,1,","));
	return(rname);
	endsub;
run;

options cmplib=work.functions;

data work.ACT01;
	set cert.names01;
	newName=ReverseName(name);
run;

proc sort data=work.ACT01;
	by newName;
run;