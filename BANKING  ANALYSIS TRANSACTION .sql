-- create database

CREATE DATABASE bank_system;

-- use database

use bank_system;

-- create table customers

CREATE TABLE customers (
    CUSTOMER_ID INT AUTO_INCREMENT PRIMARY KEY,
    NAME VARCHAR(100),
    EMAIL VARCHAR(100),
    CITY VARCHAR(50),
    ACCOUNT_TYPE VARCHAR(20),
    ACCOUNT_BALANCE DECIMAL(10 , 2 )
);

-- create table transactions

CREATE TABLE transactions (
    TRANSACTION_ID INT AUTO_INCREMENT PRIMARY KEY,
    CUSTOMER_ID INT,
    AMOUNT DECIMAL(10 , 2 ),
    transaction_type VARCHAR(20),
    transaction_mode VARCHAR(20),
    transaction_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id)
        REFERENCES customers (CUSTOMER_ID)
);
  
  -- insert values into customers
  
INSERT INTO customers (name, email, city, account_type, account_balance) VALUES
('Amit Sharma', 'amit.sharma@gmail.com', 'Delhi', 'Savings', 5000.00),
('Priya Reddy', 'priya.reddy@gmail.com', 'Hyderabad', 'Current', 12000.50),
('Rahul Verma', 'rahul.verma@gmail.com', 'Mumbai', 'Savings', 8000.75),
('Sneha Iyer', 'sneha.iyer@gmail.com', 'Chennai', 'Savings', 6500.00),
('Karan Mehta', 'karan.mehta@gmail.com', 'Pune', 'Current', 15000.00),
('Anjali Gupta', 'anjali.gupta@gmail.com', 'Kolkata', 'Savings', 7200.25),
('Vikram Singh', 'vikram.singh@gmail.com', 'Jaipur', 'Current', 11000.00),
('Neha Patel', 'neha.patel@gmail.com', 'Ahmedabad', 'Savings', 5400.00),
('Arjun Nair', 'arjun.nair@gmail.com', 'Kochi', 'Savings', 9000.00),
('Pooja Das', 'pooja.das@gmail.com', 'Bangalore', 'Current', 13000.00);

-- insert values into transactions

INSERT INTO transactions (customer_id, amount, transaction_type, transaction_mode, transaction_date) VALUES
(1, 1000, 'credit', 'UPI', '2026-04-01 10:00:00'),
(1, -200, 'debit', 'ATM', '2026-04-02 12:00:00'),
(2, -500, 'debit', 'NEFT', '2026-04-03 09:30:00'),
(3, 1500, 'credit', 'IMPS', '2026-04-04 11:15:00'),
(4, -300, 'debit', 'UPI', '2026-04-05 14:20:00'),
(5, 2000, 'credit', 'ATM', '2026-04-06 16:45:00'),
(6, -700, 'debit', 'NEFT', '2026-04-07 18:00:00'),
(7, 800, 'credit', 'IMPS', '2026-04-08 08:10:00'),
(8, -400, 'debit', 'UPI', '2026-04-08 19:00:00'),
(9, 1200, 'credit', 'ATM', '2026-04-09 07:50:00');

-- display tables

select * from transactions;
select *from customers;

-- customers whose account_balance is >10000

SELECT * from customers 
where account_balance>10000;

-- display all transactions sorted by transaction_date by desc

SELECT *from transactions order by transaction_date desc;

-- get unique transaction mode used by customers

SELECT distinct transaction_mode from transactions;

-- top 5 highest transactions

SELECT * FROM transactions 
order by amount desc
limit 5;

-- name starts with 'A'

SELECT * FROM customers where name like 'A%';

-- find total transactions amount per customer

SELECT customer_id, SUM(amount) AS total_amount
FROM transactions
GROUP BY customer_id;

select c.name,t.amount,t.transaction_type from customers c join transactions t on c.customer_id=t.customer_id;

select customer_id,amount,sum(amount) over(partition by customer_id order by transaction_date) as running_total from transactions;


