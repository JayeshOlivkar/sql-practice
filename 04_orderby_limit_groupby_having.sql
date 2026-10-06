-- DEFAULT
CREATE TABLE employee(
    id INT,
    name VARCHAR(30),
    city VARCHAR(30) DEFAULT 'PUNE'
);

INSERT INTO employee(id, name) VALUES(1, 'Jayesh');
INSERT INTO employee(id, name, city) VALUES(2, 'Aditya', 'MUMBAI');

SELECT * FROM employee;

-- ORDER BY
SELECT * FROM employee ORDER BY id ASC;
SELECT * FROM employee ORDER BY id DESC;

-- LIMIT
SELECT * FROM employee LIMIT 2;

-- GROUP BY
SELECT city, COUNT(*) FROM employee GROUP BY city;

-- HAVING
SELECT city, COUNT(*) 
FROM employee 
GROUP BY city 
HAVING COUNT(*) > 1;

-- CHECK
CREATE TABLE employee_check(
    id INT,
    name VARCHAR(30),
    salary INT CHECK(salary > 0)
);

INSERT INTO employee_check VALUES(1, 'Jayesh', 30000);
SELECT * FROM employee_check;