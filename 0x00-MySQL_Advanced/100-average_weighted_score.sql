-- creating a procedure for avg user score

drop procedure if exists ComputeAverageWeightedScoreForUser;
delimiter //

create procedure ComputeAverageWeightedScoreForUser(user_id int)
begin
	declare total_weight int default 0;
    declare total_score float default 0;
    declare average float default 0;
    
    select sum(c.score * p.weight) into total_score
    from corrections c join projects p on c.project_id = p.id
    where c.user_id = user_id;
    
    select sum(p.weight) into total_weight from corrections c 
    join projects p on c.project_id = p.id
    where user_id = c.user_id;
    
    if total_weight >0 then
    set average = total_score / total_weight;
    else
    set average = 0;
    end if;
    
    update users set average_score = average where id = user_id;
    
end;
//

delimiter ;