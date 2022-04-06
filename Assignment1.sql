

create table customer(CustomerId int identity(1,1) primary key,FirstName nvarchar(40) not null,LastName nvarchar(40),City nvarchar(40),
Country nvarchar(40),Phone nvarchar(20))

create table Orders(OrderId int identity(1,1) primary key constraint FK foreign key(OrderID) references customer(CustomerId), OrderDate datetime not null,
OrderNumber nvarchar(10),CustomerId int ,TotalAmount decimal(12,2))

create table Product(ProductId int identity(1,1) primary key,ProductName nvarchar(50) not null,UnitPrice decimal(12,2) not null,Package nvarchar(30),
IsDiscounted bit)

create table OrderItem(OrderItem_Id int identity(1,1) primary key constraint OFK foreign key(OrderItem_Id) references Orders(OrderId),
PId int constraint PFK foreign key(PId) references Product(ProductId),UnitPrice decimal(12,2),Quantity int)

Select * from customer
insert into customer(FirstName,LastName,City,Country,Phone) values('Akash','vp','Banglore','India',123456789)
insert into customer(FirstName,LastName,City,Country,Phone) values('Indy','jones','dublin','Ireland',188932513)
insert into customer(FirstName,LastName,City,Country,Phone) values('john','wick','vienna','Austria',1924522342)
insert into customer(FirstName,LastName,City,Country,Phone) values('guy','elis','congo','Africa',9622228493)
insert into customer(FirstName,LastName,City,Country,Phone) values('Rakesh','hiremath','Banglore','India',8896413732)
insert into customer(FirstName,LastName,City,Country,Phone) values('Ruman','khan','vatican','France',43241372232)
insert into customer(FirstName,LastName,City,Country,Phone) values('juilia','jack','berlin','germany',1995091287)


--Q5
select * from customer;

--Q6
select * from customer where country like '%[ai]';

--Q7
select * from customer where FirstName like '__i%';