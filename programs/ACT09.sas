data work.act09;
	set cert.custid09;
	PID=prxparse('/(\d{3})-(\d{2})-(\d{4})/o');
	if prxmatch(PID,National_ID)>0 then output;
run;