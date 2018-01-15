create function sort31(@z  varchar(30)) 
RETURNS @tb table
(  
NationalIDNumber int , 
LoginID varchar(50),
BusinessEntityID int,
  JobTitle varchar(50),
BirthDate date,
MaritalStatus varchar(2)
   )
as
begin
insert into @tb (NationalIDNumber , 
LoginID,
BusinessEntityID,
  JobTitle ,
BirthDate ,
MaritalStatus )
Select  [NationalIDNumber],
[LoginID],
[BusinessEntityID],
[JobTitle],
[BirthDate],
[MaritalStatus] from HumanResources.Employee order by case   when @z = 'NationalIDNumber' THEN NationalIDNumber END asc ,
  case when @z = 'LoginID' then LoginID end asc ,
  case when @z = 'JobTitle' then JobTitle end asc,
  case when @z = 'BirthDate' then BirthDate end asc ,
  case when @z = 'MaritalStatus' then MaritalStatus end asc
return ;
end;

