--inserting value into buyerinfo table
insert into buyerinfo (buyer_id,buyer_name,buyer_address,buyer_email,buyer_phone) values (1,'Soummo','Mymensingh','soummo@gmail.com','01999934999');
insert into buyerinfo (buyer_id,buyer_name,buyer_address,buyer_email,buyer_phone) values (2,'Joy','Dhaka','joy@gmail.com','01999999119');
insert into buyerinfo (buyer_id,buyer_name,buyer_address,buyer_email,buyer_phone) values (3,'Nihal','Rajshahi','nihal@gmail.com','01923999999');
insert into buyerinfo (buyer_id,buyer_name,buyer_address,buyer_email,buyer_phone) values (4,'Asfaq','Rajshahi','ashfaq@gmail.com','01995699999');
insert into buyerinfo (buyer_id,buyer_name,buyer_address,buyer_email,buyer_phone) values (5,'Tomal','Dhaka','tomal@gmail.com','01999999969');
insert into buyerinfo (buyer_id,buyer_name,buyer_address,buyer_email,buyer_phone) values (6,'Kazi','Dhaka','kazi@gmail.com','01999999910');
insert into buyerinfo (buyer_id,buyer_name,buyer_address,buyer_email,buyer_phone) values (7,'Mahdi','Narshindi','mahdi@gmail.com','01799999999');
insert into buyerinfo (buyer_id,buyer_name,buyer_address,buyer_email,buyer_phone) values (8,'Irham','Dhaka','irham@gmail.com','01899998999');
insert into buyerinfo (buyer_id,buyer_name,buyer_address,buyer_email,buyer_phone) values (9,'Hrithik','Tangail','hrithik@gmail.com','01945699999');
insert into buyerinfo (buyer_id,buyer_name,buyer_address,buyer_email,buyer_phone) values (10,'Rahim','Naraynganj','rahim@gmail.com','01999966999');
insert into buyerinfo (buyer_id,buyer_name,buyer_address,buyer_email,buyer_phone) values (11,'Sondhi','Naraynganj','sondhi@gmail.com','01999699899');


select * from buyerinfo;

--inserting value into product table
insert into Product (product_id,product_type,product_name,price,product_brand) values  ('S101','Monitor', 'Samsung Monitor',599.20,'Samsung');
insert into Product (product_id,product_type,product_name,price,product_brand) values ('S102','Keyboard', 'Samsung Keyboard',100.99,'Samsung');
insert into Product (product_id,product_type,product_name,price,product_brand) values ('S103','GPU', 'MSI GPU',2000.2,'MSI');
insert into Product (product_id,product_type,product_name,price,product_brand) values ('S104','RAM', 'Keycheron RAM',111.11,'MSI');
insert into Product (product_id,product_type,product_name,price,product_brand) values ('S105','HDD', 'Gigabyte HDD',222.21,'Gigabyte');
insert into Product (product_id,product_type,product_name,price,product_brand) values ('S106','SSD', 'Intel SSD',1000.5,'Intel');
insert into Product (product_id,product_type,product_name,price,product_brand) values ('S107','Headphone', 'Samsung Headphone',800,'Samsung');
insert into Product (product_id,product_type,product_name,price,product_brand) values ('S108','Mouse', 'Samsung Mouse',121.2,'Samsung');
insert into Product (product_id,product_type,product_name,price,product_brand) values ('S109','Casing', 'Samsung Casing',799.99,'Samsung');
insert into Product (product_id,product_type,product_name,price,product_brand) values ('S110','Motherboard', 'Samsung Motherboard',3000,'Samsung');


select * from product;

