-- Question 1 🧑‍💼
-- Retrieve each employee's first name, last name, email, and office code.
-- Use an INNER JOIN to link the employees table with the offices table via the officeCode column.

SELECT 
    e.firstName, 
    e.lastName, 
    e.email, 
    e.officeCode
FROM employees e
INNER JOIN offices o 
    ON e.officeCode = o.officeCode;


-- Question 2 🛍️
-- Fetch the product name, vendor, and product line details.
-- Apply a LEFT JOIN to connect the products table with the productlines table using the productLine column.

SELECT 
    p.productName, 
    p.productVendor, 
    p.productLine
FROM products p
LEFT JOIN productlines pl 
    ON p.productLine = pl.productLine;


-- Question 3 📦
-- Display the order date, shipped date, status, and customer number for the first 10 orders.
-- Use a RIGHT JOIN to match the customers table with the orders table through the customerNumber column.

SELECT 
    o.orderDate, 
    o.shippedDate, 
    o.status, 
    o.customerNumber
FROM customers c
RIGHT JOIN orders o 
    ON c.customerNumber = o.customerNumber
LIMIT 10;