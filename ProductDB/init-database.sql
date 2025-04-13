USE master;
GO
-- Create the database only if it does not already exist
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = 'ProductDB')
BEGIN
    CREATE DATABASE ProductDB;
END
GO
-- Switch to the ProductDB database
USE ProductDB;
GO
-- Create Products table
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Products')
BEGIN
    CREATE TABLE Products (
        Id INT PRIMARY KEY IDENTITY(1,1),
        Name NVARCHAR(100) NOT NULL,
        Price DECIMAL(18, 2) NOT NULL
    );
END
GO
-- Insert data into products table
INSERT INTO Products (Name, Price)
VALUES
    ('Apples', 50.00),
    ('Bananas', 30.00),
    ('Oranges', 45.50);
GO