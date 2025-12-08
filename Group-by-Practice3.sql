use sakila;

select * from product;

show tables;

select * from p1;

select * from orders;

select * from product;

select pro.id, pro.pname, pro.amount, ord.oid, ord.productid, ord.location from product as pro inner join orders as ord on pro.id = ord.productid;

select ord.oid, ord.location, ord.productid, pro.id, pro.pname, pro.amount from orders as ord left join product as pro on ord.productid = pro.id;

select * from actor;

select * from film_actor;

select a.first_name, a.last_name, fa.film_id from actor as a inner join film_actor as fa on a.actor_id = fa.actor_id;

-- Q. find total number of customers in each city
select city, count(customer_name) as total_number_customer from cities group by city;


-- Q. find how many unique customer in each city
select city, count(distinct customer_name) as unique_customer from cities group by city;


-- Q. find those cities where more than 2 customer live
select city, count(customer_name) as total_customers from cities group by city having count(customer_name) > 2;


