SELECT *
FROM customers
    JOIN orders ON customers.id = orders.customer_id;

SELECT CONCAT(first_name, ' ', last_name), order_date, amount
FROM customers
    JOIN orders on orders.customer_id = customers.id;

SELECT * FROM orders JOIN customers ON customers.id = orders.id;