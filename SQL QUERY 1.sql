CREATE DATABASE company_db;
USE company_d;

CREATE TABLE departments(
department_id INT PRIMARY KEY,
department_name VARCHAR(50) NOT NULL
);

CREATE TABLE employees(
emp_id INT PRIMARY KEY ,
emp_name VARCHAR(50) NOT NULL,
salary DECIMAL(10,2),
department_id INT,
manager_id INT,
FOREIGN KEY(department_id) REFERENCES
departments(department_id)
);

INSERT INTO departments(department_id, department_name) VALUES
(1,'HR'),
(2,'IT'),
(3,'Finance'),
(4,'Marketing

INSERT INTO employees(emp_id, emp_name, salary, department_id, manager_id) values
(101,'Rahul',30000, 1,NULL),
(102,'Priya',45000, 2,NULL),
(103,'Aman',35000, 2,NULL),
(104,'Neha',40000, 3,NULL);

SELECT d.department_id,department_name
FROM departments d
LEFT JOIN employees e
ON d.department_id = e.department_id
WHERE e.emp_id IS NULL;
