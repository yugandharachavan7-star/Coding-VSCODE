use Codingalprojects ;

create table PRODUCT(PRO_ID int primary key, 
PRO_NAME varchar(255) not null, 
PRO_PRICE float not null, PRO_COM varchar(255) not null);
insert into PRODUCT(PRO_ID, PRO_NAME, PRO_PRICE, PRO_COM)
values (101, "Mother Board", 3200, "Techpro"), 
(102, "Key Board", 450, "Keymax"),
(103, "Zip Drive", 250, "Datafix"),
(104, "Speaker", 550, "Soundco"),
(105, "Monitor", 5000, "Viewtech"),
(106, "DVD Drive", 900, "Datafix"),
(107, "CD Drive", 800, "Datafix"),
(108, "Printer", 2600, "Printplus"), 
(109, "Refill Cartridge", 350, "Printplus"),
(110, "Mouse", 250, "Keymax");

select *from PRODUCT;

select * from PRODUCT where PRO_PRICE<1000 AND PRO_COM = "Datafix";
select * from PRODUCT where PRO_PRICE<1000 AND (PRO_COM = "Datafix" OR PRO_COM = "Printplus");

select * from PRODUCT where PRO_NAME LIKE "M%" ;
select * from PRODUCT where PRO_NAME LIKE "%Drive";
select * from PRODUCT where PRO_NAME LIKE "%Print%";

select * from PRODUCT where PRO_PRICE = (select MAX(PRO_PRICE) from PRODUCT);
select * from PRODUCT where PRO_PRICE = (select min(PRO_PRICE) from PRODUCT);

update PRODUCT set PRO_PRICE = 600 where PRO_ID = 104;
select * from PRODUCT where PRO_ID = 104;

delete from PRODUCT where PRO_ID = 103;

select * from PRODUCT;