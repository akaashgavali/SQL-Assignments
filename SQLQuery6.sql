select *from dept
select * from employees

create table dept(
deptid int primary key identity(1,1),
deptname varchar(20)
)

create table employees(
id int primary key identity(1,1),
empname varchar(20),
city varchar(20),
salary decimal,
deptid int,
constraint fk_employees_dept foreign key(deptid) references dept(deptid)
)

insert into dept values('HR')
insert into dept values('Development')
insert into dept values('testing')
insert into dept values('Sales')

insert into employees values('Amol','Mumbai',75000,4)
insert into employees values('Chetan','Pune',35000,1)
insert into employees values('Pratik','Mumbai',32000,2)
insert into employees values('Rahul','Pune',45000,3)
insert into employees values('Rohan','Nagpur',25000,1)
insert into employees values('Suraj','Nagpur',37000,2)
insert into employees values('Rajesh','Nashik',23000,3)
insert into employees values('Kishor','Mumbai',78000,2)
insert into employees values('Ajay','Pune',21000,4)
insert into employees values('Tushar','Delhi',56000,4)

alter table employees add managerid int
update employees set managerid =1 where id in(2,3)
update employees set managerid =6 where id in(4,5)
update employees set managerid =8 where id in(7,9,10)

update employees set deptid=null where id=10

select e.*,d.deptname  from employees e
inner join dept d on d.deptid=e.deptid

select e.*,d.deptname  from employees e
left join dept d on d.deptid=e.deptid

select e.*,d.deptname  from employees e
right join dept d on d.deptid=e.deptid

select e.*,d.deptname  from employees e
full join dept d on d.deptid=e.deptid

-- self join

select e.empname as EmployeesName, m.empname as Managername
from employees e, employees m
where m.id=e.managerid

--Sub query in SQL

--Display the emp who belongs to hr dept
Select * from employees where deptid =(select deptid from dept where deptname='HR')

select * from employees where salary=
(select max(salary) from employees)

select * from employees where salary=(
select max(salary) from employees where salary <>
(
select max(salary) from employees
)
)

-- display emp details whose salary is > avg salary of all emps
select * from employees where salary=
(select avg(salary) from employees)


-- display the emp who is taking higher salary than empid =5



select*from employees where salary >
(select salary from employees where id=5)


-- display emp who have salary > avg salary of sales dept



select*from employees where salary>
(select avg(salary) from employees where deptid=
(select deptid from  dept where deptname in ('Development')))


-- display emp who salary > avg salary of each dept


select * from employees where salary <all
(select avg(salary) from employees
group by deptid)






