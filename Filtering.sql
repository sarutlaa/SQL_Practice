CREATE TABLE customer_orders (
order_id INT PRIMARY KEY,
customer_name VARCHAR(50),
order_date DATE,
order_amount DECIMAL(10,2)
);

INSERT INTO customer_orders (order_id, customer_name, order_date, order_amount)
VALUES
(1, 'John', '2021-01-01', 100),
(2, 'Jane', '2021-01-02', 200),
(3, 'John', '2021-01-03', 50),
(4, 'Jane', '2021-01-04', 300),
(5, 'John', '2021-01-05', 150);

select * from customer_orders;

-- Order By
select * from customer_orders
order by order_amount DESC;

select * from customer_orders
order by order_amount ASC;

-- Group By
select customer_name, sum(order_amount) as total from customer_orders
group by customer_name
order by total desc;

-- Having clause
select customer_name, sum(order_amount) as total from customer_orders
group by customer_name
having sum(order_amount) > 300
order by total desc;
























