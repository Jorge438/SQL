SELECT `number`,SUM(`price`*order_product.`quantity`) AS Prix_total_commande
FROM order_product
JOIN products on products.id = product_id
JOIN orders on orders.id = order_id
GROUP BY number