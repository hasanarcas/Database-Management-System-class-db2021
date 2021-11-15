select * from shippers;

select shippername, count(orderid)
from orders join shippers on orders.shipperid=shippers.shipperid
group by orders.shipperid;

select orders.shipperid, count(orderid)
from orders join shippers on orders.shipperid=shippers.shipperid
group by orders.shipperid;

select customername, orderid
from customers left join orders on customers.customerid=orders.customerid
order by orderid;

select firstname, lastname, orderid
from orders right join employees on orders.employeeid=employees.employeeid
order by orderid;