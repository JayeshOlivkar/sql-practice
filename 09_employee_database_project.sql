-- DATABASE
CREATE DATABASE company_db;
USE company_db;

-- DEPARTMENT TABLE
CREATE TABLE department(
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(30),
    location VARCHAR(30)
);

-- EMPLOYEE TABLE
CREATE TABLE employee(
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(30),
    salary INT,
    department_id INT,
    FOREIGN KEY(department_id)
    REFERENCES department(department_id)
);

-- INSERT DEPARTMENTS
INSERT INTO department(department_name, location)
VALUES
('IT', 'Pune'),
('HR', 'Mumbai'),
('Finance', 'Nagpur');

-- INSERT EMPLOYEES
INSERT INTO employee(employee_name, salary, department_id)
VALUES
('Jayesh', 30000, 1),
('Aditya', 35000, 1),
('Atharva', 28000, 2),
('Pratik', 40000, 3),
('Piyush', 32000, 3);

-- DISPLAY DATA
SELECT * FROM department;
SELECT * FROM employee;

-- AGGREGATE FUNCTIONS
SELECT COUNT(*) AS total_employees
FROM employee;

SELECT MAX(salary) AS highest_salary
FROM employee;

SELECT MIN(salary) AS lowest_salary
FROM employee;

SELECT AVG(salary) AS average_salary
FROM employee;

-- GROUP BY
SELECT department_id, COUNT(*) AS employee_count
FROM employee
GROUP BY department_id;

-- SUBQUERY
SELECT * FROM employee
WHERE salary > (
    SELECT AVG(salary)
    FROM employee
);

-- JOIN
SELECT employee.employee_id,
       employee.employee_name,
       employee.salary,
       department.department_name,
       department.location
FROM employee
INNER JOIN department
ON employee.department_id = department.department_id;

-- DEPARTMENT WISE HIGHEST SALARY
SELECT department_id, MAX(salary) AS highest_salary
FROM employee
GROUP BY department_id;