--inserting value into orders table
insert into orders (buyer_id,order_id,product_id,quantity,product_status,order_date) values(1,100,'S101',2,'New',date '2006-02-1');
insert into orders (buyer_id,order_id,product_id,quantity,product_status,order_date) values(1,101,'S102',4,'New',date '2009-03-2');
insert into orders (buyer_id,order_id,product_id,quantity,product_status,order_date) values(1,102,'S103',5,'New',date '2007-04-1');
insert into orders (buyer_id,order_id,product_id,quantity,product_status,order_date) values(2,200,'S104',1,'New',date '2004-05-23');
insert into orders (buyer_id,order_id,product_id,quantity,product_status,order_date) values(2,201,'S105',1,'New',date '2000-06-26');
insert into orders (buyer_id,order_id,product_id,quantity,product_status,order_date) values(3,301,'S103',1,'New',date '2011-07-12');
insert into orders (buyer_id,order_id,product_id,quantity,product_status,order_date) values(4,401,'S104',1,'New',date '2023-08-15');
insert into orders (buyer_id,order_id,product_id,quantity,product_status,order_date) values(5,501,'S105',1,'New',date '2021-09-27');
insert into orders (buyer_id,order_id,product_id,quantity,product_status,order_date) values(6,601,'S106',7,'New',date '2014-02-28');
insert into orders (buyer_id,order_id,product_id,quantity,product_status,order_date) values(7,701,'S107',2,'New',date '2012-03-10');
insert into orders (buyer_id,order_id,product_id,quantity,product_status,order_date) values(8,801,'S108',1,'New',date '2010-05-20');
insert into orders (buyer_id,order_id,product_id,quantity,product_status,order_date) values(9,901,'S109',3,'New',date '2001-10-11');
insert into orders (buyer_id,order_id,product_id,quantity,product_status,order_date) values(10,1001,'S110',1,'New',date '2001-08-06');


select * from orders;


--inserting value into product_availability table
insert into product_availability (product_id,product_availabilityID,product_details) values ('S101','Available','Its a new, top of the line product');
insert into product_availability (product_id,product_availabilityID,product_details) values ('S102','Unavailable','Its a refurbished product');
insert into product_availability (product_id,product_availabilityID,product_details) values ('S103','Available','Its a well review product');
insert into product_availability (product_id,product_availabilityID,product_details) values ('S104','Available','Its a cheap but well received product');
insert into product_availability (product_id,product_availabilityID,product_details) values ('S105','Available','Its a useful product');
insert into product_availability (product_id,product_availabilityID,product_details) values ('S106','Available','Its a powerful product');
insert into product_availability (product_id,product_availabilityID,product_details) values ('S107','Available','Its a brand new product');
insert into product_availability (product_id,product_availabilityID,product_details) values ('S108','Available','Its a pricey product');
insert into product_availability (product_id,product_availabilityID,product_details) values ('S109','Available','Its a day to day product');
insert into product_availability (product_id,product_availabilityID,product_details) values ('S110','Available','Its a good product');


select * from product_availability;

--inserting value into payment table and updating payment_amount option based on price
insert into payment (order_id,payment_id,payment_type,payment_amount) values (100,'Soummo1907101','Cash',0);
update payment set payment_amount=(select (select price from product where product.product_id=ORDERS.PRODUCT_ID)*quantity from orders where orders.order_id=payment.order_id) where order_id=100;
insert into payment (order_id,payment_id,payment_type,payment_amount) values (101,'Soummo1907101','Cash',0); 
update payment set payment_amount=(select (select price from product where product.product_id=ORDERS.PRODUCT_ID)*quantity from orders where orders.order_id=payment.order_id) where order_id=101;
insert into payment (order_id,payment_id,payment_type,payment_amount) values (102,'Soummo1907101','Cash',0);
update payment set payment_amount=(select (select price from product where product.product_id=ORDERS.PRODUCT_ID)*quantity from orders where orders.order_id=payment.order_id) where order_id=102;
insert into payment (order_id,payment_id,payment_type,payment_amount) values (200,'Soummo1907102','Cash',0);
update payment set payment_amount=(select (select price from product where product.product_id=ORDERS.PRODUCT_ID)*quantity from orders where orders.order_id=payment.order_id) where order_id=103;
insert into payment (order_id,payment_id,payment_type,payment_amount) values (201,'Soummo1907102','Cash',0);
update payment set payment_amount=(select (select price from product where product.product_id=ORDERS.PRODUCT_ID)*quantity from orders where orders.order_id=payment.order_id) where order_id=201;
insert into payment (order_id,payment_id,payment_type,payment_amount) values (301,'Soummo1907103','Cash',0);
update payment set payment_amount=(select (select price from product where product.product_id=ORDERS.PRODUCT_ID)*quantity from orders where orders.order_id=payment.order_id) where order_id=301;
insert into payment (order_id,payment_id,payment_type,payment_amount) values (401,'Soummo1907104','Cash',0);
update payment set payment_amount=(select (select price from product where product.product_id=ORDERS.PRODUCT_ID)*quantity from orders where orders.order_id=payment.order_id) where order_id=401;
insert into payment (order_id,payment_id,payment_type,payment_amount) values (501,'Soummo1907105','Cash',0);
update payment set payment_amount=(select (select price from product where product.product_id=ORDERS.PRODUCT_ID)*quantity from orders where orders.order_id=payment.order_id) where order_id=501;
insert into payment (order_id,payment_id,payment_type,payment_amount) values (601,'Soummo1907106','Cash',0);
update payment set payment_amount=(select (select price from product where product.product_id=ORDERS.PRODUCT_ID)*quantity from orders where orders.order_id=payment.order_id) where order_id=601;
insert into payment (order_id,payment_id,payment_type,payment_amount) values (701,'Soummo1907107','Visa Card',0);
update payment set payment_amount=(select (select price from product where product.product_id=ORDERS.PRODUCT_ID)*quantity from orders where orders.order_id=payment.order_id) where order_id=701;
insert into payment (order_id,payment_id,payment_type,payment_amount) values (801,'Soummo1907108','Mastercard',0);
update payment set payment_amount=(select (select price from product where product.product_id=ORDERS.PRODUCT_ID)*quantity from orders where orders.order_id=payment.order_id) where order_id=801;
insert into payment (order_id,payment_id,payment_type,payment_amount) values (901,'Soummo1907109','Credit Card',0);
update payment set payment_amount=(select (select price from product where product.product_id=ORDERS.PRODUCT_ID)*quantity from orders where orders.order_id=payment.order_id) where order_id=901;
insert into payment (order_id,payment_id,payment_type,payment_amount) values (1001,'Soummo1907110','Mobile Banking',0);
update payment set payment_amount=(select (select price from product where product.product_id=ORDERS.PRODUCT_ID)*quantity from orders where orders.order_id=payment.order_id) where order_id=1001;

