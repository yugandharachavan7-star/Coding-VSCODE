use capstoneproject;
CREATE TABLE movies (movie_id int primary key, title varchar(100), genre varchar(50), director varchar(50),
language varchar(50), country varchar(50), release_year int, duration_min int, rating float,
budget_million float);

insert into movies(movie_id, title, genre, director, language, country, release_year, duration_min, rating,
budget_million)
values(1, 'Iron Man', 'Action', 'Jon Favreau', 'English', 'United States', 2008, 126, 7.9, 150),
(2, 'Avengers: Endgame', 'Action', 'Russo Brothers', 'English', 'United States', 2019, 181, 8.4, 356),
(3, '10 Things I Hate About You', 'Romance', 'Gil Junger', 'English', 'United States', 1999, 97, 7.4, 30),
(4, 'Queen', 'Comedy', 'Vikas Bahl', 'Hindi', 'India', 2013, 146, 8.1, 1.25),
(5, 'Interstellar', 'Sci-Fi', 'Christopher Nolan', 'English', 'United States', 2014, 169, 8.7, 165),
(6, 'Your Name', 'Animation', 'Makoto Shinkai', 'Japanese', 'Japan', 2016, 106, 8.4, 5),
(7, 'Train to Busan', 'Horror', 'Yeon Sang-ho', 'Korean', 'South Korea', 2016, 118, 7.6, 8.5),
(8, 'English Vinglish', 'Drama', 'Gauri Shinde', 'Hindi', 'India', 2012, 134, 7.8, 0.31),
(9, 'Inside Out 2', 'Animation', 'Kelsey Mann', 'English', 'United States', 2024, 96, 7.5, 200);

select * from movies;
select * from movies where title LIKE "%You%";
select distinct genre from movies;
select distinct language, country from movies;
select * from movies where release_year>2010 AND rating>7;
select * from movies where country= "United States";
select * from movies where genre = "Action" or genre = "Sci-Fi";
select * from movies where title LIKE "I%" AND (language="English" OR language = "Hindi") AND release_year>2010;
select * from movies order by rating desc;
select * from movies order by genre, release_year desc; 
select * from movies order by duration_min desc limit 5;
select genre, count(*) as tot_mov_gen from movies group by genre;
select language, avg(rating) as avg_rating from movies group by language;
select country, sum(duration_min) as tot_duration from movies group by country having tot_duration>200 
order by tot_duration desc;
select distinct director from movies where title LIKE "%in%" AND rating>=7.5 AND release_year BETWEEN 2000 AND 2020
order by director;