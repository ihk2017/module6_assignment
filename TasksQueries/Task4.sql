
-- Task4

-- Write a SQL query to retrieve the top 5 customers who have made the highest total purchase amount. Display the customer name along with the total purchase amount in descending order of the purchase amount.

SELECT a.name AS "Customer Name", SUM(b.total_amount) AS total_purchase_amount
FROM Customers a
INNER JOIN Orders b ON a.customer_id = b.customer_id
GROUP BY a.name
ORDER BY total_purchase_amount DESC
LIMIT 5;