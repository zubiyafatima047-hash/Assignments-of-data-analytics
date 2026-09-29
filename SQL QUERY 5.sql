CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL
);

CREATE TABLE purchases (
    purchase_id INT PRIMARY KEY,
    customer_id INT,
    purchase_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO customers (customer_id, customer_name)
VALUES
(1, 'Aisha'),
(2, 'Rahul'),
(3, 'Priya'),
(4, 'Aman');

INSERT INTO purchases (purchase_id, customer_id, purchase_date)
VALUES
(101, 1, '2026-09-01'),
(102, 2, '2026-09-05'),
(103, 1, '2026-09-10');

SELECT c.customer_id, c.customer_name
FROM customers c
LEFT JOIN purchases p
ON c.customer_id = p.customer_id
WHERE p.purchase_id IS NULL;