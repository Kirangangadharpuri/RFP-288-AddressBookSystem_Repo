--UC1-Create database
CREATE DATABASE AddressBookServiceDB;
USE AddressBookServiceDB;

--UC2-CREATE TABLE
CREATE TABLE AddressBook(PersonID INT PRIMARY KEY IDENTITY(1,1),
FirstName VARCHAR(30) NOT NULL, 
LastName VARCHAR(30),
Address VARCHAR(100) NOT NULL,
City VARCHAR(30) NOT NULL,
State VARCHAR(30) NOT NULL,
Zip INT NOT NULL,
PhoneNumber BIGINT NOT NULL, 
Email VARCHAR(50) NOT NULL);
