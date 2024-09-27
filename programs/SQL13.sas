proc sql;
	create table work.BigFish13 as
		select Species,mean(Weight) as AvgWeight
		from cert.fish13
		group by Species
		having AvgWeight > (select median(Weight)
							from cert.fish13);
run;