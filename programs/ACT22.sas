data work.ACT22;
	if _N_=1 then do;
		if 0 then set cert.division22;
		declare hash divObj();
		divObj.defineKey('DIV');
		divObj.definedata('League','Division');
		divObj.definedone();
	end;
	set cert.teams22 end=lastrow;
	if divObj.find(key:DIV)=0 then
		divObj.add();
	if lastrow=1 then
		divObj.output();
run;