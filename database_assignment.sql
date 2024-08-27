-- 1. Create a database named database_assignment
CREATE DATABASE database_assignment;

-- select database
USE database_assignment;

-- 2. creating a table
CREATE TABLE customers(
id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(25),
last_name VARCHAR(25),
date_of_birth DATE,
phone VARCHAR(15), 
address VARCHAR(50),
city VARCHAR(15),
state VARCHAR(15),
points INT
);

-- showing the table
SELECT * FROM customers;


--3. inserting DATA INTO a TABLE
INSERT INTO customers(first_name, last_name, date_of_birth, phone, address, city, state, points) VALUES
('Babara','MacCaffrey','1986-03-28','781-932-9754','0 Sage Terrace','Waltham','MA',2273),
('Ines','Brushfield','1986-04-13','804-427-9456','14187 Commercial Trail','Hampton','VA',947),
('Freddi','Boagey','1985-02-07','719-724-7869','251 Springs Junction','Colorado Springs','CO',2967),
('Ambur','Roseburgh','1974-04-14','407-231-8017','30 Arapahoe Terrace','Orlando','FL',457),
('Clemmie','Betchley','1973-11-07','','5 Spohn Circle','Arlington','TX',3675)
;

--4. SHOW only 2 members whose points are more THAN 1000
SELECT * FROM customers WHERE points>1000 LIMIT 2;

--5. Find the customers whose age IS FROM 1980 TO 1990 OR points LESS THAN 1000
SELECT * FROM customers WHERE date_of_birth BETWEEN '1980-01-01' AND '1990-12-31' OR points<1000;

--6. ORDER the customers BY points IN ascending order.
SELECT * FROM customers ORDER BY points;

--7. Find the customer whose NAME CONTAINS 'burgh' USING a Regular Expression.
SELECT * FROM customers WHERE first_name REGEXP 'burgh' OR last_name REGEXP 'burgh';


--8. Find a customer who does NOT have a phone number
SELECT * FROM customers WHERE phone='';


--9. CHANGE the 'Date of Birth' COLUMN NAME TO 'dob'.
ALTER TABLE customers CHANGE COLUMN date_of_birth dob DATE;

--10. Find the MAX POINT holder customer name.
SELECT CONCAT(first_name,' ', last_name) AS FullName FROM customers WHERE points IN (SELECT MAX(points) FROM customers);



-- 11.case
SELECT  *,
CASE
	WHEN points<1000 THEN 'Bronze member'
	WHEN points>=1000 AND points<2000 THEN 'Silver member'
	WHEN points>=2000 AND points<3000 THEN 'Gold member'
	ELSE 'Platinum member'
END AS Membership FROM customers;