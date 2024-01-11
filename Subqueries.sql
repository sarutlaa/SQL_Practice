-- Subquery - used in select, insert, update, delete
-- The names of customers who have placed orders with an amount greater than $100

CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    customer_email VARCHAR(50) NOT NULL
);

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    order_date DATE NOT NULL,
    order_amount DECIMAL(10,2) NOT NULL
);

INSERT INTO customers (customer_name, customer_email) VALUES
    ('John Doe', 'johndoe@example.com'),
    ('Jane Smith', 'janesmith@example.com'),
    ('Bob Johnson', 'bobjohnson@example.com');

INSERT INTO orders (customer_id, order_date, order_amount) VALUES
    (1, '2021-01-01', 50.00),
    (1, '2021-02-01', 75.00),
    (2, '2021-02-15', 125.00),
    (3, '2021-03-01', 200.00);

-- subquery
SELECT customer_name
FROM customers
WHERE customer_id IN (SELECT customer_id FROM orders WHERE order_amount > 100);

-- Same using joins
select c.customer_name 
from customers c
join orders o on c.customer_id = o.customer_id
where o.order_amount > 100;

-- retrieve the customer_name, email, and the total number of orders they have placed

SELECT customer_name, customer_email,
(SELECT COUNT(*) FROM orders WHERE orders.customer_id = customers.customer_id) as total_orders,
(SELECT SUM(order_amount) FROM orders WHERE orders.customer_id = customers.customer_id) as total_order_amount
FROM customers;

-- same using joins

SELECT
    c.customer_name,
    c.customer_email,
    COUNT(o.customer_id) AS total_orders,
    COALESCE(SUM(o.order_amount), 0) AS total_order_amount
FROM
    customers c
LEFT JOIN
    orders o ON c.customer_id = o.customer_id
GROUP BY
    c.customer_id, c.customer_name, c.customer_email;
	
-- Subquery in from
SELECT customer_name, AVG(order_amount) as avg_order_amount
FROM (
    SELECT *
    FROM customers
    INNER JOIN orders ON customers.customer_id = orders.customer_id
) AS cust_orders
GROUP BY customer_name;


SELECT
    c.customer_name,
    AVG(o.order_amount) as avg_order_amount
FROM
    customers c
INNER JOIN
    orders o ON c.customer_id = o.customer_id
GROUP BY
    c.customer_name;


-- Subquery in having
SELECT customer_name, COUNT(*) as total_orders
FROM customers
INNER JOIN orders ON customers.customer_id = orders.customer_id
GROUP BY customer_name
HAVING COUNT(*) > 1;













