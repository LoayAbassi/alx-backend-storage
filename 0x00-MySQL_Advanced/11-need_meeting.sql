-- creating a view need_meeting
create view need_meeting  as
select * from students
where score <80 and 
(last_meeting is null or last_meeting < DATE_ADD(NOW(), INTERVAL -1 MONTH));