select * from payment;




--inserting value into managements table
insert into managements (salesman_name,buyer_id,order_id,payment_id,payment_date) values ('Rahim',1,100,'Soummo1907101',date '2023-10-11');
insert into managements (salesman_name,buyer_id,order_id,payment_id,payment_date) values ('Rahim',1,101,'Soummo1907101',date '2022-10-11');
insert into managements (salesman_name,buyer_id,order_id,payment_id,payment_date) values ('Karim',1,102,'Soummo1907101',date '2020-10-11');
insert into managements (salesman_name,buyer_id,order_id,payment_id,payment_date) values ('Karim',2,200,'Soummo1907102',date '2021-10-11');
insert into managements (salesman_name,buyer_id,order_id,payment_id,payment_date) values ('Karim',2,201,'Soummo1907102',date '2014-10-11');
insert into managements (salesman_name,buyer_id,order_id,payment_id,payment_date) values ('Karim',3,301,'Soummo1907103',date '2019-10-11');
insert into managements (salesman_name,buyer_id,order_id,payment_id,payment_date) values ('Karim',4,401,'Soummo1907104',date '2011-10-11');
insert into managements (salesman_name,buyer_id,order_id,payment_id,payment_date) values ('Karim',5,501,'Soummo1907105',date '2003-10-11');
insert into managements (salesman_name,buyer_id,order_id,payment_id,payment_date) values ('Karim',6,601,'Soummo1907106',date '2009-10-11');
insert into managements (salesman_name,buyer_id,order_id,payment_id,payment_date) values ('Karim',7,701,'Soummo1907107',date '2006-10-11');
insert into managements (salesman_name,buyer_id,order_id,payment_id,payment_date) values ('Karim',8,801,'Soummo1907108',date '2004-10-11');
insert into managements (salesman_name,buyer_id,order_id,payment_id,payment_date) values ('Karim',9,901,'Soummo1907109',date '2002-10-11');
insert into managements (salesman_name,buyer_id,order_id,payment_id,payment_date) values ('Karim',10,1001,'Soummo1907110',date '2002-10-11');
select * from managements;

--displaying all info from buyerinfo table using ID
select * from buyerinfo where buyer_id=6;


--displaying all info from orders table using ID which was derived fron buyer_name from buyerinfo table
select * from orders where buyer_id=(select buyer_id from buyerinfo where buyer_name='Joy');

--updating and then viewing payement type by using buyer_name
update payment set payment_type='Debit Card' where order_id=(select order_id from orders where buyer_id=(select buyer_id from buyerinfo where buyer_name='Kazi') );
select * from payment where order_id=(select order_id from orders where buyer_id=(select buyer_id from buyerinfo where buyer_name='Kazi') );

--inserting then deleting a value
insert into buyerinfo values (12,'Tuli','Naraynganj','l@gmail.com','01999999999');
delete from buyerinfo where buyer_name='Tuli';
select * from buyerinfo;

