USE northwind;

SELECT ProductId, ProductName, UnitPrice, CategoryName
FROM Products
inner join categories on Products.CategoryId = Categories.CategoryId
ORDER BY CategoryName, ProductName;

SELECT ProductID, ProductName, UnitPrice, CompanyName
FROM Products
inner join suppliers on Products.SupplierID = Suppliers.SupplierID
WHERE UnitPrice > 75
ORDER BY ProductName;

SELECT ProductID, ProductName, UnitPrice, CategoryName, CompanyName
FROM products
inner join categories on Products.CategoryID = Categories.CategoryID
inner join suppliers on Products.SupplierID = Suppliers.SupplierID
ORDER BY ProductName;


SELECT ProductName, CategoryName
FROM Products
inner join categories on Products.CategoryID = Categories.CategoryID
WHERE UnitPrice = (SELECT max(UnitPrice) FROM Products);

SELECT OrderID, ShipName, ShipAddress, CompanyName
FROM Orders
inner join shippers on Orders.ShipVia = Shippers.ShipperID
WHERE ShipCountry = 'Germany';

SELECT DISTINCT Orders.OrderID, Orders.OrderDate, Orders.ShipName, Orders.ShipAddress
FROM Orders
inner join `Order Details` on Orders.OrderID = `Order Details`.OrderID
inner join products on `Order Details`.ProductID = Products.ProductID
WHERE Products.ProductName = 'Sasquatch Ale';






