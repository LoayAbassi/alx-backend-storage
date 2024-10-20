-- reseting valid_email when email changed

delimiter //
create trigger reset_ve
before update on users
for each row
begin
	if OLD.email != NEW.email then
		set NEW.valid_email = 0;
	end if;
end;
//
delimiter ;