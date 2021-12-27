create temporary table products_below_avg
select productid, productname, price
from products
where price < (select avg(price) from products);

drop table products_below_avg;


show table status;

select * from products_below_avg;