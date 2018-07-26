/*
SELECT customer.first_name, customer.last_name, customer.email, address.address
FROM city
JOIN address ON city.city_id = address.city_id
JOIN customer ON address.address_id = customer.address_id
WHERE city.city_id = 312;
*/
/*
--  What query would you run to get all comedy films?
-- Your query should return film title, description, release year, rating, special features, and genre (category).
SELECT film.title, film.description, film.release_year, film.rating, film.special_features, CONCAT_WS(' ', category.name) as genre
FROM film
LEFT JOIN film_category ON film.film_id = film_category.film_id
LEFT JOIN category ON film_category.category_id = category.category_id
GROUP BY film.film_id
ORDER BY film.title;
-- */
SELECT film.title, film.description, film.release_year, film.rating, film.special_features, group_concat(' ',category.name) as genre
FROM film
JOIN film_category ON film.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id
GROUP BY film.film_id 
HAVING genre LIKE '%documentary%'
ORDER BY film.title;