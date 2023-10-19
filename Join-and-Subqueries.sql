select first_name, last_name
from customer
inner join address
on address.address_id = customer.address_id and address.district = 'Texas';
--1. List all customers who live in Texas (use JOINs)
--ANSWER: Jennifer Davis, Kim Cruz, Richard Mccrary, Bryan Hardison, Ian Still
select first_name, last_name, payment.payment_id, payment.amount
from customer
inner join payment
on payment.customer_id = customer.customer_id and payment.amount > 6.99;Peter	Menard



--2. Get all payments above $6.99 with the Customer's Full Name
--ANSWER: Peter	Menard, Douglas	Graf,Mary	Smith, Alfredo	Mcadams, Harold	Martino, Alvin	Deloach

select first_name, last_name
from customer
where customer_id in (
	select customer_id 
	from payment
	group by customer_id
	having max(amount) > 175
);
--3. Show all customers names who have made payments over $175(use subqueries)
--ANSWER: Mary Smith, Douglas Graf

select country_id 
from country
where country = 'Nepal';

select first_name, last_name
from customer
where address_id in (
	select address_id
	from address
	where city_id in (
		select city_id
		from address
		where city_id in (
			select city_id
			from city
			where country_id = 66
		)
	)
);

--4. List all customers that live in Nepal (use the city table)
--ANSWER: Kevin Schuler

select staff_id, count(payment_id)
from payment 
group by staff_id
order by count(payment_id) desc;

select first_name, last_name, staff_id 
from staff
where staff_id = 2;

--5. Which staff member had the most transactions?
--ANSWER: Jon Stephens

select rating, count(film_id)
from film
group by rating order by count(film_id) desc;

--6. How many movies of each rating are there?
--ANSWER: PG-13 224, NC-17 209, R 196, PG 194, G 178

select first_name, last_name
from customer
where customer_id in (
	select customer_id 
	from payment
	group by customer_id 
	having max(amount) > 6.99
);

--7.Show all customers who have made a single payment above $6.99 (Use Subqueries)
--ANSWER: Peter	Menard, Douglas	Graf,Mary	Smith, Alfredo	Mcadams, Harold	Martino, Alvin	Deloach

select COUNT(rental)
from rental
inner join payment
on rental.rental_id = payment.rental_id
where payment.amount = 0.00

--8. How many free rentals did our stores give away?
--ANSWER: 