SELECT productID AS �����١���, productName as �����١���, unitprice, UnitsInstock ,unitprice *UnitsInstock as stockvalue 
from   products  

SELECT * FROM products 

SELECT productID AS �����١���, productName as �����١���, unitprice, UnitsInstock + Unitsonorder , reorderlevel 
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


select min(unitprice)as �Ҥҵ���ش  , max(unitprice)as �Ҥ��٧�ش , avg(unitprice) as �Ҥ������ 
from products

select min(unitprice)as �Ҥҵ���ش  , max(unitprice)as �Ҥ��٧�ش , avg(unitprice) as �Ҥ������
FROM [order details]
where  productID = 5 
 
select *
FROM [order details]
where  productID = 5 
 
select country ,count(*) as �ӹǹ�١���
from customers
group by country  
order  by [�ӹǹ�١���] desc

select country , city,count(*) as �ӹǹ�١���
from customers
group by country  , city
order  by [�ӹǹ�١���] desc

select shipcountry,count(*)
from orders
group by shipcountry
having count(*)>100

select country ,count(*) as �ӹǹ�١���
from customers
group by country 
having count(*) <5
order  by [�ӹǹ�١���] desc


select country , city,count(*) as �ӹǹ�١���
from customers
group by country  , city
having count(*)>1

select  shipcountry ,count(*)
from orders
where YEAR(OrderDate) = 1997
group by shipcountry
having count(*)<5

select productID , sum(quantity) ,min(unitprice)as �Ҥҵ���ش  , max(unitprice)as �Ҥ��٧�ش , avg(unitprice) as �Ҥ������
from [order details]
group by productID
order by productID


select  orderID ,
       unitprice * quantity * (1-discount) as netprice
FROM [order details]

select orderID , sum(unitprice*quantity *(1-discount)) as totaprice
from [order details]
group by orderID

