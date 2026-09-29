CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL
);

INSERT INTO categories (category_id, category_name)
VALUES
(1, 'Electronics'),
(2, 'Clothing'),
(3, 'Books');

ALTER TABLE purchases
ADD category_id INT;

UPDATE purchases
SET category_id = 1
WHERE purchase_id = 101;

UPDATE purchases
SET category_id = 2
WHERE purchase_id = 102;

UPDATE purchases
SET category_id = 3
WHERE purchase_id = 103;

SELECT c.customer_id, c.customer_name
FROM customers c
WHERE NOT EXISTS (
    SELECT 1
    FROM categories cat
    WHERE NOT EXISTS (
        SELECT 1
        FROM purchases p
        WHERE p.customer_id = c.customer_id
        AND p.category_id = cat.category_id
    )
);