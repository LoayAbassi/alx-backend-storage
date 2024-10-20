-- reseting valid_email when email changed

create trigger reset_ve
after update on users
for each row
update users
set valid_email = 0
where email = NEW.email;