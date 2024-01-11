CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(50),
    age INTEGER
);

insert into users(name, email, age) 
values ('John Doe', 'john@example.com', 25),
    ('Jane Doe', 'jane@example.com', 30),
    ('Bob Smith', 'bob@example.com', 40);

	
select * from users;

alter table users rename column email to user_email;
select * from users;
alter table users add column phone varchar(50);
select * from users;
alter table users alter column age type smallint;
select * from users;
alter table users drop column phone;
select * from users;
