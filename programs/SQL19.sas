proc sql;
	create table work.SQL19 as
		select Gender,Age,mean(Height) as AvgHeight format 5.2
		from cert.class19
		group by Gender, Age
		having calculated AvgHeight > 60
		order by Gender, Age;
run;