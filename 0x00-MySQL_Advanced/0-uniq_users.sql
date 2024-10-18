-- creating a unique user table

create table if not exists users(
    id INT AUTO_INCREMENT PRIMARY KEY not null,
    email VARCHAR(255) UNIQUE NOT NULL,
    name VARCHAR(255)

);