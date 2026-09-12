use capstoneproject;
create table if not exists Restaurant(name Text, neighbourhood text, cuisine text, review real,
price text, health text);
insert into Restaurant(name, neighbourhood, cuisine, review, price, health)
values('Peter', 'Brooklyn', 'Steak', 4.4, '$$$$', 'A'),
('Jongro', 'Midtown', 'Korean', 3.5, '$$', 'A'),
('Pocha', 'Midtown', 'Pizza', 4.0, '$$$', 'B'),
('Lighthouse', 'Queens', 'Chinese', 3.9, '$', 'A'),
('Minca', 'Downtown', 'American', 4.6, '$$$', ''),
('Marea', 'Chinatown', 'Chinese', 3.0, '$$', ''),
('Dirty Candy', 'Uptown', 'Italian', 4.9, '$$$$', 'B'),
('Di Fara Pizza', 'Brooklyn', 'Pizza', 3.8, '$$', 'A'),
('Golden Unicorn', 'Uptown', 'Italian', 3.8, '$$', 'A');

select * from Restaurant;
select distinct neighbourhood from Restaurant;
select distinct cuisine from Restaurant;
select * from Restaurant where cuisine = "Chinese";
select * from Restaurant where review >= 4;
select * from Restaurant where cuisine = "Italian" AND (price = "$$" OR price = "$$$");
select * from Restaurant where price = "$$$";
select * from Restaurant where name LIKE "%Candy%";
select * from Restaurant where neighbourhood = "Midtown" OR neighbourhood= "Downtown" 
OR neighbourhood = "Chinatown";
SELECT *FROM Restaurant
WHERE neighbourhood IN ('Midtown', 'Downtown', 'Chinatown');
select * from Restaurant where health is null OR health = "";
select * from Restaurant order by review desc limit 4;