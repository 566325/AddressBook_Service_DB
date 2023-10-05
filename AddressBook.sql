Create DataBase Address_Book_Service  ---UseCase-1

--UseCase-2 table Creation

create table AddressBook(
FirstName varchar(50),
LastName varchar(50),
Address varchar(200),
City varchar(50),
State varchar(50),
zip int,
PhoneNumber bigint,
Email varchar(250));

select * from AddressBook;

--UseCase-3 Insert values In a Table
insert into AddressBook values('Sireesha','Nethi','Polinenipalem','Kandukur','Andhra Pradesh',523116,8794563214,'Siri@gmail.com')
insert into AddressBook values('Manas','Vagu','Rollapadu','Kandukur','Andhra Pradesh',556479,8945667434,'abc@gmail.com')
insert into AddressBook values('Nani','Munigalla','AdhamMarket','Triplecan','Chennai',643116,6394563213,'manas@gmail.com')
insert into AddressBook values('Vani','Kasukurti','Drvengalrao','Mandhavelli','TamilNadu',423145,9867532130,'nani09@gmail.com')
insert into AddressBook values('Sravani','Mekala','nelagiri','Pamuru','Andhra Pradesh',923117,7794563217,'vani98@gmail.com')
insert into AddressBook values('Havila','sopaty','Sampathnager','Nagpur','Madya Pradesh',598116,87945632134,'havi34@gmail.com')
insert into AddressBook values('Myna','Chella','Jaipur','Venukunta','Bhihar',523110,9994563214,'mya@gmail.com')

--UseCase-4

Update AddressBook set PhoneNumber =  99945567809 where FirstName = 'Nani'

select * from AddressBook;

--UseCase-5 --delete a person using person's Name


delete from AddressBook where FirstName = 'Myna';

--UseCase-6 --retrive the data use City and State

select * from AddressBook where City = 'Pamuru' or State = 'Andhra Pradesh';

select * from AddressBook;

--UseCase-7 ---Size Of the Addess Book

select Count(City) from AddressBook

select count(State) from AddressBook

--UseCase-8 --- Sorted alphabetically

select * from AddressBook where State = 'Andhra Pradesh' order by FirstName desc

select * from AddressBook where State = 'Andhra Pradesh' order by FirstName asc

--UseCase-9 --Identify each address book With name and type

alter table AddressBook add Relation varchar(255) not null default 'Friends';

select * from AddressBook;

update AddressBook set Relation = 'Colleague' where FirstName = 'Nani';
update AddressBook set Relation = 'BenchMate' where FirstName = 'Vani';
update AddressBook set Relation = 'RoomMate' where FirstName = 'Havila';
update AddressBook set Relation = 'Colleague' where LastName = 'Vagu';

--UseCase-10 --Ability to get number of contact persons  count by type

select Count(Relation) from AddressBook where Relation = 'Friends' 

select Count(Relation) from AddressBook where Relation = 'Family' 

--UseCase-11--Ability to add person to both Friend and  Family

update AddressBook set Relation = ' Family Friend'  where FirstName = 'Sireesha'

select * from AddressBook;







