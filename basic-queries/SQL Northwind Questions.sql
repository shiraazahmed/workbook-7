-- 1. What is the name of the table that holds the items Northwind sells?
--products
-- 2. Write a query to list the product id, product name, and unit price of every
-- product.
select productid,productname,unitprice from products
-- 3. Write a query to list the product id, product name, and unit price of every
-- product. Except this time, order then in ascending order by price.
SELECT productid, productname, unitprice
FROM products
ORDER BY unitprice ASC;

-- 4. What are the products that we carry where the unit price is $7.50 or less?
SELECT ProductName, UnitPrice
FROM Products
WHERE UnitPrice <= 7.50;

-- 5. What are the products that we carry where we have at least 100 units on
-- hand? Order them in descending order by price.
Select ProductName, UnitPrice, UnitsInStock
FROM products
Where UnitsInStock >= 100
Order by UnitPrice DESC;
-- 6. What are the products that we carry where we have at least 100 units on
-- hand? Order them in descending order by price. If two or more have the
-- same price, list those in ascending order by product name.
SELECT ProductName, UnitPrice, UnitsInStock
FROM products
Where UnitsInStock >= 50
Order by UnitPrice DESC, productName ASC;
-- 7. What are the products that we carry where we have no units on hand, but 1
-- or more units of them on backorder? Order them by product name.
select ProductName, UnitPrice, UnitsinStock, UnitsonOrder
from products
Where UnitsinStock = 0 AND UnitsonOrder >=1 
order by ProductName ASC;
-- 8. What is the name of the table that holds the types (categories) of the items
-- Northwind sells?
--categories
-- 9. Write a query that lists all of the columns and all of the rows of the
-- categories table? What is the category id of seafood?
select * from categories
order by CategoryId
-- 10. Examine the Products table. How does it identify the type (category) of
-- each item sold? Write a query to list all of the seafood items we carry.
Select * from products
JOIN Categories ON Products.CategoryID = Categories.CategoryID
WHERE CategoryName = 'Seafood';

-- 11. What are the first and last names of all of the Northwind employees?
SELECT * FROM employees;
-- 12. What employees have "manager" in their titles?
select FirstName, LastName, Title
From employees
order by title = 'manager';
-- 13. List the distinct job titles in employees.
Select distinct title
from employees; 
-- 14. What employees have a salary that is between $200 0 and $2500?
Select FirstName, LastName, Salary
from employees
order by salary between 2000 and 2500 DESC;
-- 15. List all of the information about all of Northwind's suppliers.
SELECT * FROM northwind.suppliers;
-- 16. Examine the Products table. How do you know what supplier supplies
-- each product? Write a query to list all of the items that "Tokyo Traders"
-- supplies to Northwind
select SupplierId, CompanyName
From Suppliers
WHERE CompanyName = 'Tokyo Traders';

SELECT ProductName
FROM products
WHERE SupplierId = 4;

