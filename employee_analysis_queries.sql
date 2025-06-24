USE EmployeeManagement;

-- Comprehensive Workforce Overview

-- View all employees
SELECT * FROM employees;

-- Gender distribution
SELECT gender, COUNT(*) AS total_count
FROM employees
GROUP BY gender;

-- Employee count by role
SELECT role, COUNT(*) AS number_of_employees
FROM employees
GROUP BY role;

-- High earners by gender (salary > 60000)
SELECT gender, COUNT(*) AS count_of_employees
FROM employees
WHERE salary > 60000
GROUP BY gender
ORDER BY gender;

-- Average salary by gender
SELECT gender, AVG(salary) AS average_salary
FROM employees
GROUP BY gender;
