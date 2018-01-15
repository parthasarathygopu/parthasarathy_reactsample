select BusinessEntityID, QuotaDate,SalesQuota, RANK()OVER (ORDER BY SalesQuota Desc) as Rank
from Sales.SalesPersonQuotaHistory;