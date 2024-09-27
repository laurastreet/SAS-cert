data work.ACT20;
	set cert.salary20;
	array INCS[5] INCOME1-INCOME5;
	array NEW[5] _temporary_ (80000,81000,82000,83000,84000);
	do i=1 to 5;
		if INCS[i] < NEW[i] then
			INCS[i]=NEW[i];
	end;
	drop i;
run;

proc means;
	var INCOME1;
run;