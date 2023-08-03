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

--UC3-INSERT NEW CONTACTS IN ADDRESSBOOK
INSERT INTO AddressBook VALUES('Kiran','Puri','Hutatma Smarak','Jintur','Maharashtra',431509,9999999999,'kiran@gmail.com'),
('Sandeep','Puri','Vijay Nagar','Varud','Maharashtra',431507,9999988888,'sandeep@gmail.com'),
('Kush','Chakale','Cidko','Aurangabad','Maharashtra',431506,9999977777,'kush@gmail.com'),
('Sharad','Kale','RK','Nashik','Maharashtra',431510,8888899999,'shara@gmail.com'),
('Kanchan','Netke','Gavli Galli','Jintur','Maharashtra',431509,7999799999,'kanchan@gmail.com'),
('Gaytri','Deshmukh','Shivaji Nagar','Deglur','Maharashtra',432209,9998888899,'gayatry@gmail.com'),
('Priti','Navle','Jalna Road','Jintur','Maharashtra',431109,99993333399,'priti@gmail.com'),
('Sai','Satya','JK','Vijay Nagar','Adhra Pradesh',431511,9999999900,'satya@gmail.com'),
('Vijay','Verma','Sakli','Pentra','Madhya Pradesh',431512,8889999999,'vijay@gmail.com'),
('Ajay','Verma','Sakli','Pentra','Madhya Pradesh',431513,7878999999,'ajay@gmail.com');

SELECT * FROM AddressBook;
