proc sql;
	select name
	into :COL_LIST separated by ","
	from dictionary.columns
	where upcase(libname)="CERT" and upcase(memname)="AIR10";
quit;

%put &=COL_LIST;
	