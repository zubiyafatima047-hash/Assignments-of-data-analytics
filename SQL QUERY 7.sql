SELECT 
    c.customer_id,
    c.customer_name,
    MIN(p.purchase_date) AS first_purchase_date,
    MAX(p.purchase_date) AS last_purchase_date
FROM customers c
LEFT JOIN purchases p
ON c.customer_id = p.customer_id
GROUP BY c.customer_id, c.customer_name;