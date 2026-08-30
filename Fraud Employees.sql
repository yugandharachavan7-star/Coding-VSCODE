use Codingalprojects;

create table Employees(e_id int, e_name varchar(255), job varchar(255), fraud_sus varchar(3));
insert into Employees(e_id, e_name, job, fraud_sus)
values(100, "Scott", "Manager", "yes"), (101, "Emma", "Clerk", "yes"), (102, "Jean", "Analyst", "no"), (103, "Peter","Accountant", "no");

select * from Employees;
select * from Employees where fraud_sus = "yes";