options mcompilenote=all;
options mprint;
%macro combo03;
	data work.combined03;
	set 
		%do i=1 %to 100;
			cert.data&i
		%end;
	;
	run;
%mend;
options mcompilenote=none;
options nomprint;

%combo03









