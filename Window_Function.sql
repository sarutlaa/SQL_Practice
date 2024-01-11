CREATE TABLE sales (
  date DATE,
  salesperson VARCHAR(50),
  sales_amount INT
);

INSERT INTO sales (date, salesperson, sales_amount)
VALUES
  ('2022-01-01', 'Alice', 1000),
  ('2022-01-01', 'Bob', 1500),
  ('2022-01-02', 'Alice', 2000),
  ('2022-01-02', 'Bob', 2500),
  ('2022-01-03', 'Alice', 3000),
  ('2022-01-03', 'Bob', 3500),
  ('2022-01-04', 'Alice', 4000),
  ('2022-01-04', 'Bob', 4500),
  ('2022-01-05', 'Alice', 5000),
  ('2022-01-05', 'Bob', 5500);
  
--   Calculating Running Totals
select salesperson, SUM(sales_amount) from sales
group by salesperson;

select date,
  salesperson,
  sales_amount,
  SUM(sales_amount) over(PARTITION BY salesperson ORDER BY date) as running_total
  from sales;
  

  

  






