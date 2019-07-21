create database school3

use school3

alter database school3 modify name=school

-- drop database school

create table teachers
(
	id int,
	name varchar(30),
	[Contact number] numeric(10,0)
)
select * from teachers

insert into teachers values(101,'Ramprasad',9801200111),(102,'Hariprasad',9801200110)

-- Alter table

create table SciFi
(
id int,
name int
)

insert into SciFi values(101,'Hulk')
alter table Scifi alter column name varchar(30)

drop table Scifi
select *from Scifi

insert into SciFi values(102,'Thor'),(103,'Iron Man'),(104,'Dr. Strange'),(105,'Captain America')

alter table Scifi add age int

update Scifi set age = 42 where id=101
update Scifi set age = 45 where name = 'Thor'
update Scifi set age = 100 where age is null
update Scifi set age = 200

delete from Scifi where id=104

select * from Scifi
alter table Scifi drop column age

truncate table Scifi

drop table Scifi

create table demo(id int, name varchar(30))

exec sp_rename 'demo','demon'

select *from demon

exec sp_rename 'demon.id','code','column'

-- default, notnull,null,check,unique



create table students
(
	id int unique not null,
	name varchar(30) not null,
	[address] varchar(60) null,
	fee money not null default(500),
	age int not null check(age>21)
)
select *from students
insert into students values(101,'ram','new baneswor',300,25),(102,'shyam','sankhamul',700,24)

insert into students(id,age) values(104,22)

-- identity pk fk
create table enroll
(
	id int identity(100,1) primary key,
	name varchar(30)
)
create table hackthon
(
	id int foreign key references enroll(id),
	team varchar(30)
)
insert into enroll(name) values('Ram'),('Hari'),('Shyam'),('Sita'),('Gita')
select *from enroll
insert into hackthon values(100,'Killer'),(101,'Avengers'),(101,'Hunters')
select *from hackthon
insert into hackthon values(105,'killer')

