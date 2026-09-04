USE codingalprojects;
create table Marine_observation (ID int primary key, animal_name varchar(100) not null, 
animal_group varchar(100) not null, habitat varchar(255),depth_m float, estimated_weight_kg float not null);

insert into Marine_observation(ID, animal_name, animal_group, habitat, depth_m, estimated_weight_kg)
values(1, "Blue Whale", "Mammal", "Open Ocean", 30, 120000.0), (2, "Bottlenose Dolphin", "Mammal", "Open Ocean", 15, 250.0),
(3, "Green Sea Turtle", "Reptile", "Coral Reef", 10, 160.0), (4, "Clownfish", "Fish", "Coral Reef", 5, 0.3),
(5, "Hammerhead Shark", "Fish", "Open Ocean", 70, 230.0), (6, "Giant Octopus", "Mollusc", "Seabed", 40, 25.0),
(7, "Manta Ray", "Fish", "Open Ocean", 25, 1350.0), (8, "Star Fish", "Echinoderm", "Seabed", 20, 0.5);

select * from Marine_observation;

select distinct animal_group from Marine_observation;
select count(distinct animal_group) as Count_distinctAnimalgrps from Marine_observation;
select count(ID) as Count_openocean from Marine_observation where habitat = "Open Ocean";
select sum(estimated_weight_kg) as Total_Weight from Marine_observation;
select avg(depth_m) as Average_depth from Marine_observation;
select count(ID) as Count, count(distinct animal_group) as Count_distinctAnimalgrps,
sum(estimated_weight_kg) as Total_weight, avg(depth_m) as Average_depth from Marine_observation;

select ID, animal_name, animal_group, habitat, depth_m, estimated_weight_kg from Marine_observation
where estimated_weight_kg = (select max(estimated_weight_kg) from Marine_observation);
select ID, animal_name, animal_group, habitat, depth_m, estimated_weight_kg from Marine_observation
where depth_m> 30;