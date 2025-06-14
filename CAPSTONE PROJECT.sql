--CAPSTONE PROJECT FOR BANKE 

--1. Employees and their departments
SELECT e.JobTitle, d.Name AS DepartmentName
FROM HumanResources.Employee e
INNER JOIN HumanResources.EmployeeDepartmentHistory edh ON e.BusinessEntityID = edh.BusinessEntityID
INNER JOIN HumanResources.Department d ON edh.DepartmentID = d.DepartmentID;

--2. Products and their suppliers
SELECT p.Name AS ProductName, v.Name AS VendorName
FROM Production.Product p
INNER JOIN Purchasing.ProductVendor pv ON p.ProductID = pv.ProductID
INNER JOIN Purchasing.Vendor v ON pv.BusinessEntityID = v.BusinessEntityID;

--3. Employees and their shifts
SELECT e.JobTitle, s.Name AS ShiftName
FROM HumanResources.Employee e
INNER JOIN HumanResources.EmployeeDepartmentHistory edh ON e.BusinessEntityID = edh.BusinessEntityID
INNER JOIN HumanResources.Shift s ON edh.ShiftID = s.ShiftID;

--4. Products and their product models
SELECT p.Name AS ProductName, pm.Name AS ProductModelName
FROM Production.Product p
INNER JOIN Production.ProductModel pm ON p.ProductModelID = pm.ProductModelID;

--5.  Sales orders and their currency rates
SELECT soh.SalesOrderID, cr.ToCurrencyCode, cr.AverageRate
FROM Sales.SalesOrderHeader soh
INNER JOIN Sales.CurrencyRate cr ON soh.CurrencyRateID = cr.CurrencyRateID;

--6. Products and their bill of materials
SELECT p.Name AS ProductName, bm.ComponentID, c.Name AS ComponentName
FROM Production.Product p
INNER JOIN Production.BillOfMaterials bm ON p.ProductID = bm.ProductAssemblyID
INNER JOIN Production.Product c ON bm.ComponentID = c.ProductID;

--7. List of all products and their categories
SELECT p.Name AS ProductName, pc.Name AS CategoryName
FROM Production.Product p
INNER JOIN Production.ProductSubcategory ps ON p.ProductSubcategoryID = ps.ProductSubcategoryID
INNER JOIN Production.ProductCategory pc ON ps.ProductCategoryID = pc.ProductCategoryID;

--8. Employees and their departments
SELECT e.JobTitle, d.Name AS DepartmentName
FROM HumanResources.Employee e
INNER JOIN HumanResources.EmployeeDepartmentHistory edh ON e.BusinessEntityID = edh.BusinessEntityID
INNER JOIN HumanResources.Department d ON edh.DepartmentID = d.DepartmentID;

--9. Products and their sales order details
SELECT p.Name AS ProductName, sod.OrderQty, sod.LineTotal
FROM Production.Product p
INNER JOIN Sales.SalesOrderDetail sod ON p.ProductID = sod.ProductID;

--10. Sales orders and their currency rates
SELECT soh.SalesOrderID, cr.ToCurrencyCode, cr.AverageRate
FROM Sales.SalesOrderHeader soh
INNER JOIN Sales.CurrencyRate cr ON soh.CurrencyRateID = cr.CurrencyRateID;

--11. Products and their bill of materials
SELECT p.Name AS ProductName, bm.ComponentID, c.Name AS ComponentName
FROM Production.Product p
INNER JOIN Production.BillOfMaterials bm ON p.ProductID = bm.ProductAssemblyID
INNER JOIN Production.Product c ON bm.ComponentID = c.ProductID;

--12. Products and their sales order details with quantities
SELECT p.Name AS ProductName, sod.OrderQty
FROM Production.Product p
INNER JOIN Sales.SalesOrderDetail sod ON p.ProductID = sod.ProductID;

--13. Employees and their department histories

SELECT e.JobTitle, edh.StartDate, edh.EndDate
FROM HumanResources.Employee e
INNER JOIN HumanResources.EmployeeDepartmentHistory edh ON e.BusinessEntityID = edh.BusinessEntityID;

--14. Sales orders and their ship methods
SELECT soh.SalesOrderID, sm.Name AS ShipMethodName
FROM Sales.SalesOrderHeader soh
INNER JOIN Purchasing.ShipMethod sm ON soh.ShipMethodID = sm.ShipMethodID;

--15. Products and their product cost histories
SELECT p.Name AS ProductName, pch.StandardCost
FROM Production.Product p
INNER JOIN Production.ProductCostHistory pch ON p.ProductID = pch.ProductID;































