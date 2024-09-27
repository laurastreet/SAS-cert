proc sql;
	create table work.SQL02 as 
	select cert1.Product, cert1.ProdType
	from cert.prdsal2 as cert1
	union
	select cert2.Product, cert2.ProdType
	from cert.prdsal3 as cert2
	order by ProdType desc;
quit;