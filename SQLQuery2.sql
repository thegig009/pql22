SELECT productID AS รหัสลูกค้า, productName as ชื่อลูกค้า, unitprice, UnitsInstock ,unitprice *UnitsInstock as stockvalue 
from   products  

SELECT * FROM products 

SELECT productID AS รหัสลูกค้า, productName as ชื่อลูกค้า, unitprice, UnitsInstock + Unitsonorder , reorderlevel 
from   products  
where ( UnitsInstock  + Unitsonorder ) < reorderlevel

SELECT productID,productName ,unitprice , round(unitprice * 0.07,4)as vat7
from   products  

SELECT orderID , productID ,unitprice , quantity , discount ,
       unitprice * quantity * (1-discount) as netprice
FROM [order details]
where orderID = 10250 

select count(*)
from products
where UnitsInstock <15 

select count(*) from employees

select count(*)
FROM [order details]
where orderID = 10250 

select count(*) from orders where shipcountry = 'japan'


select min(unitprice)as ราคาต่ำสุด  , max(unitprice)as ราคาสูงสุด , avg(unitprice) as ราคาเฉลี่ย 
from products

select min(unitprice)as ราคาต่ำสุด  , max(unitprice)as ราคาสูงสุด , avg(unitprice) as ราคาเฉลี่ย
FROM [order details]
where  productID = 5 
 
select *
FROM [order details]
where  productID = 5 
 
select country ,count(*) as จำนวนลูกค้า
from customers
group by country  
order  by [จำนวนลูกค้า] desc

select country , city,count(*) as จำนวนลูกค้า
from customers
group by country  , city
order  by [จำนวนลูกค้า] desc

select shipcountry,count(*)
from orders
group by shipcountry
having count(*)>100

select country ,count(*) as จำนวนลูกค้า
from customers
group by country 
having count(*) <5
order  by [จำนวนลูกค้า] desc


select country , city,count(*) as จำนวนลูกค้า
from customers
group by country  , city
having count(*)>1

select  shipcountry ,count(*)
from orders
where YEAR(OrderDate) = 1997
group by shipcountry
having count(*)<5

select productID , sum(quantity) ,min(unitprice)as ราคาต่ำสุด  , max(unitprice)as ราคาสูงสุด , avg(unitprice) as ราคาเฉลี่ย
from [order details]
group by productID
order by productID


select  orderID ,
       unitprice * quantity * (1-discount) as netprice
FROM [order details]

select orderID , sum(unitprice*quantity *(1-discount)) as totaprice
from [order details]
group by orderID

