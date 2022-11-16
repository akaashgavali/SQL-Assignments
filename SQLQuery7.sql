--Write a statement that will select the City column from the Customers table
create table customer(
customername varchar(20),
adress varchar(20),
city varchar(20),
country varchar(20),
postalcode int,
customerId int
)


insert into customer values('bk','sddf','abc','Norway',121110,32)
insert into customer values('tk','ggjfh','cannes','france',121112,33)
insert into customer values('sk','uiyt','London','uk',12234,23)
insert into customer values('mk','tyug','berlin','germony',12234,23)

delete from customer where city='fsdsa'
delete from customer where adress='asdf'
delete from customer where adress='sasah'





select*from customer



select city from customer
--Select all the different values from the Country column in the Customers table.
select distinct country from customer
--Select all records where the City column has the value "London
 select * from customer where city='London'
 --Use the NOT keyword to select all records where City is NOT "Berlin".
 select * from customer where not city='berlin'
 --Select all records where the CustomerID column has the value 23.
 select * from customer where customerId=23
 --Select all records where the City column has the value 'Berlin' and the PostalCode column has the value 121110.
 select * from customer where  city='Berlin' and postalcode=121110
 --Select all records where the City column has the value 'Berlin' or 'London'.
  select * from customer where  city='Berlin' or city='London'
 -- Select all records from the Customers table, sort the result alphabetically by the column City
 select*from customer order by city
 --Select all records from the Customers table, sort the result reversed alphabetically by the column City.
 select*from customer order by city desc
 --Select all records from the Customers table, sort the result alphabetically, first by the column Country, then, by the column City
 select*from customer order by country ,city
 --Select all records from the Customers where the PostalCode column is empty.
 select*from customer where postalcode is null
 --Select all records from the Customers where the PostalCode column is NOT empty.
 select*from customer where postalcode is not null
 --Set the value of the City columns to 'Oslo', but only the ones where the Country column has the value "Norway".
update customer set city='oslo' where country='Norway'
--Delete all the records from the Customers table where the Country value is 'Norway'.
delete from customer where country='Norway'
--Use the MIN function to select the record with the smallest value of the Price column.
select min(productprice)from products
--Use an SQL function to select the record with the highest value of the Price column.
select max(productprice) from products
--Use the correct function to return the number of records that have the Price value set to 20
select count (*)from products where productprice='20'
--Use an SQL function to calculate the average price of all products.
select avg(productprice)from products
--Use an SQL function to calculate the sum of all the Price column values in the Products table
select sum(productprice)from products
--Select all records where the value of the City column starts with the letter "a".
select* from customer where city like 'a%'
--Select all records where the value of the City column ends with the letter "a".
select* from customer where city like '%a'
--Select all records where the value of the City column contains the letter "a".
select* from customer where city like '%a%'
--Select all records where the value of the City column starts with letter "a" and ends with the letter "b".
select* from customer where city like 'a%b'
--Select all records where the value of the City column does NOT start with the letter "a".
select* from customer where city not like '%a'
--Select all records where the second letter of the City is an "a".
select* from customer where city like '_a%'
--Select all records where the first letter of the City is an "a" or a "c" or an "s".
select* from customer where city like '[acs]%'
--Select all records where the first letter of the City starts with anything from an "a" to an "f".
select* from customer where city like '[a_f]%'
--Select all records where the first letter of the City is NOT an "a" or a "c" or an "f".
select* from customer where city like '[!acf]%'
--Use the IN operator to select all the records where the Country is either "Norway" or "France".
select* from customer where country in('Norway','france')
--Use the IN operator to select all the records where Country is NOT "Norway" and NOT "France".
select* from customer where country not in('Norway','france')
--Use the BETWEEN operator to select all the records where the value of the Price column is between 10 and 20


create table products(
productId int primary key identity(1,1),
productprice int,
productname varchar(20)
)

insert into products values(9,'pen')
insert into products values(24,'pen')
insert into products values(32,'pen')
insert into products values(6,'pen')
insert into products values(19,'Geitost')
insert into products values(18,'pen')
insert into products values(17,'pen')
insert into products values(16,'pavlova')
insert into products values(15,'pen')
insert into products values(13,'pen')
insert into products values(12,'pen')
insert into products values(11,'pen')
insert into products values(10,'pen')

select * from products where productprice between 10 and 20
--Use the BETWEEN operator to select all the records where the value of the Price column is NOT between 10 and 20.
select * from products where productprice  not between 10 and 20
--Use the BETWEEN operator to select all the records where the value of the ProductName column is alphabetically between 'Geitost' and 'Pavlova'.
select * from products where productname between 'Geitost'and'pavlova'
--When displaying the Customers table, make an ALIAS of the PostalCode column, the column should be called Pno instead.
SELECT customername,adress,postalcode as pno from customer
--When displaying the Customers table, refer to the table as Consumers instead of Customers.
select *from customer as consumer
--List the number of customers in each country.
SELECT count(customerId),country from customer group by country
--List the number of customers in each country, ordered by the country with the most customers first.
select count(customerId),country from customer group by country order by count(customerId)desc

--Write the correct SQL statement to create a new database called testDB.
Create database testDB
--Write the correct SQL statement to delete a database named testDB
Drop database testDB


CREATE TABLE Persons
 (
  PersonID int,
  LastName varchar(25),
  FirstName varchar(25),
  Address varchar(25),
  City varchar(25) 
)
--Add a column of type DATE called Birthday in Persons table
alter table Persons add birthday date

--Delete the column Birthday from the Persons table
alter table Person drop column Birthday




















 




 





