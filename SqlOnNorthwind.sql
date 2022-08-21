USE Northwind

--Question 1
SELECT ProductName , QuantityPerUnit
FROM Products

--Question 2
SELECT ProductID, ProductName
FROM Products
WHERE Discontinued = 0


--Question 3
SELECT ProductID, ProductName
FROM Products
WHERE Discontinued = 1


--Question 4
SELECT ProductName, UnitPrice 
FROM Products 
ORDER BY UnitPrice DESC


--Question 5
SELECT ProductID, ProductName, UnitPrice
FROM Products
WHERE UnitPrice<20 AND Discontinued=0


--Question 6
SELECT ProductName, UnitPrice
FROM Products
WHERE (UnitPrice>=15 And UnitPrice<=25) AND Discontinued=0


--Question 7
SELECT ProductName , UnitPrice
FROM Products
WHERE UnitPrice > (SELECT AVG(UnitPrice)
                   FROM Products)


--Question 8
SELECT TOP 20 ProductName, UnitPrice 
FROM Products 
ORDER BY UnitPrice DESC


--Question 9
SELECT Count(ProductName)
FROM Products
GROUP BY Discontinued


--Question 10
SELECT ProductName,  UnitsOnOrder , UnitsInStock
FROM Products
WHERE Discontinued=0 AND UnitsInStock<UnitsOnOrder