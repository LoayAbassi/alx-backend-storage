-- creates a safe div function
delimiter //
create function SafeDiv (a int,b int) returns float deterministic
begin
	if b = 0 then 
		return 0;
	else
		return a/b;
	end if ; 
end ; //

delimiter ;