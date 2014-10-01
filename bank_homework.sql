-- In case there is already a bank_homework database, drop it

DROP DATABASE IF EXISTS bank_homework;

-- Create a bank_homework database

CREATE DATABASE bank_homework;

-- Connect to the bank_homework databases

\c bank_homework

-- Create a payments table
--  The table should have columns of id, created_at, amount, payer_name,
--  recipient_name, and description with the appropriate datatypes

CREATE TABLE payments (
  id SERIAL PRIMARY KEY,
  created_at DATE,
  amount DECIMAL,
  payer_name TEXT,
  recipient_name TEXT,
  description TEXT
);

-- Alter the payments table, add the column of `zipcode`
-- to specify where the transaction was made

ALTER TABLE payments
ADD zipcode INTEGER;

-- Insert 20 rows into the payments table
-- The first of these payments should be deposits
-- try to keep the accounts positive and have at least three different payers.

INSERT INTO payments (
  created_at,
  amount,
  payer_name,
  recipient_name,
  description
)
VALUES (
  '20140101',
  1600.00,
  'Work',
  'Rebecca',
  'Payday'
);

INSERT INTO payments (
  created_at,
  amount,
  payer_name,
  recipient_name,
  description
)
VALUES (
  '20140115',
  400.00,
  'Rebecca',
  'Landlady',
  'Rent'
);

INSERT INTO payments (
  created_at,
  amount,
  payer_name,
  recipient_name,
  description
)
VALUES (
  '20140201',
  1600.00,
  'Work',
  'Rebecca',
  'Payday'
);

INSERT INTO payments (
  created_at,
  amount,
  payer_name,
  recipient_name,
  description
)
VALUES (
  '20140215',
  400.00,
  'Rebecca',
  'Landlady',
  'Rent'
);
INSERT INTO payments (
  created_at,
  amount,
  payer_name,
  recipient_name,
  description
)
VALUES (
  '20140301',
  1600.00,
  'Work',
  'Rebecca',
  'Payday'
);

INSERT INTO payments (
  created_at,
  amount,
  payer_name,
  recipient_name,
  description
)
VALUES (
  '20140315',
  400.00,
  'Rebecca',
  'Landlady',
  'Rent'
);
INSERT INTO payments (
  created_at,
  amount,
  payer_name,
  recipient_name,
  description
)
VALUES (
  '20140401',
  1600.00,
  'Work',
  'Rebecca',
  'Payday'
);

INSERT INTO payments (
  created_at,
  amount,
  payer_name,
  recipient_name,
  description
)
VALUES (
  '20140415',
  400.00,
  'Rebecca',
  'Landlady',
  'Rent'
);
INSERT INTO payments (
  created_at,
  amount,
  payer_name,
  recipient_name,
  description
)
VALUES (
  '20140501',
  1600.00,
  'Work',
  'Rebecca',
  'Payday'
);

INSERT INTO payments (
  created_at,
  amount,
  payer_name,
  recipient_name,
  description
)
VALUES (
  '20140515',
  400.00,
  'Rebecca',
  'Landlady',
  'Rent'
);
INSERT INTO payments (
  created_at,
  amount,
  payer_name,
  recipient_name,
  description
)
VALUES (
  '20140601',
  1600.00,
  'Work',
  'Rebecca',
  'Payday'
);

INSERT INTO payments (
  created_at,
  amount,
  payer_name,
  recipient_name,
  description
)
VALUES (
  '20140615',
  400.00,
  'Rebecca',
  'Landlady',
  'Rent'
);
INSERT INTO payments (
  created_at,
  amount,
  payer_name,
  recipient_name,
  description
)
VALUES (
  '20140701',
  1600.00,
  'Work',
  'Rebecca',
  'Payday'
);

INSERT INTO payments (
  created_at,
  amount,
  payer_name,
  recipient_name,
  description
)
VALUES (
  '20140715',
  400.00,
  'Rebecca',
  'Landlady',
  'Rent'
);
INSERT INTO payments (
  created_at,
  amount,
  payer_name,
  recipient_name,
  description
)
VALUES (
  '20140801',
  1600.00,
  'Work',
  'Rebecca',
  'Payday'
);

INSERT INTO payments (
  created_at,
  amount,
  payer_name,
  recipient_name,
  description
)
VALUES (
  '20140815',
  400.00,
  'Rebecca',
  'Landlady',
  'Rent'
);
INSERT INTO payments (
  created_at,
  amount,
  payer_name,
  recipient_name,
  description
)
VALUES (
  '20140815',
  100.00,
  'Maria',
  'Rebecca',
  'Birthday present'
);
INSERT INTO payments (
  created_at,
  amount,
  payer_name,
  recipient_name,
  description
)
VALUES (
  '20140901',
  1600.00,
  'Work',
  'Rebecca',
  'Payday'
);

INSERT INTO payments (
  created_at,
  amount,
  payer_name,
  recipient_name,
  description
)
VALUES (
  '20140915',
  400.00,
  'Rebecca',
  'Landlady',
  'Rent'
);
INSERT INTO payments (
  created_at,
  amount,
  payer_name,
  recipient_name,
  description
)
VALUES (
  '20141001',
  1600.00,
  'Work',
  'Rebecca',
  'Payday'
);

-- phew

-- You receive notice that the payment with id of 9 is $10 too low.
-- Alter that row so that it is corrected

UPDATE payments
SET amount = amount + 10
WHERE id = 9;

-- Delete all payments with an amount under $2

DELETE FROM payments
WHERE amount < 2;

-- Select all entries from the payments table

SELECT * FROM payments;

-- In a single query, output all payments ordered from the largest to the smallest

SELECT * FROM payments
ORDER BY amount DESC;

-- In a single query, output the names of all distinct recipients

SELECT DISTINCT recipient_name FROM payments;

-- In a single query, select all payments created in the past week

SELECT * FROM payments
WHERE created_at >= '20140915';

-- In a single query, select all payments with a blank description

SELECT * FROM payments
WHERE description = '';

-- In a single query, select all payments matching the name of one of the payers (choose any single one)

SELECT * FROM payments
WHERE payer_name = 'Work';