-- 1. Create a Database called Client
CREATE DATABASE IF NOT EXISTS Client;
USE Client;

-- 2. Create a table Product_details with recommended data types
CREATE TABLE IF NOT EXISTS Product_details (
    Product VARCHAR(30) NOT NULL,
    StockQuantity INT NOT NULL,
    Price DECIMAL(5, 2) NOT NULL,
    Sale_Price DECIMAL(5, 2) NOT NULL
);

-- 3. Insert two records into Product_details
INSERT INTO Product_details (Product, StockQuantity, Price, Sale_Price) VALUES ('Shirt', 25, 33.00, 90.00);
INSERT INTO Product_details (Product, StockQuantity, Price, Sale_Price) VALUES ('Sweater', 42, 50.00, 120.00);

-- 4. Add a column "Size" to the existing Product_details table with data string length of 10
ALTER TABLE Product_details ADD COLUMN Size VARCHAR(10);

-- 5. Add a unique ID to the table
ALTER TABLE Product_details ADD COLUMN ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY;

-- 6. Stored procedure for total sales by day for each customer
DELIMITER //

CREATE PROCEDURE TotalSalesByDayForCustomer()
BEGIN
    SELECT c.FirstName, c.LastName, c.Address, s.DateID AS SaleDate, SUM(s.SalesAmount) AS TotalAmount
    FROM sales s
    JOIN customers c ON s.CustumerID = c.CustumerID
    GROUP BY s.DateID, c.CustumerID
    ORDER BY c.CustumerID, s.DateID;
END //

DELIMITER ;
