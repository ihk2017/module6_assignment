
--Task 1 : 
-- Write a SQL query to retrieve all the customer information along with the total number of orders placed by each customer. Display the result in descending order of the number of orders

SELECT a.customer_id, a.name, a.email, a.location, COUNT(b.order_id) as total_orders
FROM Customers a
LEFT JOIN Orders b ON a.customer_id = b.customer_id
GROUP BY a.customer_id, a.name, a.email, a.location
ORDER BY total_orders DESC;

