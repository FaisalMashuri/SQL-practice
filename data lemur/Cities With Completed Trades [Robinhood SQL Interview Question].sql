SELECT
    u.city,
    COUNT(t.order_id) as total_orders
FROM trades as t
         INNER JOIN users u ON t.user_id = u.user_id
WHERE t.status = 'Completed'
GROUP BY u.city
ORDER BY 2 DESC
    LIMIT 3
;