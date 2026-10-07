-- AUTO_INCREMENT
CREATE TABLE student(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30),
    city VARCHAR(30)
);

INSERT INTO student(name, city)
VALUES
('Jayesh', 'Pune'),
('Aditya', 'Mumbai'),
('Atharva', 'Amravati');

SELECT * FROM student;