SELECT `name`,order_product.`quantity`,`price`
FROM order_product
         JOIN products on products.id = product_id
WHERE order_id = 1;