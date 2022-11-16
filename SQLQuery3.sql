create table emp(
Id int primary key,
email  varchar(30) not null,
contact varchar(10) not null,
age int check(age>18)
)
--or
create table employee(
Id int primary key,
email  varchar(30) not null,
contact varchar(10) not null,
age int,
constraint check_age check(age>18)
)

alter table employee add constraint check_age check(age>18)

alter table employee drop constraint check_age

