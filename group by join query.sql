use Art;

create table orderss(
id int primary key,
item  varchar(100),
amount int,
customer_id int,
);

select * from orderss;

insert into orderss values(1,'keyboard',1200,12);
insert into orderss values(2,'mouse',400,2);
insert into orderss values(3,'monitor',2200,5);
insert into orderss values(4,'keyboard',5600,6);
insert into orderss values(5,'key pad',3900,34);
insert into orderss values(6,'monitor',4400,55);




create table customer(
id int ,
[first name]  varchar(100),
[last name]  varchar(100),
age int,
country  varchar(100),
customer_id int,
);

select * from customer;
insert into customer values(1,'ALI','ahamad',12,'UK',12);
insert into customer values(2,'zain','khan',22,'lahore',9);
insert into customer values(3,'warda','maram',29,'korean',10);
insert into customer values(4,'zafer','ali',40,'karachi',16);
insert into customer values(15,'wajad','wakar',66,'USA',13);
insert into customer values(19,'joans','wak',60,'island',22);



create table shipping(
id int primary key,
shipping_id int,
status varchar(100),
customer_id int,
);
select * from shipping;
insert into shipping values(1,19,'pending',12);
insert into shipping values(2,11,'pending',13);
insert into shipping values(3,90,'Delivered',16);
insert into shipping values(4,55,'pending',22);
insert into shipping values(5,33,'Delivered',10);
insert into shipping values(6,88,'Delivered',9);







SELECT customer.[first name],order_line.item,shipping.status
FROM order_line
join customer
on customer.customer_id =order_line.customer_id
join shipping
on shipping.customer_id=customer.customer_id
Where customer.country ='USA'and shipping.status='pending';



SELECT COUNT(item),item FROM orderss GROUP BY item ORDER BY amount;

select item from orderss where amount != '400';

select * from orderss where amount between 1200 and 2200;


select * from orderss where item like 'm%';


