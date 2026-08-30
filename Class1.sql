use Codingalprojects;
create table Student(ID int, Name varchar(255), Age int, Address varchar(255));

insert into Student( ID, Name, Age, Address)
values( 1, "Shreya", 20, "Delhi"), (2, "Priya", 18, "Pune"), (3, "Ram", 17,"Punjab"), (4, "Pooja", 18, "Haryana");

select * from Student;
select* from Student where Age= 18 AND Address= "Pune";
select * from Student where Name= "Ram" OR Age<19 ; 
select * from Student where Age = 18 AND (Name= "Ram" OR "Pooja");

create table Products( pro_ID int, pro_name varchar(250), price float);
insert into Products (pro_ID, pro_name, price)
values (1, "Battery", 28.6), (2, "Chess Game", 50), (3, "Washing Machine", 1800), (4, "Safety pin", 2.3);
select * from Products;
select * from Products where price = (SELECT MAX(price) from Products);
select * from Products where pro_name LIKE "_a%" ;