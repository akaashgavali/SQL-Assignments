select* from Person

alter table person add city varchar(20)

drop table person

create table Person(
personid int primary key identity(1,1),
name varchar(20)not null,
city varchar(20)not null,
 age int not null, 
 country varchar(20)
 
)

insert into Person values ('Amol','Mumbai',27,'uk')
insert into Person values('Ajay','pune',28,'uk')
insert into Person values ('Akash','solapur',21,'uk')
insert into Person values('rohit','pune',23,'uk')
insert into Person values ('ram','Mubai',24,'uk')
insert into Person values('vijay','baramari',25,'uk')

insert into Person(name,city,age,country)values('Tushar','Delhi',26,'uk')

update Person set city='pune',country='India' where personid=1
update person set country='india' where personid=2

select * from Person where personid=2
select name,city,age from Person where personid=5

--alise to col name
select name as FullName,city, age as personAge from person where personid=6

--relational operator
select * from Person where age <27
select * from Person where age >=27
select * from Person where age <>30  -- <> not equal 

--range using between & and operator

select * from Person where age between 24 and 27



--in operator & not in operator
-- in is used to select the possible selection of values

select * from Person where age in (24,27,30)

select * from Person where city in('pune','solapur')
select * from Person where city in('Mumbai','satara')

select * from Person where personid in (1,2,8,6)


select * from Person where age not in (24,27,30)

select * from Person where city not in('Mumbai','pune')
select * from Person where city not in('pune','baramati')

select * from Person where personid not in (1,2,8,6)

select distinct city from Person
select distinct age from Person

--search pattern for text using like clause

select * from Person where name like 'A%'
select * from Person where name like '%H'

select * from Person where name like '%u%'

select * from Person where name like 'A___'

select * from Person where name like '___y'

select * from Person where name like '_u___'

select * from Person where name like '[ap]%'
select * from Person where name like '%[ap]%'

select * from Person where name like '[h-s]%'

select * from Person where name not like '[h-s]%'
select * from Person where name not like '[ap]%'

-- and , or , not operator

select * from Person where city='pune' and age >25

select * from Person where city='pune' or city='delhi'

select * from Person where not city='pune'

update Person set country=null where personid in(9,10)

select * from Person 
order by age

select * from Person 
order by age desc

select * from Person where city='pune'
order by age

select * from Person where city='pune'
order by personid

select * from Person where city='pune'
order by personid desc

--aggregate function in sql
-- count, sum, avg, max,min

select count(personid) as TotalCount from Person

select COUNT(*) as TotalCount from Person -- * consider the duplicate & null values

select COUNT(distinct city) as totalCity from Person

select COUNT(distinct age) as countage from Person

select sum(age) from Person

select avg(age) as avgAge from Person

select max(age) as maxAge from Person where city='pune'

select min(age) as minAge from Person

--group by clause
-- group by statement groups the rows that have same values in to summary
-- group by statement can be used with aggregate function to group the result
-- the name of column that we put in group by that column can be used with select 
--statment

select city,count(personid) as TotalPersons from person
group by city






--group by clause
-- group by statement groups the rows that have same values in to summary
-- group by statement can be used with aggregate function to group the result
-- the name of column that we put in group by that column can be used with select 
--statment

select city,count(personid) as TotalPersons from person
group by city
having count(personid)>4

select name,count(personid) as TotalPersons from person
group by name
having avg(age)<27

select city,count(personid) as TotalPersons from person
group by city
having city in('pune','delhi')

select city,count(personid) as TotalPersons from person
group by city
having city in('pune','delhi')
order by COUNT(personid) desc

select city,count(personid) as TotalPersons from person
group by city
having city in('pune','delhi')
order by city desc