--Various types of string comparisons 
select * from PRODUCT where product_brand like 'S%' union select * from product where product_brand like '%e';
 
select * from buyerinfo where buyer_name like 'K%' union select * from buyerinfo where buyer_name like '%i';
select * from buyerinfo where buyer_name like 'K%' or buyer_name like 'M%' or buyer_name like 'J%' ;

select * from buyerinfo where buyer_name like 'K%' and buyer_name like '%i';
select * from buyerinfo where buyer_name like 'K%' intersect select * from buyerinfo where buyer_name like '%i';

select * from buyerinfo where buyer_name like '%i' AND not buyer_name LIKE'M%';
select * from buyerinfo where buyer_name like '%i' minus select * from buyerinfo where buyer_name like 'M%';

select * from product where product_brand like 'Gigabyte';

select * from buyerinfo where buyer_name like '_____'; --5 char len

--distinct buyer_id getting from orders table
select Distinct (buyer_id)from orders;

--comaparison in where clause
select * from payment where payment_amount>1000;

select * from payment where payment_amount between 1000 and 2000.5;

select * from payment where payment_amount in (3000,7003.5);

--product in descending order of price
select * from product order by price desc;

--counting 
select count(buyer_id) as total_buyer_with_duplication from orders;
select count (Distinct  ( buyer_id ) ) as total_buyer_without_duplication  from orders;
--counting and group by
select salesman_name,count(buyer_id) as total_customer_per_salesman_with_duplicate from managements group by salesman_name;
select salesman_name,count(Distinct(buyer_id)) as total_customer_per_salesman_without_duplicate from managements group by salesman_name;

--Total money spent grouped by Buyer
select buyer_id,(select buyer_name from buyerinfo where buyerinfo.buyer_id=orders.buyer_id),sum ((select payment_amount from payment where payment.order_id=orders.Order_id)) as Total_Money_Spent from orders group by buyer_id;
--Average money spent per order and grouped by Buyer
select buyer_id,(select buyer_name from buyerinfo where buyerinfo.buyer_id=orders.buyer_id),avg ((select payment_amount from payment where payment.order_id=orders.Order_id)) as Total_Money_Spent from orders group by buyer_id;
--product brands which has less then 6 products 
select product_brand,count(product_brand) from product group by product_brand having count(product_brand)<6;

--join
select * from buyerinfo natural join orders ;
select * from buyerinfo natural join orders where buyer_id=1;
select * from buyerinfo join orders on buyerinfo.buyer_id= orders.BUYER_ID ;
select * from buyerinfo join orders using(buyer_id) ;
select * from buyerinfo join orders on buyerinfo.buyer_id= orders.BUYER_ID and orders.buyer_id=1 ;
select * from buyerinfo left outer join orders using(buyer_id) ;
select * from buyerinfo right outer join orders using(buyer_id) ;
select * from buyerinfo inner join orders using(buyer_id) ;
select * from buyerinfo full outer join orders using(buyer_id) ;
select * from buyerinfo full outer join orders on BUYERINFO.BUYER_ID=orders.buyer_id;

--sum of price of every products grouped by product brands
select product_brand,sum(price) from product group by product_brand;
--some
select * from buyerinfo where buyer_id> some(select buyer_id from buyerinfo where buyer_id>=5);
--all
select * from buyerinfo where buyer_id> all(select buyer_id from buyerinfo where buyer_id<=5);


insert into Product (product_id,product_type,product_name,price,product_brand) values  ('S111','Monitor', 'MSI Monitor',999.20,'MSI');

--exist (all samsung brands )
select * from product p where exists(select product_name from product s where p.product_id=s.product_id and product_brand='Samsung' );
--not exist(non samsung brands)
select * from product p where not exists(select product_name from product s where p.product_id=s.product_id and product_brand='Samsung' );

--max price of a product grouped by brand
select product_brand,max(price) from product group by product_brand;

--creating view as samsung products to store all samsung brand products and then viewing and dropping the view
create view Samsung_Products as select * from product where product_brand='Samsung';
select * from samsung_products;
drop view samsung_products;

--distinct name of three buyers with highest price order
select distinct b.buyer_name
from payment m
join managements p ON  m.payment_id = p.payment_id
join buyerinfo b ON b.buyer_id = p.buyer_id
order by m.payment_amount DESC
fetch first 3 rows only;

