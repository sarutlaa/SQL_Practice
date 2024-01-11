CREATE TABLE sales (
    id SERIAL PRIMARY KEY,
    product_name VARCHAR(50),
    sales_date DATE,
    sales_amount NUMERIC(10,2)
);

INSERT INTO sales (product_name, sales_date, sales_amount)
VALUES
    ('Product A', '2022-01-01', 100.50),
    ('Product B', '2022-01-01', 150.25),
    ('Product C', '2022-01-02', 75.00),
    ('Product A', '2022-01-02', 50.75),
    ('Product B', '2022-01-03', 200.00),
    ('Product C', '2022-01-03', 125.50);
	
-- Count
SELECT COUNT(*) AS total_sales FROM sales;

-- Count, group by
select product_name, count(*) from sales
group by product_name;

select product_name, sum(sales_amount) from sales
group by product_name;





