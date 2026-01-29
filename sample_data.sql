-- Sales Database for Data Analyst Portfolio
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(30),
    join_date DATE
);

INSERT INTO customers VALUES
(1, 'Rahul Sharma', 'Delhi', '2024-01-15'),
(2, 'Priya Singh', 'Mumbai', '2024-02-20'),
(3, 'Amit Patel', 'Bangalore', '2024-03-10');
