use CL;

create table customer(
customer_id int ,
[first name]  varchar(100),
[last name]  varchar(100),
age int,
country  varchar(100)
);


insert into customer values(12,'ALI','ahamad',12,'UK');
insert into customer values(13,'zain','khan',22,'lahore');
insert into customer values(3,'zain','khan',22,'KARACHI');
insert into customer values(5,'BAKTHAWAR','UJIIIk',23,'USA');


create table orders(
order_id int primary key,
item  varchar(100),
amount int,
customer_id int,
);


insert into orders values(1,'keyboard',1200,12);
insert into orders values(2,'mouse',400,13);
insert into orders values(7,'monitor',4400,5);



create table shipping(
shipping_id int,
[status] varchar(100),
customer_id int);


select * from shipping;
insert into shipping values(19,'Pending',12);
insert into shipping values(22,'Delivered',13);
insert into shipping values(6,'Pending',5);


select customer. [first name],orders.item,shipping.status
from orders
join customer
on customer.customer_id = orders.customer_id
join shipping
on shipping.customer_id = customer.customer_id
where customer.country = 'lahore' and shipping.status ='Delivered';