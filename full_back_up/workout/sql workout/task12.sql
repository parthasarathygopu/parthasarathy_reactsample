
select BusinessEntityID,QuotaDate,SalesQuota,
NTILE(4) over(order by  SalesQuota desc)as Bucket
from Sales.SalesPersonQuotaHistory;