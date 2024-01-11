create table sales(
id int,
sale_date date,
product varchar(255),
quantity int,
revenue decimal(10,2)
);

insert into sales(id, sale_date, product, quantity, revenue)
values   (1, '2021-01-01', 'Product A', 10, 100.00),
  (2, '2021-01-02', 'Product B', 5, 50.00),
  (3, '2021-01-03', 'Product C', 15, 150.00),
  (4, '2021-01-04', 'Product A', 8, 80.00),
  (5, '2021-01-05', 'Product B', 12, 120.00),
  (6, '2021-01-06', 'Product C', 20, 200.00),
  (7, '2021-01-07', 'Product A', 6, 60.00),
  (8, '2021-01-08', 'Product B', 18, 180.00),
  (9, '2021-01-09', 'Product C', 10, 100.00),
  (10, '2021-01-10', 'Product A', 4, 40.00);
  
select * from sales;
 
SELECT * FROM sales WHERE product = 'Product A';
 
select sale_date, SUM(revenue) from sales
group by sale_date;

select product, SUM(revenue) from sales
group by product
order by product;









