select *
from actor
where last_name = 'Wahlberg'

--1. How many actors are there with the last name ‘Wahlberg’? 
--Answer:  2 Nick and Daryl


select customer_id, amount 
from payment 
where amount between 3.99 and 5.99

--2. How many payments were made between $3.99 and $5.99? 
--Answer: 0



select film_id, count(film_id) as film_count
from inventory
group by film_id
order by film_count desc

--3. What film does the store have the most of? (search in inventory) 
--Answer: there is a 72 way tie with 8 each  1, 31, 69, 73, 86, 91, 109, 127, 174, 193, 199, 220, 231, 239, 266, 295, 
-- 301, 331, 341, 350, 358, 361, 369, 378, 382, 403, 412, 418, 434, 444, 460, 489, 500, 525, 531, 559, 572, 586, 595, 609, 
--621, 638, 683, 697, 702, 730, 738, 745, 748, 753, 764, 773, 789, 835, 846, 849, 856, 870, 873, 880, 893, 897, 911, 945, 973, 1000

select *
from customer
where last_name = 'William'

--4. How many customers have the last name ‘William’? 
--Answer: 0


select count(payment_id),staff_id 
from payment
group by staff_id
order by count desc; 

--5. What store employee (get the id) sold the most rentals? 
--Answer: John Stephens (id=2)

select count(district),
district from address
group by district 
order by count desc;

--6. How many different district names are there? 
--Answer: 378

select count(actor_id),
film_id from film_actor
group by film_id
order by count desc;

--7. What film has the most actors in it? (use film_actor table and get film_id) 
--Answer: Lambs Cincinatti(film_id= 508)

select last_name
from customer
where last_name like '%es';

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
--Answer: 21  

select count(amount),
amount from payment
where customer_id between 380 and 430
group by amount
order by count desc;

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers  with ids between 380 and 430? (use group by and having > 250)
--Answer: 3

select count(film_id),
rating from film
group by rating
order by count desc;

--10. Within the film table, how many rating categories are there? And what rating has the most  movies total?
--Answer: 5, PG-13




