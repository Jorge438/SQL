SELECT first_name, last_name , COUNT(DISTINCT order_id) AS Nb_of_order
FROM order_product
JOIN products on products.id = product_id
RIGHT JOIN orders on orders.id = order_id
RIGHT JOIN customers on customers.id = customer_id
GROUP BY  first_name, last_name