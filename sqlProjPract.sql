-- use mdc_ch02;
-- select * from INVOICE_ITEM;
use cape_codd;
/*select Buyer, SKU_DATA.SKU, SKU_Description,
sum(ExtendedPrice) as BuyerSKURevenue
from SKU_DATA, ORDER_ITEM
where SKU_DATA.SKU = ORDER_ITEM.SKU
group by buyer, SKU_DATA.SKU, SKU_Description
order by BuyerSKURevenue desc;*/

/*select FirstName, LastName, InvoiceNumber, TotalAmount
from CUSTOMER, INVOICE
where CUSTOMER.CustomerID= INVOICE.CustomerID
order by CUSTOMER.CustomerID;

select FirstName, LastName, sum(TotalAmount) as TotalAmount
from CUSTOMER, INVOICE
where CUSTOMER.CustomerID = INVOICE.CustomerID
group by CUSTOMER.CustomerID
order by CUSTOMER.CustomerID;*/
-- use mdc_ch02;
/* select * retail_order.ordernumber , order_item from RETAIL_ORDER, ORDER_ITEM
where RETAIL_ORDER.OrderNumber = ORDER_ITEM.OrderNumber;*/

/*select RETAIL_ORDER.OrderNumber,StoreNumber,StoreZip,OrderMonth,OrderYear,OrderTotal,SKU,Quantity,Price,ExtendedPrice
from RETAIL_ORDER, ORDER_ITEM
where RETAIL_ORDER.OrderNumber=ORDER_ITEM.OrderNumber;*/
use cape_codd;
-- select * from order_item, retail_order;
select price, quantity, extendedprice, storenumber,storezip, ordertotal, sum(price + extendedprice + ordertotal) as totalorder, ORDER_ITEM.OrderNumber, avg(ORDERTOTAL) AS averageorder
from ORDER_ITEM join RETAIL_ORDER on
ORDER_ITEM.OrderNumber = RETAIL_ORDER.OrderNumber
group by price, quantity, extendedprice, storenumber,storezip, ordertotal,ORDER_ITEM.OrderNumber;

/*select price, quantity, extendedprice, storenumber,storezip, ordertotal
from ORDER_ITEM, RETAIL_ORDER
where OrderMonth like 'dec%' ;*/

select price, quantity, extendedprice, storenumber,storezip, ordertotal, sum(price + extendedprice + ordertotal) as totalorder, ORDER_ITEM.OrderNumber, avg(ORDERTOTAL) AS averageorder
from ORDER_ITEM, RETAIL_ORDER 
where ORDER_ITEM.OrderNumber = RETAIL_ORDER.OrderNumber
group by price, quantity, extendedprice, storenumber,storezip, ordertotal,ORDER_ITEM.OrderNumber;

/*select price, quantity, extendedprice, storenumber,storezip, ordertotal, sum(price + extendedprice + ordertotal) as totalorder, ORDER_ITEM.OrderNumber, avg(ORDERTOTAL) AS averageorder, (firstname+' in '+lastname) as sq
from ORDER_ITEM, RETAIL_ORDER, customer
where ORDER_ITEM.OrderNumber = RETAIL_ORDER.OrderNumber
group by price, quantity, extendedprice, storenumber,storezip, ordertotal,ORDER_ITEM.OrderNumber;*/

select  distinct buyername,department from buyer;