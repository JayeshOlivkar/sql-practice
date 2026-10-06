-- NULL AND NOT NULL
CREATE TABLE student1(
    id INT,
    name TEXT,
    city TEXT NOT NULL
);

INSERT INTO student1 VALUES(1, 'Jayesh', 'Pune');
INSERT INTO student1 VALUES(2, 'Aditya', NULL);

-- UNIQUE
CREATE TABLE student2(
    id INT UNIQUE,
    name TEXT,
    email TEXT UNIQUE
);

INSERT INTO student2 VALUES(1, 'Jayesh', 'jayesh@gmail.com');
INSERT INTO student2 VALUES(2, 'Aditya', 'aditya@gmail.com');

SELECT * FROM student1;
SELECT * FROM student2;