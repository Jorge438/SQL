SELECT number , SUM(products.`price`*order_product.`quantity`) AS Total_Price_all_command
FROM order_product
JOIN products on products.id = product_id
JOIN orders on orders.id = order_id
JOIN customers on customers.id = customer_id
WHERE customers.first_name = 'Charlize'
GROUP BY orders.number