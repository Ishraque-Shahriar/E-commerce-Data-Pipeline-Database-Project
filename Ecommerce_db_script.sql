create database ecommerce_db;
use ecommerce_db;

create table Products(
ProductID int auto_increment primary key,
ProductName varchar(255) not null,
Description text,
price decimal(10, 2) not null,
StockQuantity int not null,
Category varchar(100),
DateAdded date null default (curdate()));

describe products;


insert into products (ProductName, Description, Price, StockQuantity, Category)
values('Smartphone', 'A latest model smartphone with all the features.', 699.99, 50, 'Electronics'),
('Running Shoes', 'Comfortable running shoes for all terrains.', 89.99, 100, 'Sportswear'),
('Bluetooth Speaker', 'Portable speaker with excellent sound quality.', 45.00, 200, 'Electronics');


select * from products;

CREATE TABLE Users (
    UserID INT AUTO_INCREMENT PRIMARY KEY, -- Unique ID for each user
    UserName VARCHAR(255) NOT NULL, -- Name of the user
    Email VARCHAR(255) NOT NULL UNIQUE, -- Email of the user, must be unique
    Password VARCHAR(255) NOT NULL, -- Hashed password for security
    Address VARCHAR(255), -- User's shipping address
    DateRegistered DATE NOT NULL DEFAULT (CURDATE()) -- Date when the user registered, defaults to today's date
);
INSERT INTO Users (UserName, Email, Password, Address)
VALUES 
('John Doe', 'john.doe@example.com', 'hashedpassword123', '123 Main St'),
('Jane Smith', 'jane.smith@example.com', 'hashedpassword456', '456 Elm St');

select * from users;


create table Orders(
OrderID int auto_increment primary key,
UserID int,
OrderDate date not null,
TotalAmount decimal (10, 2) not null,
foreign key (UserID) references Users(UserID));

describe Orders;

insert into Orders( UserID, OrderDate, TotalAmount)
values
(1, '2024-08-01', 789.99),
(2, '2024-08-02', 120.50);

select * from Orders;

create table Reviews(
ReviewID int auto_increment primary key,
ProductID int,
UserID int,
Rating int,
ReviewText text,
foreign key (ProductID) references Product(ProductID),
foreign key (UserID) references Users(UserID),
check (rating >=1 and rating<=5));

describe Reviews;

insert into Reviews(
ProductID, UserID,Rating, ReviewText)
values
(1, 1, 5, 'Amazing smartphone, very satisfied!'),
(2, 2, 4, 'Great shoes, very comfortable.');
select * from Reviews;

 create table Payments(
 PaymentID int auto_increment primary key,
 OrderID int,
 PaymentMethod varchar(50),
 PaymentDate date not null,
 Amount decimal (10,2) not null,
 foreign key (OrderID) references Orders(OrderID));
 
 describe payments;
 insert into Payments(OrderID, PaymentMethod, PaymentDate, Amount)
 values
 (1, 'Credit Card', '2024-08-01', 789.99),
(2, 'PayPal', '2024-08-02', 120.50);
select * from payments;
 

alter table users add constraint chk_email check(email like '%_@_%_%');






SELECT BENCHMARK(1000000, ENCODE('test', 'test'));


RESET QUERY CACHE;





