-- triggering item table whenever changed
-- by orders table

create trigger update_item
after insert on orders
for each row 
update items
set quantity = quantity - NEW.number
where name = NEW.item_name;
