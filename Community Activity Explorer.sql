USE codingalprojects;

create table community_activity(a_ID int primary key, activity_name varchar(300) not null, 
activity_type varchar(300), day varchar(300), participants int, 
duration_mins float);

insert into community_activity(a_ID, activity_name, activity_type, day, participants, duration_mins)
values(1, "Yoga Class", "Wellness", "Monday", 18, 60), (2, "Art Workshop", "Creativity", "Tuesday",12, 60),
(3, "Chess Club", "Games", "Wednesday", 16, 75), (4, "Dance Practice", "Wellness", "Thursday", 20, 60),
(5, "Coding Club", "Learning", "Friday", 14, 90), (6, "Book Circle", "Learning", "Saturday", 10, 60),
(7, "Painting Club", "Creativity", "Saturday", 15, 75), (8, "Football Practice", "Sports", "Sunday", 22, 90),
(9, "Meditation Hour", "Wellness", "Sunday", 13, 45);

select * from community_activity order by participants;
select * from community_activity order by participants desc;
select activity_name, activity_type, participants from community_activity order by activity_type asc,
participants desc;

select activity_name, participants from community_activity order by participants desc limit 3;
select activity_name, duration_mins from community_activity order by duration_mins limit 5;

select activity_type, count(*) as activity_count from community_activity group by activity_type;

select activity_type, sum(participants) as Tot_participants, avg(duration_mins) as avg_duration
from community_activity group by activity_type;

select activity_type, count(*) as activity_count from community_activity group by activity_type
having count(*) > 2;
select activity_type, avg(participants) as avg_participants from community_activity
group by activity_type having avg_participants > 15;
