SELECT 
    e.emp_id,
    e.emp_name,
    e.salary,
    m.emp_name AS manager_name,
    m.salary AS manager_salary
FROM employees e
JOIN employees m
ON e.manager_id = m.emp_id
WHERE e.salary = m.salary;