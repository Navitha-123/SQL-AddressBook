---------UC1 Create database ----------
create database AddressBooksystem
 
 use AddressBooksystem
 -----------------UC2 create table ----------
 create table AddressBooksystem
 (
    Id int primary key identity,
    FirstName varchar(200),
	LastName varchar(200),
	Address varchar(200),
	City varchar(200),
	State varchar(200),
	Zip int,
	PhoneNumber bigint,
	Email varchar(250)
 )
 Drop table AddressBooksystem

 --------------------UC3Insert data contacts---------------
 insert into AddressBooksystem(FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email)values('Akshara','Nadhini','indira nagar','Banglore','Karnataka',530068,9876543289,'akshara234@gmail.com'),
                                                                                                 ('Kartik','Reddy','Thaticherla','Anantapur','Andhrapradesh',515731,6309876346,'kartikreddy342@gmail.com'),
																								 ('Keertana','Mahalakshmi','Mylapore','Chennai','TamilNaidu',600001,8967543789,'MahalakshmiKeertana@gmail.com'),
																								 ('Vikaram','Aditya','JubllieHills','Hyderabad','Telangana',500001,6789432678,'Adityavikram4536@gmail.com')

select * from AddressBooksystem
 
 --------------------------UC4Ability to edit existing contact person using their name ----------------------

 update AddressBooksystem set FirstName='Ahi',LastName='Netra' where City = 'Banglore' 
 select * from AddressBooksystem

 -----------------UC5 Ability to delete a person using person's name-------------
 Delete AddressBooksystem Where LastName = 'Netra'

 ---------------UC6 Ability to Retrieve Person belonging to a City or State from the Address Book----------------------------
 select Id,Firstname,Lastname,Address,City,State,Zip,PhoneNumber,Email from  AddressBooksystem where State = 'TamilNadu'

 --------UC7 Ability to understand the size of address book by City and State----------

 select count(*) as Statecount ,State From AddressBooksystem group by State
 select count(*) as Citycount ,City From AddressBooksystem group by City

 ------------------------UC8 Ability to retrieve entries sorted alphabetically by Person’s name for a given city -------------------

 select * from AddressBooksystem order by FirstName

 -------------------UC9 Ability to identify each Address Book with name and type -------------------
 alter table AddressBooksystem Add ContactType varchar(200) after Zip
 alter table AddressBooksyatem Add ContactType varchar(200) not null default 'Friends'
 update AddressBooksystem set ContactType = 'Family' where FirstName = 'Harsha'
 ---------UC10 Count of persons------------

 count (*) From AddressBooksystem
