CREATE TABLE customers1(
customer_id INT PRIMARY KEY AUTO_INCREMENT,
customer_name VARCHAR (255) NOT NULL);

CREATE TABLE products1(
product_id INT PRIMARY KEY AUTO_INCREMENT,
product_name VARCHAR (255) NOT NULL);

CREATE TABLE orders1(
order_id INT PRIMARY KEY AUTO_INCREMENT,
customer_id INT,
product_id INT,
order_date DATE,
FOREIGN KEY (customer_id) REFERENCES customers1(customer_id),
FOREIGN KEY (product_id) REFERENCES products1(product_id));

CREATE TABLE exports(
export_id INT PRIMARY KEY AUTO_INCREMENT,
order_id INT,
export country VARCHAR(255) NOT NULL,
FOREIGN KEY (order_id) REFERENCES orders1(order_id));

SELECT
c.customer_id,
c.customer_name,
p.product_name,
e.export_county

FROM customers1 c 
JOIN orders1 o ON c.customer_id =o.customer_id
JOIN products1 p ON o.product_id =p.product_id
JOIN exports e ON o.order_id=e.order_id

WHERE
c.customer_name LIKE 'a%'
AND c.customer_name LIKE '%or%';
