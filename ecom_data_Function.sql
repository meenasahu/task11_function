--if  high order date category otherwise low order  date category
create or replace function function_order(order_date date)
returns varchar as $$
declare 
	output varchar;
begin 
	if order_date< current_date then output:='high order date category ';
	else output:='low order date category' ;
	end if ;
	return output;
	
end
$$ language plpgsql
	
select function_order('2024-08-15')


select * from customer
	----------------------------------------------------------------------------------------
create or replace function fuction_postal (post_code bigint)
returns varchar as $$
declare 
	output varchar;
begin 
	if post_code between 75080 and 77041  then output:='from texas state ';    
	else output:='Not known' ;
	end if ;
	return output;
	
end
$$ language plpgsql;

select fuction_postal(75080)

--------------------------------------------------------------------------
--if texas found then united state otherwise from india
create or replace function CheckState (state varchar)
returns varchar as $$
declare 
	output varchar;
begin 
	if state = 'Texas'  then output:=' from the united state ';    
	else output:='from the india' ;
	end if ;
	return output;
	
end
$$ language plpgsql;

select CheckState('Minnesota')

select * from customer 
	----------------------------------------------------------------------------------------
--greater than 219 then maximum profit otherwise minimum
create or replace function Checkprofit(prof_value double precision)
returns varchar as $$
declare 
	output varchar;
begin 
	if prof_value >219.582 then output:='the maximum profit ';
	else output:='the minimum value' ;
	end if ;
	return output;
	
end
$$ language plpgsql;

select quantity ,Checkprofit(profit)from sales

------------------------------------------------------------------
--checking category if furniture then bookcases ,office supplies then labels and technology then phones otherwise not define
select * from product

create or replace function CheckCategory(cat_name varchar)
returns varchar as $$
declare 
	output varchar;
begin 
	case 
			When cat_name = 'Furniture'  THEN  output := 'Sub_Category is BookCases';
			When cat_name = 'Office Supplies'  THEN  output := 'Sub_Category Labels';
			When cat_name = 'Technology'  THEN  output := 'Sub_Category is Phones';
			Else cat_name := 'not define';
	END CASE;
	return output;
	
end
$$ language plpgsql;

select CheckCategory('Furniture')