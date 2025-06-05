use northwind;

INSERT INTO Suppliers (CompanyName, ContactName, Country)
VALUES ('Best Buy', 'John Wick', 'USA');

INSERT INTO Products (ProductName, SupplierID, CategoryID, UnitPrice)
VALUES ("Airpods", 30,9,99.99);

SELECT Products.ProductName, Suppliers.CompanyName
FROM Products
LEFT JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID;

UPDATE Products
SET UnitPrice = UnitPrice * 1.15
WHERE ProductName = Airpods;

SELECT ProductName, UnitPrice
FROM Products
WHERE SupplierID = products.supplierid;

DELETE FROM Products
WHERE ProductName = 'Airpods';

DELETE FROM Suppliers
WHERE CompanyName = 'Best Buy';

SELECT *
FROM Products;

SELECT *
FROM Suppliers;






