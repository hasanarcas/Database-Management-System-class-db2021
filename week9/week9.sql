select * from customers;
update customers set Country = replace(Country, '\n', '');
update customers set City = replace(City, '\n', '');

create view mexicanCustomers as
select customerid, customername, contactname
from customers
where country = "Mexico";

select * from mexicancustomers;

select *
from mexicancustomers join orders on mexicancustomers.customerid=orders.CustomerID;

create view productsbelowavg as
select productid, productname, price
from products
where price < (select avg(price) from products);

delete from orderdetails where prodcutid = 5;
truncate orderdetails;

delete from customers;
delete from orders;

drop table customers;