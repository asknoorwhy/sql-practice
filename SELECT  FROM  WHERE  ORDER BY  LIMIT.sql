use sakila;

/*
DAY 1 - 20 BUSINESS QUESTIONS (Sakila customer table)
*/

-- 1. Show first 10 customers
select * from customer limit 10;
-- 2. Store 1 customers only
select * from customer where store_id = 1;
-- 3. Active customers only
select * from customer where active is not null;
-- 4. Customers with M first name
select first_name from customer where first_name like '%M%';
-- 5. 10 newest customers
select * from customer
order by create_date desc
limit 10;
-- 6. Store 1 OR Store 2 customers
select * from customer
where store_id = 1 or 2;
-- 7. Last name contains "son"
select last_name from customer
where last_name like '%son%';
-- 8. Customers joined after 2006
select * from customer
where create_date > 2006;
-- 9. Gmail email customers
select email from customer;
-- 10. Top 5 customers A-Z order
select * from customer
order by first_name,last_name asc
limit 5;
-- 11. Store 1 sorted alphabetically
select * from customer
where store_id =1
order by store_id asc;
-- 12. 10 newest with join dates
select * from customer
order by create_date desc
limit 10;
-- 13. Inactive customers sorted by date
select * from customer
where active is null
order by create_date desc;
-- 14. Store 2 all customers
select * from customer
where store_id = 2;
-- 15. First name J or K
select * from customer
where first_name like '%J%' or '%K%';
-- 16. Store 1 active customers only
select * from customer
where store_id = 1 and active is null ;
-- 17. Customers with email (not null)
select * from customer
where email is not null;
-- 18. Customer ID between 50-100
select * from customer
where customer_id between 50 and 100;
-- 19. Customers named MARY or PATRICIA
select * from customer
where  concat() and first_name as full_name and full_name like '%MARY%' or '%PATRICIA%'
-- 20. Sort by store then last name
