CREATE DATABASE IF NOT exists lesson2; 
USE lesson2; 
DROP TABLE IF EXISTS orders;
CREATE TABLE orders
(
	id INT PRIMARY KEY AUTO_INCREMENT, 
	employer_id VARCHAR(3), 
    amount DECIMAL(10, 2),
    order_status VARCHAR(10)
);

INSERT orders (employer_id, amount, order_status) 
VALUES
	("e03", 15.00, "OPEN"), 
	("e01", 25.50, "OPEN"), 
    ("e05", 100.70, "CLOSED"),  
    ("e02", 22.15, "OPEN"), 
    ("e04", 9.50, "CANCELED");

-- Задание 1
SELECT id, employer_id, ROUND(amount, 2) as amount, order_status FROM orders;

-- Задание 2
SELECT 
	id, 
    employer_id, 
    ROUND(amount, 2) AS amount, 
    order_status,
CASE
	WHEN order_status = "OPEN"
		THEN "Order is in open state"
	WHEN order_status = "CLOSED"
		THEN "Order is closed"
	WHEN order_status = "CANCELED"
		THEN "Order is cancelled"
	ELSE "no data" 
END AS full_order_status
FROM orders; 






