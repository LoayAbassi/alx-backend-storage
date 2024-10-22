-- calculates average score for everyone



delimiter //

create procedure ComputeAverageWeightedScoreForUsers()
begin
	
	declare total_weight int default 0;
    declare total_score float default 0;
    declare average float default 0;
    declare user_id int;
    declare done boolean default false;

    declare u_curs cursor for select id from users ;
    declare continue handler for not found set done = true;
    
    
    open u_curs;

    reading_loop : loop
		fetch u_curs into user_id;
        
        if done then 
			leave reading_loop;
		end if;
        
    
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
        
	end loop;
    
end;
//

delimiter ;