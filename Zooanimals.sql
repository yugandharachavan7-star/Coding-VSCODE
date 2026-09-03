use Codingalprojects;

CREATE TABLE IF NOT EXISTS zoo_animal (

animal_id INTEGER PRIMARY KEY,

name TEXT NOT NULL,

species TEXT NOT NULL,

age_years INTEGER NOT NULL,

weight_kg REAL NOT NULL

);

INSERT INTO zoo_animal VALUES (1, 'Lion', 'Big Cat', 5, 190.0);

INSERT INTO zoo_animal VALUES (2, 'Tiger', 'Big Cat', 3, 220.0);

INSERT INTO zoo_animal VALUES (3, 'Elephant', 'Pachyderm', 12, 4500.0);

INSERT INTO zoo_animal VALUES (4, 'Giraffe', 'Ungulate', 7, 800.0);

INSERT INTO zoo_animal VALUES (5, 'Penguin', 'Bird', 2, 5.0);

INSERT INTO zoo_animal VALUES (6, 'Panda', 'Bear', 6, 95.0);

INSERT INTO zoo_animal VALUES (7, 'Cheetah', 'Big Cat', 4, 55.0);

INSERT INTO zoo_animal VALUES (8, 'Rhino', 'Pachyderm', 9, 2300.0);

select * from zoo_animal;
select distinct species from zoo_animal;
select count(name) as Count from zoo_animal;
select count(name) as BigCat_count from zoo_animal where species = "Big Cat";
select sum(weight_kg) as Total_weight, avg(age_years) as Avg_age from zoo_animal;
select name, age_years, weight_kg from zoo_animal where weight_kg = (select min(weight_kg) from zoo_animal);
select count(name) as Count, sum(weight_kg) as Total_weight, avg(weight_kg) as Avg_weight, avg(age_years) as Avg_age, max(weight_kg) as Max_weight, min(weight_kg) as Min_weight,
max(age_years) as Oldest, min(age_years) as Youngest from zoo_animal;