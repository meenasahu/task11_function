select* from flipcart_products

select distinct max(rating) from flipcart_products
---------------------------------------------------------------------
create or replace function checkRating(rating numeric)
returns varchar as $$ 
declare 
	output varchar;
begin 
	if rating >4.00 then output:='good rating';
	else output:='low rating';
end	if;
return output;
end
$$ language plpgsql

select checkRating(4.6)

select rating , checkRating(rating)from flipcart_products
-----------------------------------------------------------------------------------------------

create or replace function Check_brandPrice_pro(brand varchar)
returns varchar as $$
declare 
	output varchar;
begin 
	case 
			When brand = 'Nike'  THEN  output := 'its a good price product';
			When brand = 'Amazon'  THEN  output := 'its a best price product';
			When brand = 'Canon'  THEN  output := 'its a normal price product';
			Else brand := 'normal range product';
	END CASE;
	return output;
	
end
$$ language plpgsql;

select Check_brandPrice_pro('Nike')
