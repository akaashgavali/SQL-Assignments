select * from employees
-- substring

select SUBSTRING(empname,1,3) as Tempname from employees where id=1

--concat
select CONCAT(empname,' ',city) as tempcol from employees
--len
select empname,len(empname) as LengthOFName from employees
--upper
select UPPER(empname) from employees
select LOWER(empname) from employees
--' Amol'
select LTRIM(empname) from employees
--'Amol  '
select RTRIM(empname) from employees
--'  Amol  '
select TRIM(empname) from employees

select ROUND(salary,2) as Salary from employees

