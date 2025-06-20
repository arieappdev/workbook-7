USE northwind;

INSERT INTO Categories (CategoryName, Description)
VALUES ("Travel Companies", "List of travel companies for clients.");

-- WRITING FLOW
-- INSERT INTO table-name (column1, column2, column3, ...)
-- VALUES (value1, value2, value3, ...);

-- 1. Add a new supplier.
-- INSERT INTO suppliers (CompanyName, ContactName, City, Region, Country,)
-- VALUES ('Oasis Travel Network', 'Lee Smolinski', 'Boca Raton', 'FL', 'USA' );

-- 2. Add a new product provided by that supplier
-- 3. List all products and their suppliers.
-- 4. Raise the price of your new product by 15%.
-- 5. List the products and prices of all products from that supplier.
-- 6. Delete the new product.
-- 7. Delete the new supplier.
-- 8. List all products.
-- 9. List all suppliers.
-- Commit and push your code!


-- INSERT INTO Categories (CategoryName, Description)
-- VALUES ("Software", "Software products for enterprise.");
-- -- 1. Add a new supplier.
-- INSERT INTO Suppliers (CompanyName, PostalCode)
-- VALUES ('Microsoft', 98052);

-- -- 2. Add a new product provided by that supplier.
-- INSERT INTO Products (ProductName,SupplierID, CategoryID, UnitPrice)
-- VALUES ("Microsoft Office 365", 30, 9, 99.99);

-- -- 3. List all products and their suppliers.
-- SELECT *
-- FROM Products
-- INNER JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID;

-- -- 4. Raise the price of your new product by 15%.
-- UPDATE Products
-- SET UnitPrice = UnitPrice * 1.15
-- WHERE ProductID = 79;


-- -- 5. List the products and prices of all products from that supplier.
-- SELECT CompanyName, ProductID, ProductName, UnitPrice
-- FROM Products
-- JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
-- WHERE CompanyName = 'Microsoft';