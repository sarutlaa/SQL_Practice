-- Understanding joins
CREATE TABLE employees (
  id INT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  department VARCHAR(50) NOT NULL
);

CREATE TABLE salaries (
  id INT PRIMARY KEY,
  employee_id INTEGER NOT NULL,
  salary INTEGER NOT NULL
);

INSERT INTO employees (id,name, department)
VALUES (1,'John Smith', 'Sales'),
       (2,'Jane Doe', 'Marketing'),
       (3,'Bob Brown', 'Sales'),
       (5,'Sarah Anderson', 'Marketing');

INSERT INTO salaries (id,employee_id, salary)
VALUES (1, 1, 50000),
       (2, 2, 60000),
       (3, 3, 70000),
	   (4, 4, 80000);
		
SELECT e.name, s.salary
FROM employees e
INNER JOIN salaries s ON e.id = s.employee_id;


SELECT *
FROM employees
full outer JOIN salaries ON employees.id = salaries.employee_id;


SELECT *
FROM employees
cross join salaries













		 
		 
		 