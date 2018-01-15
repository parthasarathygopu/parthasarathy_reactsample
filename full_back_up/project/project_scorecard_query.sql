create table Project_details(Projectid int IDENTITY(1,1),Projectcode int UNIQUE,Projectname varchar(200));
create table Question_scope(Scopeid int IDENTITY(1,1), Scopename varchar(200));
create table Project_scope_mapping(Projectid int,Qstatus varchar(10),Qscore int, Qweight int, Qtotal int ,Revieweddate Date NOT NULL ,Scopeid int);
create table Project_summary (Projectid int,Revieweddate Date,Projectscore int);



insert into Project_details values(10521 ,'Active Bench (Internal)');
insert into Project_details values(10522 ,'Darden Restaurants');
insert into Project_details values(10523 ,'Mall of America');
insert into Project_details values(10524 ,'Walgreen Co.');
insert into Project_details values(10525 ,'Metlife Japan App');
insert into Project_details values(10526 ,'Bayer Business & Technology Services');
insert into Project_details values(10527 ,'Alliance Data');
insert into Project_details values(10528 ,'Dicks Sporting Goods Inc');
insert into Project_details values(10529 ,'Samsung Electronics Co.,LTD');
insert into Project_details values(10530 ,'JPMorgan Chase Bank, N.A.');
insert into Project_details values(10531 ,'Loreal Paris Global');
insert into Project_details values(10532 ,'Santander Bank');
insert into Project_details values(10533 ,'Digital GTI Support Engagement');
insert into Project_details values(10534 ,'VWR International, LLC');
insert into Project_details values(10535 ,'Boots International Limited');
insert into Project_details values(10536 ,'Yamaha Canada Music');
insert into Project_details values(10537 ,'Sentara Healthcare');
insert into Project_details values(10538 ,'Credit Suisse Securities LLC');
insert into Project_details values(10539 ,'Valvoline');
insert into Project_details values(10540 ,'J.C.Penney Corporation, Inc');
insert into Project_details values(10541 ,'Cengage Learning');
insert into Project_details values(10542 ,'The Lincoln National Life Insurance Company');
insert into Project_details values(10543 ,'Boots International Limited');
insert into Project_details values(10544 ,'Bayer Business & Technology Services LLC');
insert into Project_details values(10545 ,'Neiman Marcus Group, Inc');
insert into Project_details values(10546 ,' Bloomsbury Publishing PLC');
insert into Project_details values(10547 ,' Bass Pro LLC');
insert into Project_details values(10548 ,'MetLife - Chatbots Support');
insert into Project_details values(10549 ,'NBTY Global Inc');
insert into Project_details values(10550 ,'Panasonic Corporation of North America ');
select * from Project_details;


insert into Question_scope values('Proposed Staffing Plan and people availability');
insert into Question_scope values('Meetings: Customer Stand Up');
insert into Question_scope values('Meetings: Customer Demo');
insert into Question_scope values('Knowledge Transfer Meeting and Documentation');
insert into Question_scope values('Staffing plan exist with appropriate skill set and location assigned?');
insert into Question_scope values('Program plan exists and up to date?');
insert into Question_scope values('Use Case Documentation exists per format we have defined');
insert into Question_scope values('Dashboard is set up per the acceptance criteria defined in use case docs?');
insert into Question_scope values('If we are in bugs fixing, is the plan setup correctly for the bugs?');
insert into Question_scope values('If we have entered the QA phase, is the test report available?');


select * from Question_scope;