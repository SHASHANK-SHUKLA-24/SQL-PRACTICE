use sakila;

select * from sales;

-- Q. Find total sales revenue per year
select year(sale_date)  as per_year, sum(quantity_sold * price_per_unit) as total_sales_revenue from sales group by year(sale_date);


-- Q. find total sales revenue per year and per month
select year(sale_date) as per_year, month(sale_date) as per_month, sum(quantity_sold * price_per_unit) as total_sales_revenue from sales group by year(sale_date), month(sale_date);


-- Q. each staff done how many total number of payments
select staff_id, count(amount) as total_number_payments from payment group by staff_id;

-- Q. i need to get only that staff_id whose total number of payments is greater than 8000
select staff_id, count(amount) as total_number_payments from payment group by staff_id having count(amount) > 8000;

-- Q. i need to findout staff_id = 1 done how many total number of payments of amount is 2.99
select staff_id, amount, count(amount) as total_number_payments from payment where staff_id = 1 and amount = 2.99;  

-- Q. i need to findout each staff done how many total number of transcation for each amount
select staff_id, amount, count(amount) as total_number_transcation from payment group by staff_id, amount;

-- Q. i need to get only that staff_id and amount whose total number of transcation is greater than 1000
select staff_id, amount, count(amount) as total_number_transcation from payment group by staff_id, amount having count(amount) > 1000; 