create database blinkit
use blinkit

-------------------------
----- Tables & Data -----
-------------------------

CREATE TABLE Orders (
    OrderID int,
    CustomerID int,
    StoreID int,
    OrderDate datetime,
    DeliveryTime int,
    TotalAmount int,
    Status char(10));

INSERT INTO Orders (OrderID, CustomerID, StoreID, OrderDate, DeliveryTime, TotalAmount, Status) VALUES
(101, 1001, 201, '2024-01-15 08:30:00', 30, 150, 'Completed'),
(102, 1002, 202, '2024-01-15 09:00:00', 45, 230, 'Completed'),
(103, 1003, 201, '2024-01-15 09:15:00', 60, 500, 'Cancelled'),
(104, 1001, 201, '2024-01-15 10:00:00', 20, 100, 'Completed'),
(105, 1004, 203, '2024-01-15 11:00:00', 35, 200, 'Completed');



CREATE TABLE Customers (
    CustomerID int,
    Name varchar(50),
    City varchar(50),
    SignUpDate date,
    TotalOrders int,
    LastOrderDate date);

INSERT INTO Customers (CustomerID, Name, City, SignUpDate, TotalOrders, LastOrderDate) VALUES
(1001, 'John Doe', 'Mumbai', '2023-12-01', 10, '2024-01-15'),
(1002, 'Alice Johnson', 'Bangalore', '2024-01-02', 3, '2024-01-15'),
(1003, 'Bob Smith', 'Pune', '2023-11-25', 2, '2024-01-15'),
(1004, 'Charlie Brown', 'Delhi', '2023-10-10', 1, '2024-01-15'),
(1005, 'Eve Miller', 'Mumbai', '2023-12-20', 5, '2024-01-10');


CREATE TABLE Stores (
    StoreID int,
    City varchar(50),
    Area varchar(50),
    Category varchar(50));

INSERT INTO Stores (StoreID, City, Area, Category) VALUES
(201, 'Mumbai', 'Andheri', 'Groceries'),
(202, 'Bangalore', 'Koramangala', 'Groceries'),
(203, 'Delhi', 'CP', 'Essentials'),
(204, 'Pune', 'Baner', 'Groceries'),
(205, 'Mumbai', 'Borivali', 'Essentials');


CREATE TABLE Products (
    ProductID int,
    ProductName varchar(50),
    Category varchar(50),
    Price int);

INSERT INTO Products (ProductID, ProductName, Category, Price) VALUES
(301, 'Milk', 'Dairy', 50),
(302, 'Bread', 'Bakery', 30),
(303, 'Apples', 'Fruits', 100),
(304, 'Toothpaste', 'Personal Care', 75),
(305, 'Rice', 'Grains', 120);

CREATE TABLE OrdersDetails (
    OrderID INT,
    ProductID INT,
    Quantity INT);

INSERT INTO OrdersDetails (OrderID, ProductID, Quantity) VALUES 
(101, 301, 2),
(101, 302, 1),
(102, 303, 1),
(102, 304, 3),
(104, 305, 1),
(105, 301, 4),
(105, 303, 2);


CREATE TABLE Deliveries (
    OrderID INT,
    DeliveryPersonID INT,
    DeliveryStartTime DATETIME,
    DeliveryEndTime DATETIME,
    DistanceCovered_km INT);

INSERT INTO Deliveries (OrderID, DeliveryPersonID, DeliveryStartTime, DeliveryEndTime, DistanceCovered_km)
VALUES 
(101, 501, '2024-01-15 08:45:00', '2024-01-15 09:15:00', 5),
(102, 502, '2024-01-15 09:10:00', '2024-01-15 09:55:00', 8),
(104, 503, '2024-01-15 10:05:00', '2024-01-15 10:25:00', 3),
(105, 504, '2024-01-15 11:10:00', '2024-01-15 11:45:00', 7);
