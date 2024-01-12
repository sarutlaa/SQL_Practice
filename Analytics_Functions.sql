CREATE TABLE sales_data (
    id SERIAL PRIMARY KEY,
    date DATE,
    item TEXT,
    units_sold INTEGER,
    price_per_unit NUMERIC(10, 2)
);

INSERT INTO sales_data (date, item, units_sold, price_per_unit)
VALUES
    ('2021-01-01', 'apple', 10, 1.50),
    ('2021-01-02', 'banana', 20, 0.75),
    ('2021-01-03', 'orange', 15, 1.00),
    ('2021-01-04', 'apple', 12, 1.50),
    ('2021-01-05', 'banana', 18, 0.75),
    ('2021-01-06', 'orange', 20, 1.00),
    ('2021-01-07', 'apple', 8, 1.50),
    ('2021-01-08', 'banana', 22, 0.75),
    ('2021-01-09', 'orange', 10, 1.00);
	
-- Rank() and Dense_rank()
-- What is the rank, dense_rank, row_number of each item based on the number of units sold in the "sales_data" table?
SELECT item, units_sold, RANK() OVER (ORDER BY units_sold DESC) AS rank,
DENSE_RANK() OVER (ORDER BY units_sold DESC) AS dense_rank,
ROW_NUMBER() OVER (ORDER BY units_sold DESC) AS row_number
FROM sales_data;

-- Lag and lead
-- What is the previous day's unit sold for each item in the "sales_data" table?
-- What is the next day's unit sold for each item in the "sales_data" table?
SELECT item, units_sold, LAG(units_sold) OVER (ORDER BY date) AS previous_units_sold,
LEAD(units_sold) OVER (ORDER BY date) AS next_units_sold
FROM sales_data;





