use Northwind
select * from [Order Details]
--------------------------------------------------------
-- 1 ::

--  1 ) Display Unique OrderID and Make it Display with Name "ID"  :: 
select distinct OrderID as Id 
from [Order Details]

--  2 ) Display Column "TotalUnitsPrice" and Make it Computed from UnitPrice and Quantity ::
select UnitPrice * Quantity as TotalUnitsPrice from [Order Details]
-- OR :: 
select [TotalUnitsPrice] = UnitPrice * Quantity  from [Order Details]

-- 3 ) Display Table Name From "Order Details" to "OD" :: 
select od.OrderID , od.ProductID , od.Discount from [Order Details] as od 

/*umber of Shown Columns Should be ( 2 )   =  ID , TotalUnitPrice 
Number of Shown Rows Should be ( 2150 )*/  
SELECT 
    OrderID AS ID,
    UnitPrice * Quantity AS TotalUnitsPrice
FROM [Order Details] ;


-------------------------------------------------------------
-- 2 :: 

---- select Without Duplication country & City From Employees table  :: 
select distinct country , City from Employees 

-------------------------------------------------------------
-- 3 :: 

/*use case to:- 
    Create column  "Price Range" to Show the data 
	unitPrice =  0 THEN 'item - not for resale'
	unitPrice < 50 THEN 'Under $50'
	unitPrice >= 50 and unitPrice < 250 THEN 'Under $250'
	unitPrice >= 250 and unitPrice < 1000 THEN 'Under $1000'
	'Over $1000'*/ 
	SELECT 
    UnitPrice,
    CASE
        WHEN UnitPrice = 0 THEN 'item - not for resale'
        WHEN UnitPrice < 50 THEN 'Under $50'
        WHEN UnitPrice >= 50 AND UnitPrice < 250 THEN 'Under $250'
        WHEN UnitPrice >= 250 AND UnitPrice < 1000 THEN 'Under $1000'
        ELSE 'Over $1000'
    END AS PriceRange
FROM [Order Details]

-------------------------------------------------------------------
-- 4 :: 

/*1) CustomerID
2) CompanyName
3) ContactName
4) New Column Name 'Location' = Address + City + Region + Country)*/
select CustomerID , CompanyName , ContactName , 
[Location] = Address + ' ' + City + ' ' + isnull(Region,' ' ) + ' ' + Country
from Customers 

-------------------------------------------------------------------------








