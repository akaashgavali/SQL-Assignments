create table emp(
email varchar(30)not null,
contact varchar(10)not null
)
alter table emp alter column email varchar(30)not null

alter table emp add unique(email)

--or

alter table emp add unique(email,contact)

--or
alter table emp add constraint un_emp unique(email)
--or
alter table emp add constraint un_emp unique(email,contact)

alter table emp drop constraint un_emp

sp_help emp

create table Dept(
deptid int primary key,
deptname varchar(10)
)

