-- Create a new folder in your pluralsight directory and name it workbook-7.
-- You will do all of this week’s exercises in this folder.
-- EXERCISE 1
-- W3Schools not only has CSS, Bootstrap, and JavaScript material, it had a fairly
-- detailed section on SQL. Take a few minutes to do the following practice
-- exercises:
-- SQL Select: https://www.w3schools.com/sql/exercise.asp?filename=exercise_select1
-- SQL Order By: https://www.w3schools.com/sql/exercise.asp?filename=exercise_orderby1
-- SQL Where: https://www.w3schools.com/sql/exercise.asp?filename=exercise_where1
-- SQL Like: https://www.w3schools.com/sql/exercise.asp?filename=exercise_like1
-- SQL Between: https://www.w3schools.com/sql/exercise.asp?filename=exercise_between1
-- EXERCISE 2
-- Create a new project folder named basic-queries in the workbook-7
-- directory. Create any .sql files directly in the basic-queries folder.
-- Use the MySQL Workbench and the Northwind database to answer the
-- following questions
-- Create a new .sql file for each query and name each file with the question
-- number, i.e. 02_product_list.sql. (This approach helps to organize and
-- more easily find your queries later)
-- Alternatively, you may want to put all SQL statements in the same .sql script
-- with comments before each query and then only run the selected query by
-- pressing the 2nd lightning bolt.
-- 1. What is the name of the table that holds the items Northwind sells?
-- PRODUCTS
-- 2. Write a query to list the product id, product name, and unit price of every
-- product.
USE northwind;
SELECT ProductID, ProductName, unitprice
FROM products;
-- 3. Write a query to list the product id, product name, and unit price of every
-- product. Except this time, order then in ascending order by price.
SELECT ProductID, ProductName, UnitPrice
FROM products
ORDER BY UnitPrice;
-- 4. What are the products that we carry where the unit price is $7.50 or less?
-- 2-34
SELECT ProductName, UnitPrice
FROM products
WHERE UnitPrice <= 7.50;
-- 5. What are the products that we carry where we have at least 100 units on
-- hand? Order them in descending order by price.
SELECT*FROM Products
WHERE UnitsInStock >= 100
ORDER BY UnitPrice DESC;
-- 6. What are the products that we carry where we have at least 100 units on
-- hand? Order them in descending order by price. If two or more have the
-- same price, list those in ascending order by product name. Greater than or equal to 50
SELECT*FROM Products
WHERE UnitsInStock >= 50
ORDER BY UnitPrice DESC;
-- 7. What are the products that we carry where we have no units on hand, but 1
-- or more units of them on backorder? Order them by product name.
-- 8. What is the name of the table that holds the types (categories) of the items
-- Northwind sells?
-- 9. Write a query that lists all of the columns and all of the rows of the
-- categories table? What is the category id of seafood?
-- 10. Examine the Products table. How does it identify the type (category) of
-- each item sold? Write a query to list all of the seafood items we carry.
-- 11. What are the first and last names of all of the Northwind employees?
SELECT FirstName, LastName
FROM employees;
-- 12. What employees have "manager" in their titles?
SELECT Title
FROM employees
WHERE Title LIKE "%manager%";
-- 13. List the distinct job titles in employees.
SELECT Title
FROM employees;
-- 14. What employees have a salary that is between $200 0 and $2500?
-- 15. List all of the information about all of Northwind's suppliers.
SELECT*FROM northwind.suppliers;
-- 16. Examine the Products table. How do you know what supplier supplies
-- each product? Write a query to list all of the items that "Tokyo Traders"
-- supplies to Northwind
-- Commit and push your code!