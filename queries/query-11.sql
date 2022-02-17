SELECT first_name, last_name , SUM(`price`*order_product.`quantity`) AS Prix_total_commande
FROM order_product
JOIN products on products.id = product_id
RIGHT JOIN orders on orders.id = order_id
RIGHT JOIN customers on customers.id = customer_id
GROUP BY  first_name, last_name