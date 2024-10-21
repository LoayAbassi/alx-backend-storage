-- creates index on the 1st letter of names(name)
-- create index idx_name_first on names((left(name,1)));
-- works but slower cz it'll have to call left() function
create index idx_name_first on names(name(1));