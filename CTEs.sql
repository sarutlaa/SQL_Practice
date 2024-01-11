-- Common Table Expressions - Creating temp tables for subqueries

CREATE TABLE employees (
   id SERIAL PRIMARY KEY,
   name VARCHAR(255) NOT NULL,
   salary INTEGER NOT NULL
);

INSERT INTO employees (name, salary) VALUES
   ('John Doe', 45000),
   ('Jane Smith', 55000),
   ('Bob Johnson', 65000),
   ('Alice Lee', 75000);

WITH high_salary_employees AS (
   SELECT name, salary
   FROM employees
   WHERE salary >= 50000
)
SELECT * FROM high_salary_employees;




