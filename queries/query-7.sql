SELECT SUM(`price`*order_product.`quantity`) AS Prix_total_commande
FROM products
JOIN order_product on order_product.product_id = products.id
JOIN orders on orders.id = order_id
WHERE date = CURRENT_DATE