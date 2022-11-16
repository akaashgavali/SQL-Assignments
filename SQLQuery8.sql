
select*from products
alter function dis_productprice_products
(
@productprice decimal
)
returns decimal
as begin
declare @disprice decimal;
set @disprice=@productprice-(@productprice *0.10);
return @disprice
end

select productname,productprice,dbo_productprice_products(productprice)from products

