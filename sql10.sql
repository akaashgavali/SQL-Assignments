select * from employees



create proc SP_select_employees(
@id int
)
as begin
select * from employees where id=@id
return 
end

exec SP_select_employees
@id=9
create proc SP_update_employees(
@id int
)
as begin
update employees set city='mumbai' where id=@id
return 
end

exec SP_update_employees
@id=10


create proc SP_delete_employees(
@id int
)
as begin
delete from employees where id=@id
return 
end

exec SP_delete_employees
@id=8

select*from dept

create proc SP_update_dept(
@deptname varchar(20),
@deptid int
)
as begin
update dept set deptname=@deptname where deptid=@deptid
return
end

exec SP_update_dept
@detpname='Sales'
@deptid=4

create proc SP_delete_dept(
@deptid int
)
as begin
delete from dept where deptid=@deptid
return
end

exec SP_delete_dept
@deptid=5

