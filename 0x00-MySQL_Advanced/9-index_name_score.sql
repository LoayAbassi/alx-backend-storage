-- creates index on name and score
create index idx_name_first_score on names(name(1),score);