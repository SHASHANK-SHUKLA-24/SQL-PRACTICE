use sakila;

select * from product;

select * from orders;

select p.id, p.pname, p.amount, o.oid, o.location, o.productid from product as p join orders as o on p.id = o.productid;

select p.id, p.pname, p.amount, o.oid, o.location, o.productid from product as p left join orders as o on p.id = o.productid;

select o.oid, o.location, o.productid, p.id, p.pname, p.amount from orders as o left join product as p on o.productid = p.id;

select o.oid, o.location, o.productid, p.id, p.pname, p.amount from orders as o right join product as p on o.productid = p.id;

select p.id, p.pname, p.amount, o.oid, o.location, o.productid from product as p right join orders as o on p.id = o.productid;

select * from actor;

select * from film_actor;

select a.actor_id, a.first_name, a.last_name, fa.film_id from actor as a join film_actor as fa on a.actor_id = fa.actor_id;

select * from employee81;

select e.eid, e.name, e.managerid, mgr.name as manager_name from employee81 as e left join employee81 as mgr on e.managerid = mgr.eid;

select e.eid, e.name, e.managerid, mgr.name from employee81 as e left join employee81 as mgr on e.managerid = mgr.eid;

select * from courses;

select c.courseid, c.coursename, c.prerequisitecourseid, pr.coursename from courses as c left join courses as pr on c.prerequisitecourseid = pr.courseid;





