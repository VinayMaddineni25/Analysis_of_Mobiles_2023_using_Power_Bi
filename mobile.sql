use mobiles;
select * from mobile;
-- check mobile features and price list--
select phone_name, price from mobile;

-- Find out the price of 5 most expensive phones--
select * from mobile
order by price desc
limit 5;
-- Find out the price of 5 most cheapest phones --
select * from mobile
order by price asc
limit 5;
-- List of top 5 Samsung phones with price and all features --
select * from mobile where brands = "Samsung"
order by price desc
limit 5;
-- Must have android phone list then top 5 high price android phones --
select * from mobile where operating_System_Type = "Android"
order by price desc
limit 5;
-- Must have android phone list then top 5 lower price android phones --
select * from mobile where operating_System_Type = "Android"
order by price asc
limit 5;
-- Must have IOS phone list then top 5 High price IOS phones --
select * from mobile where operating_System_Type = "iOS"
order by price desc
limit 5;
-- Must have IOS phone list then top 5 lower price IOS phones --
select * from mobile where operating_System_Type = "iOS"
order by price asc
limit 5;
-- write a query which phone support 5g and also top 5 phone with 5g support --
select * from mobile where 5g_availability = "Yes"
order by price desc
limit 5;
-- Total price of all mobile is to be found with brand name --
select brands, sum(price) from mobile group by brands;
