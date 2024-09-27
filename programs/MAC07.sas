data work.MAC07;
	set cert.mac_in07;
	call symputx('FNAME',NAME);
run;

%put &=FNAME;