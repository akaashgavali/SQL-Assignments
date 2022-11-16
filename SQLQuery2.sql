create table empl(
id int primary key,
email varchar (30) not null,
contact varchar (10) not null
)
--or
create table empl(
id int,
email varchar (30) not null,
contact varchar(10) not null,
constraint PK_emp primary key(id)
)
alter table emp add constraint PK_emp primary key(id)

alter table emp drop constraint PK_emp