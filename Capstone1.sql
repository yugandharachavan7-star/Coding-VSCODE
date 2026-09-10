create database CapstoneProject;
use CapstoneProject;

create table if not exists Salesman(Salesman_id varchar(20) primary key, S_name varchar(20),
S_city varchar(20), Commission varchar(20));
insert into Salesman( Salesman_id, S_name, S_city, Commission)
Values("5001","James Hoog","New York","0.15"),

("5002","Nail Knite","Paris","0.13"),

("5005","Pit Alex","London","0.11"),

("5006","Mc Lyon","Paris","0.14"),

("5007","Paul Adam","Rome","0.13"),

("5003","Lauson Hen","San Jose","0.12");
select*from Salesman;

create table if not exists Customer(Customer_id varchar(20) primary key, C_name varchar(20), 
C_city varchar(20), grade varchar(20), Salesman_id varchar(20));
insert into Customer(Customer_id, C_name, C_city, grade, Salesman_id)
values("3002","nick rimando","new york","100","5001"),

("3007","brad davis","new york","200","5001"),

("3005","graham zusi","california","200","5002"),

("3008","julian green","london","300","5002"),

("3004","fabian johnson","paris","300","5006"),

("3009","geoff cameron","berlin","100","5003"),

("3003","jozy altidor","moscow","200","5007"),

("3001","brad guzan","london","100","5005");

select*from Customer;

Create table Orders(Order_no varchar(30) primary key, Purchase_amt varchar(30), Order_date varchar(20), 
Customer_id varchar(30), Salesman_id varchar(30));
insert into Orders(Order_no, Purchase_amt, Order_date, Customer_id, Salesman_id)
values("70001","150.5","2012-10-05","3005","5002"),

("70009","270.65","2012-09-10","3001","5001"),

("70002","65.26","2012-10-05","3002","5003"),

("70004","110.5","2012-08-17","3009","5007"),

("70007","948.5","2012-09-10","3005","5005"),

("70005","2400.6","2012-07-27","3007","5006");

select * from Orders;

select s.S_name, s.S_city, c.C_name, c.C_city
from Salesman as s join Customer as c on s.S_city = c.C_city;
select c.C_name, s.S_name from Customer as c 
join Salesman as s on c.Salesman_id = s.Salesman_id;
select o.Order_no, c.C_city, s.S_city 
from Customer as c join Orders as o
on c.Customer_id = o.Customer_id 
join Salesman as s on s.Salesman_id = o.Salesman_id;

select o.Order_no, c.C_name
from Orders as o join Customer as c
on o.Customer_id = c.Customer_id;