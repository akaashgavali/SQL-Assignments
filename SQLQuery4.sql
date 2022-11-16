create table Dept(
deptid int primary key,
deptname varchar(10)
)

create table emple(
Id int primary key,
email  varchar(30) not null,
contact varchar(10) not null,
deptid int,
constraint FK_emp_dept foreign key(deptid) references dept(deptid)
)


alter table emple add constraint FK_emp_dept foreign key(deptid) references dept(deptid)

alter table emple drop constraint FK_emp_dept

