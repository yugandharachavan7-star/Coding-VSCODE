use capstoneproject;
create table if not exists music_artists(s_no int, artist_name varchar(30), company varchar(30), 
debut_year int, members varchar(10), industry varchar(30));

insert into music_artists(s_no, artist_name, company, debut_year, members, industry)
values(1, "SEVENTEEN", "PLEDIS", 2015, "13", "K-Pop"), (2, "TXT", "BIGHIT", 2019, "5", "K-pop"),
(3, "BOYNEXTDOOR", "KOZ", 2023, "6", "K-pop"), (4, "Arijit Singh", "", 2011, "solo", "Bollywood"),
(5, "LE SSERAFIM", "SOURCE MUSIC", 2022, "5", "K-pop"), (6, "ITZY", "JYP", 2019, "5", "K-pop"), 
(7, "Sunidhi Chauhan", "", 1996, "solo", "Bollywood"), (8, "Vishal-Shekhar", "", 2003, "2", "Bollywood");

select * from music_artists;
select artist_name, company from music_artists;
select * from music_artists where industry = "Bollywood";
select * from music_artists where artist_name LIKE "%S%";
select * from music_artists where artist_name LIKE "S%";
select * from music_artists where debut_year between 2015 and 2020;
select * from music_artists where company IN ("PLEDIS", "BIGHIT");
select * from music_artists order by debut_year;
select * from music_artists order by debut_year desc limit 4;
select * from music_artists order by artist_name;
select count(*) as no_of_m_a from music_artists;
select avg(debut_year) as avg_debut_y from music_artists;
select count(*) as no_of_b_a from music_artists where industry = "Bollywood";
select count(*) artists_before_2020 from music_artists where debut_year < 2020;
select * from music_artists where company is null or company <> "";