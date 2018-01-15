
select  AccountId
,       TranDate
,       TranAmt
,       (
        select  sum(TranAmt) 
        from    #Transactions t2 
        where   t1.AccountId = t2.AccountID 
        and t1.TranDate>= t2.TranDate
        ) as CatTotal
from    #Transactions t1