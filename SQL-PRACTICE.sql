use sakila;

show tables;

select * from address;

select count(address), count(address2) from address;

select * from product;

select * from orders;

select pr.id, pr.pname, pr.amount, ord.productid, ord.location from product as pr inner join orders as ord on pr.id = ord.productid;

select pr.id, pr.pname, pr.amount, ord.productid, ord.oid, ord.location from product as pr inner join orders as ord on pr.id = ord.productid;

select ord.oid, ord.location, ord.productid, pr.id, pr.pname, pr.amount from orders as ord left join product as pr on ord.productid = pr.id;

select ord.oid, ord.location, ord.productid, p.id, p.pname, p.amount from orders as ord right join product as p on ord.productid = p.id; 

select  p.id, p.pname, p.amount, ord.oid, ord.location, ord.productid from product as p right join orders as ord on ord.productid = p.id;

 select * from actor;
 
 select * from film_actor;
 
 -- Q1. kis actor ki kaunsi film_id hai
 select a.actor_id, a.first_name, a.last_name, fa.film_id from actor as a join film_actor as fa on a.actor_id = fa.actor_id; 
 
 select * from cities;
 
 -- Q2. find total number of cutomer in each city 
 select city, count(customer_name) as total_number_customer from cities group by city;
 
 -- Q3. find how many unique customer in each city
 select city, count(distinct customer_name) as unique_customer from cities group by city;
 
 -- Q4. find the city where more than two customer live
 select city, count(customer_name) as total_custmers from cities group by city having count(customer_name) > 2;
 
 -- Q5. find total customer and sort result by highest number of customers in each city
 select city, count(customer_name) as total_number_customer from cities group by city order by total_number_customer desc;
 
 -- Q6. find how many customers have same name in different cities 
select customer_name, count(distinct city) from cities group by customer_name having count(distinct city) > 1; 