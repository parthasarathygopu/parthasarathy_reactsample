select BusinessEntityID, QuotaDate,SalesQuota, dense_RANK()OVER (ORDER BY SalesQuota Desc) as Rank
from Sales.SalesPersonQuotaHistory;