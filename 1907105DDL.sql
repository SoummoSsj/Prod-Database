drop table managements;
drop table payment;
drop table product_availability;
drop table orders;
drop table product;
drop table buyerinfo;



--Buyer_info table created
create table buyerinfo(
Buyer_ID number(30) NOT NULL CHECK (Buyer_ID >0) PRIMARY KEY,
Buyer_Name varchar(40) NOT NULL,
Buyer_Address varchar(40) NOT NULL,
Buyer_email varchar(40) NOT NULL,
Buyer_phone varchar(11) NOT NULL CHECK(Length(Buyer_phone)=11)
);
--Product table created
create table Product(
Product_ID varchar(40) NOT NULL Primary key,
Product_type varchar(40),
Product_Name varchar(40),
Price DECIMAL (10,2) NOT NULL CHECK(Price>=0),
Product_Brand varchar(40)
);
--Order table created
create table orders(
Buyer_ID number(30) NOT NULL CHECK (Buyer_ID >0),
Order_ID number(30) NOT NULL CHECK (Order_ID >0),
Product_ID varchar(40) NOT NULL ,
Quantity INT DEFAULT 1 NOT NULL Check (Quantity>=1) ,
Product_status varchar(40),
order_date date NOT NULL,
Primary key (order_id),
foreign key (Buyer_ID) references buyerinfo(Buyer_ID) on delete cascade,
foreign key (Product_ID) references product(Product_ID) on delete cascade
);
--Product Availability table created
create table product_availability(
Product_ID varchar(40) NOT NULL,
Product_availabilityID varchar(40) NOT NULL Check(Product_availabilityID in ('Available','Unavailable')) ,
Product_details varchar (120),
Primary Key (Product_ID),
foreign key (Product_ID) references product(Product_ID) on delete cascade
);
--Payment table created
create table payment(
order_id number(30) NOT NULL CHECK (Order_ID >0),
Payment_ID varchar(40) NOT NULL ,
Payment_Type varchar(40) NOT NULL Check(Payment_Type in ('Credit Card','Cash','Mastercard','Visa Card','Mobile Banking','Debit Card')),
Payment_amount DECIMAL (10,2) DEFAULT 0 CHECK(Payment_amount>=0) ,
Primary key(ORDER_ID,Payment_ID),
foreign key (order_id) references orders(order_id) on delete cascade
);
--Managements table created
create table managements(
Salesman_name varchar(40),
Buyer_ID number(30) NOT NULL CHECK (Buyer_ID >0),
order_id number(30) NOT NULL CHECK (Order_ID >0),
Payment_ID varchar(40) NOT NULL ,
Payment_Date date  ,
foreign key (buyer_ID) references buyerinfo(buyer_id) on delete cascade,
foreign key (order_ID,Payment_ID) references Payment(order_ID,Payment_ID) on delete cascade
);

--Altering-adding managers column to existing managements table
alter table managements add managers char(20);
describe managements;

--Altering-modifying managers column from char to varchar on existing managements table
alter table managements modify managers varchar(40);
describe managements;

--Altering-renaming managers column to managers_name column on existing managements table
alter table managements rename column managers to managers_name;
describe managements;

--Altering-dropping managers column from existing managements table
alter table managements drop column managers_name;
describe managements;
