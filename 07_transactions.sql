-- TRANSACTION
CREATE TABLE account(
    id INT PRIMARY KEY,
    name VARCHAR(30),
    balance INT
);

INSERT INTO account VALUES
(1, 'Jayesh', 10000),
(2, 'Aditya', 15000);

-- TRANSACTION
START TRANSACTION;

UPDATE account
SET balance = balance - 2000
WHERE id = 1;

UPDATE account
SET balance = balance + 2000
WHERE id = 2;

SELECT * FROM account;

-- COMMIT
COMMIT;

-- ROLLBACK
START TRANSACTION;

UPDATE account
SET balance = balance - 1000
WHERE id = 1;

SELECT * FROM account;

ROLLBACK;

SELECT * FROM account;