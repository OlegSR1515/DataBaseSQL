-- 1.  Используя операторы языка SQL, создайте таблицу “sales”. Заполните ее данными
CREATE DATABASE hw_2;
USE hw_2;

CREATE TABLE sales (
	id   INT   NOT NULL   AUTO_INCREMENT   UNIQUE   PRIMARY KEY,
	order_date   DATE,
	busket   INT   DEFAULT '0'  );
-- Заполняем таблицу 'sales' данными:
INSERT INTO `sales` (order_date, busket)
VALUES 
('2021-01-01', 110),
('2021-01-02', 120),
('2021-01-03', 50),
('2021-01-04', 130),
('2021-01-05', 400);
SELECT * FROM hw_2.sales; 


-- 2.   Разделите  значения поля “bucket” на 3 сегмента: меньше 100(“Маленький заказ”),
-- 100-300(“Средний заказ”) и больше 300 (“Большой заказ”)

SELECT 	id  'Номер заказа',
	IF (busket < 100, 'Маленький заказ', 
		IF (busket BETWEEN 100 AND 300, 'Средний заказ', 'Большой заказ')
	)  'Размер заказа'	
FROM sales;


-- 3.   Создайте таблицу “orders”, заполните ее значениями.
--    Покажите “полный” статус заказа, используя оператор CASE. 
CREATE TABLE orders (
	orderid   INT  NOT NULL AUTO_INCREMENT   UNIQUE   PRIMARY KEY,
	employeeid   VARCHAR(10)   NOT NULL ,
	amount   FLOAT(5,2)   NOT NULL   DEFAULT '0.00',
    orderstatus   VARCHAR(10)   NOT NULL );
-- Заполняем таблицу '“orders”' данными:
INSERT INTO orders (employeeid, amount, orderstatus)
VALUES 
('e03', 15.00, 'OPEN'),
('e01', 25.50, 'OPEN'),
('e05', 100.70, 'CLOSED'),
('e02', 22.18, 'OPEN'),
('e04', 9.50, 'CANCELLED'),
('e04', 99.99, 'OPEN');
SELECT * FROM hw_2.orders; 


SELECT 
	orderid , orderstatus ,
    CASE orderstatus 
		WHEN 'OPEN' THEN 'Order is in open state.'
		WHEN 'CLOSED' THEN 'Order is closed.'
		WHEN 'CANCELLED' THEN 'Order is cancelled'
	END AS 'order_summary'	
FROM orders;
