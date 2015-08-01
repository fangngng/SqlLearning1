
select orderid,custid,empid,shipperid,orderdate,val,
	ROW_NUMBER() over(partition by custid order by val) as rolNUM,
	RANK() over(order by val) as rank1,
	DENSE_RANK() over(order by val) as denserank,
	Ntile(10) over(order by val) as ntile1
from Sales.OrderValues
order by custid asc , rolNUM asc

