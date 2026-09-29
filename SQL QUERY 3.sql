SELECT 
    department_id,
    emp_id,
    emp_name,
    salary,
    SUM(salary) OVER (
        PARTITION BY department_id
        ORDER BY emp_id
    ) AS running_total
FROM employees;