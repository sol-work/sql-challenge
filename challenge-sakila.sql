SHOW DATABASES;
USE SAKILA;
SHOW TABLES;
#q1
SELECT * FROM actor;

#q2
SELECT last_name from actor where first_name='John';

#q3
Select * from actor where last_name = 'Neeson';

#q4
select * from actor where mod(actor_id, 10) = 0;

#q5
select * from film;
select description from film where film_id=100;

#q6
select * from film where rating='R';

#q7
select * from film where not rating ='R';

#q8
select * from film where length is not null order by length asc limit 10;

#q9 come back to this
select * from film where length is not null order by length asc;
#use nested query
#max length of film 
#find longest runtime

select title, length from film where length = ( select max(length) from film );

#q10
select * from film where special_features='Deleted Scenes';

#q11
select count(actor_id), last_name from actor group by last_name having count(actor_id)=1 order by last_name desc;

#q12
select * from film_actor;
select count(actor_id), last_name 
from actor 
group by last_name 
having count(actor_id)>1 
order by count(actor_id) 
desc;

#q13
select count(f.actor_id), a.first_name, a.last_name, f.film_id, f.actor_id 
from actor a 
join film_actor f 
on a.actor_id=f.actor_id
group by f.actor_id 
order by count(f.actor_id) desc limit 1;

#q14
select * from film;
select * from rental;
show tables; 
select * from inventory;

select * from inventory where inventory_id<=8;
#actual answer
select f.title, i.film_id, i.inventory_id, r.rental_date
from rental r 
join inventory i 
on i.inventory_id=r.inventory_id
join film f
on  i.film_id=f.film_id 
where f.title = 'Academy Dinosaur'
order by return_date desc;

#q15
select avg(length) from film;

#q16
select * from category;
select * from film_category;

select c.name, avg(f.length)
from category c
join film_category fc 
on fc.category_id=c.category_id
join film f 
on f.film_id=fc.film_id
group by c.name
order by avg(f.length) desc;

#q17
select * from film where description like '%Robot%';

#q18 none released in 2010
select * from film;
select count(film_id) from film where release_year = 2010;

#q19
select c.name, f.title
from category c
join film_category fc 
on fc.category_id=c.category_id
join film f 
on f.film_id=fc.film_id
where c.name = 'Horror';



#q20
select first_name, last_name, staff_id from staff where staff_id=2;

#q21
select * from actor;

select a.actor_id, fa.film_id, a.first_name, a.last_name, f.title
from film_actor fa
join actor a 
on a.actor_id = fa.actor_id
join film f 
on f.film_id=fa.film_id
where a.first_name ='Fred' 
and a.last_name = 'Costner';

#q22
select distinct count(country_id) from country;

#q23
select name from language order by name desc;

#q24 List the full names of every actor whose surname ends with '-son' in alphabetical order by their forename.

select first_name, last_name 
from actor 
where last_name 
like '%son' 
order by first_name asc;

#q25

select c.name, count(f.film_id)
from category c
join film_category fc 
on fc.category_id=c.category_id
join film f 
on f.film_id=fc.film_id
group by c.name
order by count(film_id) desc;

