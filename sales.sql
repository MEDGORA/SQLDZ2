CREATE DATABASE IF NOT exists lesson2; 
USE lesson2; 
DROP TABLE IF EXISTS sales;
CREATE TABLE sales
(
	id INT PRIMARY KEY AUTO_INCREMENT, 
	order_date VARCHAR(12), 
    count_product INT
);

INSERT sales (order_date, count_product) 
VALUES
	("2022-01-01", 156), 
	("2022-01-02", 180), 
    ("2022-01-03", 21), 
    ("2022-01-04", 124),
    ("2022-01-05", 341);
    
-- Задание 1
SELECT * FROM sales; 

-- Задание 2
SELECT 
	id,
CASE
	WHEN count_product < 100
		THEN "Маленький заказ"
	WHEN count_product > 300
		THEN "Большой заказ"
	ELSE "Средний заказ" 
END AS Тип_заказа
FROM sales; 






