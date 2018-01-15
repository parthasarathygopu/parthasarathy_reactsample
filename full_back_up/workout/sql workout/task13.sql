drop procedure sp;
drop table tb;
CREATE PROCEDURE sp(@num INT)
as
BEGIN

declare @x int,@y int,@z int;
create table tb(  
NationalIDNumber int  , 
LoginID varchar (50),
BusinessEntityID int ,
  JobTitle varchar(50) ,
BirthDate date ,
MaritalStatus varchar(2),
pageno int 
   )
set @x=1;
set @y=1;
Set @z= 1;
while (@z < = (select COUNT(*)from humanresources.Employee) )
begin 
set @y = (5*@x)-4;
while (@y<=5*@x)
begin
insert into tb (NationalIDNumber , 
LoginID,
BusinessEntityID,
  JobTitle ,
BirthDate ,
MaritalStatus, pageno ) 
SELECT NationalIDNumber,LoginID,BusinessEntityID,JobTitle,BirthDate,MaritalStatus,@x
FROM humanresources.Employee where BusinessEntityID=@y;
set @y=@y+1;
end;
set @x=@x+1;
set @z=@z+5;
end;
select * from tb where pageno = @num;
end;