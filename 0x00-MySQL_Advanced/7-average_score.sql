-- cretes a procedure that computes average score of a user

delimiter //
create procedure ComputeAverageScoreForUser(in user_id int)
begin
	update users 
    set average_score = (select avg(score) from corrections c where c.user_id = user_id) 
    where id = user_id;
end; //

delimiter ;