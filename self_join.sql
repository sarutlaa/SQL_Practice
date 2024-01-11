-- Self Join
CREATE TABLE employees (
  id serial PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  manager_id INT
);

insert into employees (name, manager_id)
values ('John', NULL),
('Jane', 1),
('Bob', 2),
('Alice', 2),
('Mike', 3);

select * from employees; 

select e1.id, e1.name, e2.name from employees e1
left join employees e2 on e1.manager_id = e2.id;

