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

--UC4-UPDATE EXISTING CONTACT USING TEIR NAME
UPDATE AddressBook SET PhoneNumber=8787878787 where FirstName='Vijay';
SELECT * FROM AddressBook;

--UC5-ABILITY TO DELETE PERSON USING PERSON NAME
DELETE AddressBook WHERE FirstName='Ajay';
SELECT * FROM AddressBook;

--UC6-RETRIVE PERSON BELONGS TO CITY R STATE
SELECT * FROM AddressBook WHERE City='Jintur';
SELECT * FROM AddressBook WHERE State='Maharashtra';

--UC7-SIZE OF ADDRESS BOOK BY CITY OR STATE
SELECT COUNT(*) AddressBook GROUP BY City='Jintur' GROUP BY City;
SELECT COUNT(*) AddressBook WHERE State='MAHARASHTRA' GROUP BY State;

--UC8-SORTED ALPHABETICALLY BY NAME
SELECT * from AddressBook ORDER BY FirstName ASC;

--UC9-IDENTYFY EACH ADDRESSBOOK BY NAME AND TYPE
ALTER TABLE AddressBook ADD AddressBookType varchar(50);
ALTER TABLE AddressBook ADD AddressBookName varchar(50);
update AddressBook set AddressBookType='Family', AddressBookName='WXY' WHERE FirstName='KIRAN';
update AddressBook set AddressBookType='Family', AddressBookName='WXY' WHERE FirstName='Sandeep';
update AddressBook set AddressBookType='Friend', AddressBookName='WXY' WHERE FirstName='Kanchan';
update AddressBook set AddressBookType='Friend', AddressBookName='WXY' WHERE FirstName='Gayatri';
update AddressBook set AddressBookType='Friend', AddressBookName='WXY' WHERE FirstName='Prity';
update AddressBook set AddressBookType='Profession', AddressBookName='WXY' WHERE FirstName='Kush';
update AddressBook set AddressBookType='Profession', AddressBookName='WXY' WHERE FirstName='Sharad';
update AddressBook set AddressBookType='Profession', AddressBookName='WXY' WHERE FirstName='Sai';
update AddressBook set AddressBookType='Profession', AddressBookName='WXY' WHERE FirstName='Vijay';
USE AddressBookServiceDB;

--UC10
SELECT AddressBookType,COUNT(AddressBookType) AS TOTALCOUNT FROM AddressBook GROUP BY AddressBookType;

--UC11-ADD CONTACT FOR FRIEND AND FAMILY
INSERT INTO AddressBook(FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email,AddressBookType,AddressBookName) 
 VALUES ('Nandini','Jadhav','CIDKO','AURANGABAD','Maharashtra',431007,9898989898,'nandini@gmail.com','Friend','FD'),
 ('LALITA','PURI','SMARAK','JINTUR','Maharashtra',431509,8989898989,'lalita@gmail.com','Family','FL');
 SELECT * FROM AddressBook;



