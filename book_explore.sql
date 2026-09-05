use codingalprojects;

CREATE TABLE IF NOT EXISTS book (

book_id INTEGER PRIMARY KEY,

title TEXT NOT NULL,

genre TEXT NOT NULL,

rating REAL NOT NULL,

pages INTEGER NOT NULL,

pub_year INTEGER NOT NULL

);

INSERT INTO book VALUES (1, 'Dragon Quest', 'Fantasy', 9.2, 312, 2021);

INSERT INTO book VALUES (2, 'Code Wizards', 'Sci-Fi', 8.5, 280, 2020);

INSERT INTO book VALUES (3, 'Ocean Deep', 'Adventure', 7.8, 195, 2022);

INSERT INTO book VALUES (4, 'Star Rangers', 'Sci-Fi', 9.5, 340, 2019);

INSERT INTO book VALUES (5, 'Forest Secrets', 'Fantasy', 8.1, 228, 2023);

INSERT INTO book VALUES (6, 'Robot City', 'Sci-Fi', 7.2, 260, 2021);

INSERT INTO book VALUES (7, 'Time Jumpers', 'Adventure', 8.9, 175, 2022);

INSERT INTO book VALUES (8, 'Magic Academy', 'Fantasy', 9.0, 398, 2020);

SELECT * FROM book;

select title, rating from book order by rating desc limit 3 offset 4;
select * from book order by pub_year desc limit 3;
select title as Top_rated, rating from book order by rating desc limit 5;
select genre, avg(rating) as Avg_rating, sum(pages) as Total_pages, count(distinct pub_year) as Countyear 
from book group by genre;
select genre, sum(pages) as Total_pages from book group by genre having Total_pages<500;