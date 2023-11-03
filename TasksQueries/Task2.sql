-- Task2

-- Write a SQL query to retrieve the product name, quantity, and total amount for each order item. Display the result in ascending order of the order ID.

SELECT b.name AS "Product Name", a.quantity, a.quantity * a.unit_price AS total_amount
FROM Order_Items a
INNER JOIN Products b ON a.product_id = b.product_id
ORDER BY a.order_id ASC;

