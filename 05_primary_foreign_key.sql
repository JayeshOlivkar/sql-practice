-- PRIMARY KEY
CREATE TABLE department(
    department_id INT PRIMARY KEY,
    department_name VARCHAR(30)
);

INSERT INTO department VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance');

-- FOREIGN KEY
CREATE TABLE employee(
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(30),
    department_id INT,
    FOREIGN KEY(department_id) REFERENCES department(department_id)
);

INSERT INTO employee VALUES
(101, 'Jayesh', 1),
(102, 'Aditya', 2),
(103, 'Atharva', 1);

SELECT * FROM department;
SELECT * FROM employee;

-- ON DELETE CASCADE
CREATE TABLE employee_cascade(
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(30),
    department_id INT,
    FOREIGN KEY(department_id)
    REFERENCES department(department_id)
    ON DELETE CASCADE
);

INSERT INTO employee_cascade VALUES
(201, 'Pratik', 3),
(202, 'Piyush', 3);

SELECT * FROM employee_cascade;

-- SUBQUERY
SELECT * FROM employee
WHERE department_id = (
    SELECT department_id
    FROM department
    WHERE department_name = 'IT'
);