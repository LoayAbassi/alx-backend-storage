-- creates a procedure for adding bonus

delimiter //

create procedure AddBonus(in user_id int,in project_name varchar(255),in score int)
begin
	if not exists (select name from projects where name = project_name) then
		insert into projects(name) values (project_name);
	end if;
    insert into corrections
    values(user_id,(select id from projects where name = project_name),score);
end;//

delimiter ;