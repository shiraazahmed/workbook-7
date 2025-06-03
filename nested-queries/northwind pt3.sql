SELECT ProductName
FROM Products
WHERE UnitPrice = (SELECT MAX(UnitPrice) FROM Products);

SELECT OrderID, ShipName, ShipAddress
FROM Orders
WHERE ShipVia = (
	SELECT ShipperID
    FROM Shippers
    WHERE CompanyName = 'Federal Shipping');


SELECT OrderID
FROM `Order Details`
WHERE ProductID = (
    SELECT ProductID
    FROM Products
    WHERE ProductName = 'Sasquatch Ale');


SELECT FirstName, LastName
FROM Employees
WHERE EmployeeID = (
    SELECT EmployeeID
    FROM Orders
    WHERE OrderID = 10266);

SELECT ContactName
FROM Customers
WHERE CustomerID = (
    SELECT CustomerID
    FROM Orders
    WHERE OrderID = 10266);



  



