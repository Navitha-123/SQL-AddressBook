------UC1 Create databse addressbook---------
create database AddressBook

use AddressBook
--------------UC2 Create table for addressbook---------------------
create table AddressBook
(
    FirstName varchar(200),
	LastName varchar(250),
	Address varchar(200),
	City varchar(200),
	State varchar(200),
	Zip int,
	PhoneNumber bigint,
	Email varchar(300)
)

----------UC3 INSERT Contact details in the table ----------------
insert into AddressBook(FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email)values
         ('Akshara','Nandini','Banglore','Karnataka',530068,6987659875,'aksharanandini@gmail.com'),
		 ('Karthik','Reddy','Chennai','TamilNadu',600001,9567342675,'reddykarthi12@gmail.com'),
		 ('Abhi','Netra','Hyderabad','Telangana',500001,6308976548,'Netraabhi456@gmail.com'),
		  ('Mahansh','pretam','banglore','karnataka',560004,9951456398,'MahanshPretam@gmail.com')
		
