select* from flipcart_products

create or replace function check_price(productId numeric)
returns varchar as $$
declare 
     price_status varchar;
     sum_of_Price numeric;

begin
  select sum(price)into sum_of_price from flipcart_products where product_id=productId;
	if sum_of_price > 9940.69 then price_status:='price is maximum';
	else price_status :='price is minimum';
    end if;
    return price_status;
end;

$$language plpgsql

select check_price(9940.69)

select product_name,rating ,price, check_price(rating)from flipcart_products

