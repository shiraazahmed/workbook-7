SELECT COUNT(*) AS TotalSuppliers 
FROM northwind.suppliers;


SELECT SUM(Salary) AS TotalSalary 
FROM northwind.employees;

SELECT MIN(UnitPrice) AS CheapestPrice 
FROM northwind.products;

SELECT AVG(UnitPrice) AS AveragePrice 
FROM northwind.products;

SELECT MAX(UnitPrice) AS MostExpensivePrice 
FROM northwind.products;

SELECT SupplierID, COUNT(*) AS ProductCount
FROM northwind.products
GROUP BY SupplierID;

SELECT CategoryID, AVG(UnitPrice) AS AveragePrice
FROM northwind.products
GROUP BY CategoryID;

SELECT SupplierID, COUNT(*) AS ProductCount
FROM northwind.Products
GROUP BY SupplierID
HAVING COUNT(*) >= 5;

SELECT ProductID, ProductName, UnitPrice * UnitsInStock AS InventoryValue
FROM northwind.products
ORDER BY InventoryValue DESC, ProductName ASC;









