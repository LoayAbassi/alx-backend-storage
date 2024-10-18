-- 1. In and not out

create table if not exists users(
    id integer AUTO_INCREMENT primary key not null ,
    email VARCHAR(255) UNIQUE not null,
    name VARCHAR(255) ,
    country enum("US","CO","TN") not null default "US"

);