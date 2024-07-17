create table Staff(
ID_Staff int PRIMARY key,
NAME_Staff VARCHAR (25),
EMAIL VARCHAR (50),
ID_Detail_Staff int,
ID_Department int,
ID_Position int,
FOREIGN KEY (ID_Detail_Staff) REFERENCES Detail_Staff (ID_Detail_Staff),
FOREIGN KEY (ID_Department) REFERENCES Department (ID_Department),
FOREIGN KEY (ID_Position) REFERENCES Positionn (ID_Position)
);
create table Detail_Staff(
ID_Detail_Staff int primary key,
ADDRESS text,
PHONE_NUMBER int,
SHIFT int
);
create table Department(
ID_Department int primary key,
NAME_Department VARCHAR (25)
);
create table Positionn(
ID_Position  int primary key,
NAME_Position VARCHAR (25)
);
-- chưa taọ 
create table Detail_Client(
ID_Detail_Client  int primary key,
SCORE int,
ADDRESS text
);
create table Clientt(
ID_Client  int PRIMARY key,
NAME_Client VARCHAR (25),
PHONE_NUMBER int,
ID_Detail_Client  int,
FOREIGN KEY (ID_Detail_Client) REFERENCES Detail_Client (ID_Detail_Client)
);
create table Bill(
ID_Bill   int PRIMARY key,
NAME_Client VARCHAR (25),
Quantity int,
Datee datetime,
ID_Product int,
ID_Client  int,
ID_Staff int,
FOREIGN KEY (ID_Product) REFERENCES Product (ID_Product),
FOREIGN KEY (ID_Client) REFERENCES Clientt (ID_Client),
FOREIGN KEY (ID_Staff) REFERENCES Staff (ID_Staff)
);
create table Supplier(
ID_Supplier  int primary key,
NAME VARCHAR (25),
ADDRESS text
);
create table Supplier_Categories(
ID_Supplier  int primary key,
ID_Categories int,
FOREIGN KEY (ID_Categories) REFERENCES Categories (ID_Categories)
);
create table Categories(
ID_Categories  int primary key,
NAME VARCHAR (25)
);
create table Detail_Product(
ID_Detail_Product  int primary key,
ORIGIN VARCHAR (25),
Guarantee datetime
);
create table Product(
ID_Product   int PRIMARY key,
NAME VARCHAR (25),
ID_Detail_Product   int,
ID_Categories  int,
FOREIGN KEY (ID_Detail_Product ) REFERENCES Detail_Product (ID_Detail_Product),
FOREIGN KEY (ID_Categories) REFERENCES Categories (ID_Categories)
);
select product.ID_Product 
from product 
inner join categories on product.ID_Categories = categories.ID_Categories
inner join supplier on categories.ID_Categories = supplier_categories.ID_Categories
inner join supplier on supplier_categories. ID_Supplier = supplier.ID_Supplier
where 


