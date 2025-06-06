SELECT
    first_name,
    last_name,
    order_date,
    amount
FROM customers
    LEFT JOIN orders ON orders.customer_id = customers.id;

SELECT
    first_name,
    last_name,
    order_date,
    amount
FROM orders
    LEFT JOIN customers ON orders.customer_id = customers.id
WHERE
    amount IS NOT NULL;

SELECT
    first_name,
    last_name,
    order_date,
    IFNULL(SUM(amount), 0) AS money_spent
FROM customers
    LEFT JOIN orders ON customers.id = orders.customer_id
GROUP BY
    first_name,
    last_name;

select
    first_name,
    last_name,
    IFNULL(SUM(amount), 0) as money_spent
from customers
    LEFT JOIN orders ON customers.id = orders.customer_id
GROUP BY
    first_name,
    last_name;