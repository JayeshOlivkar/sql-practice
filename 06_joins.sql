-- INNER JOIN
SELECT employee.employee_id, employee.employee_name, department.department_name
FROM employee
INNER JOIN department
ON employee.department_id = department.department_id;

-- LEFT JOIN
SELECT employee.employee_id, employee.employee_name, department.department_name
FROM employee
LEFT JOIN department
ON employee.department_id = department.department_id;

-- RIGHT JOIN
SELECT employee.employee_id, employee.employee_name, department.department_name
FROM employee
RIGHT JOIN department
ON employee.department_id = department.department_id;

-- FULL JOIN
SELECT employee.employee_id, employee.employee_name, department.department_name
FROM employee
LEFT JOIN department
ON employee.department_id = department.department_id

UNION

SELECT employee.employee_id, employee.employee_name, department.department_name
FROM employee
RIGHT JOIN department
ON employee.department_id = department.department_id;

-- ANY
SELECT * FROM employee
WHERE department_id = ANY(
    SELECT department_id FROM department
);

-- ALL
SELECT * FROM employee
WHERE department_id = ALL(
    SELECT department_id FROM department
);