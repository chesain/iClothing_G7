CREATE DATABASE Group7_iCLOTHINGDB;

USE Group7_iCLOTHINGDB;

-- Customer Table
CREATE TABLE Customer (
    customerID VARCHAR(255) PRIMARY KEY,
    customerName VARCHAR(255),
    customerShippingAddress TEXT,
    customerBillingAddress TEXT,
    customerDOB DATE,
    customerGender VARCHAR(50)
);

-- UserPassword Table
CREATE TABLE UserPassword (
    userID VARCHAR(255) PRIMARY KEY,
    userAccountName VARCHAR(255),
    userEncryptedPassword VARCHAR(255),
    passwordExpiryTime INT,
    userAccountExpiryDate DATE,
    FOREIGN KEY (userID) REFERENCES Customer(customerID)
);

-- AboutUs Table
CREATE TABLE AboutUs (
    companyAddress TEXT,
    companyShippingPolicy TEXT,
    companyReturnPolicy TEXT,
    companyContactInfo TEXT,
    companyBusinessDescription TEXT
);

-- Administrator Table
CREATE TABLE Administrator (
    adminID VARCHAR(255) PRIMARY KEY,
    adminName VARCHAR(255),
    adminEmail VARCHAR(255),
    dateHired DATE
);

-- UserQuery Table
CREATE TABLE UserQuery (
    queryNo VARCHAR(255) PRIMARY KEY,
    customerID VARCHAR(255),
    queryDate DATE,
    queryDescription TEXT,
    FOREIGN KEY (customerID) REFERENCES Customer(customerID)
);

-- Department Table
CREATE TABLE Department (
    departmentID VARCHAR(255) PRIMARY KEY,
    departmentName VARCHAR(255),
    departmentDescription TEXT
);

-- Category Table
CREATE TABLE Category (
    categoryID VARCHAR(255) PRIMARY KEY,
    categoryName VARCHAR(255),
    categoryDescription TEXT,
    departmentID VARCHAR(255),
    FOREIGN KEY (departmentID) REFERENCES Department(departmentID)
);

-- Brand Table
CREATE TABLE Brand (
    brandID VARCHAR(255) PRIMARY KEY,
    brandName VARCHAR(255),
    brandDescription TEXT
);

-- Product Table
CREATE TABLE Product (
    productID VARCHAR(255) PRIMARY KEY,
    productName VARCHAR(255),
    productDescription TEXT,
    productPrice DOUBLE PRECISION,
    productQty INT,
    categoryID VARCHAR(255),
    brandID VARCHAR(255),
    FOREIGN KEY (categoryID) REFERENCES Category(categoryID),
    FOREIGN KEY (brandID) REFERENCES Brand(brandID)
);

-- UserComments Table
CREATE TABLE UserComments (
    commentNo VARCHAR(255) PRIMARY KEY,
    customerID VARCHAR(255),
    commentDate DATE,
    commentDescription TEXT,
    FOREIGN KEY (customerID) REFERENCES Customer(customerID)
);

-- ShoppingCart Table
CREATE TABLE ShoppingCart (
    cartID VARCHAR(255) PRIMARY KEY,
    customerID VARCHAR(255),
    FOREIGN KEY (customerID) REFERENCES Customer(customerID)
);

-- ShoppingCartItem Table (to link Products and ShoppingCart with many-to-many relationship)
CREATE TABLE ShoppingCartItem (
    cartID VARCHAR(255),
    productID VARCHAR(255),
    productPrice DOUBLE PRECISION,
    productQty INT,
    PRIMARY KEY (cartID, productID),
    FOREIGN KEY (cartID) REFERENCES ShoppingCart(cartID),
    FOREIGN KEY (productID) REFERENCES Product(productID)
);

-- OrderStatus Table
CREATE TABLE OrderStatus (
    statusID VARCHAR(255) PRIMARY KEY,
    cartID VARCHAR(255),
    status VARCHAR(255),
    statusDate DATE,
    FOREIGN KEY (cartID) REFERENCES ShoppingCart(cartID)
);

-- Email Table
CREATE TABLE Email (
    emailNo VARCHAR(255) PRIMARY KEY,
    emailDate DATE,
    emailSubject VARCHAR(255),
    emailBody TEXT,
    customerID VARCHAR(255),
    FOREIGN KEY (customerID) REFERENCES Customer(customerID)
);

-- ItemDelivery Table
CREATE TABLE ItemDelivery (
    stickerID VARCHAR(255) PRIMARY KEY,
    orderID VARCHAR(255),
    stickerDate DATE,
    FOREIGN KEY (orderID) REFERENCES OrderStatus(statusID)
);



