use sakila;

select * from payment;


-- Q1. each staff done how many total number of  payments
select staff_id as each_staff, count(amount) as total_number_payments from payment group by staff_id;


-- Q2. i need to get only that staff_id whose total number of payments is greater than 8000
select staff_id, count(amount) as total_number_payment from payment group by staff_id having count(amount) > 8000; 


-- Q3. i need to findout how many total number of payment done by staff_id = 1 for the amount is 2.99
select staff_id, amount, count(amount) from payment where amount = 2.99 and staff_id = 1; 


-- Q4. each staff done how many total number of transcation for each amount 
select staff_id, amount, count(amount) as total_number_transcation from payment group by staff_id, amount;


-- Q5. i need to get only that staff_id, amount whose total number of transcation is greater than 1000
select staff_id, amount, count(amount) as total_number_transcation from payment group by staff_id, amount having count(amount) > 1500;


-- Q6. average quantity sold per product
select product_name as per_product, avg(quantity_sold) as average_quantity_sold from sales group by product_name order by average_quantity_sold asc;


-- Q7. number of distinct product sold per region 
select region as per_region, count(distinct product_name) as number_distinct_product_sold from sales group by region;


-- Q8. number of transcation per product per region
select product_name as per_product, region as per_region, count(sale_id) as number_of_transcation from sales group by product_name, region;
 
-- Q9. identify region where more than two types of product were sold
select region, count(distinct product_name) as products from sales group by region having count(distinct product_name) > 2;

-- Q10. total quantity and average price per unit of "mobile" across all region
select region, sum(quantity_sold) as total_quantity, avg(price_per_unit) as average_price_per_unit from sales where product_name = 'Mobile' group by region;  


select * from sales;
show tables;