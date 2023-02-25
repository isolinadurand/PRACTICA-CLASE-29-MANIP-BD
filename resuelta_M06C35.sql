-- Resultado de MO6C35
-- PASO 1
-- 1. Insertar en la tabla genres un nuevo género con los siguientes datos:
-- -- ○ name: Investigación
-- ○ ranking: 13
-- ○ active: 1
-- RESULTADO

INSERT INTO genres (name, ranking, active)
VALUES ("Investigación", 13, 1);

-- 22. Actualizar el nuevo registro “name: Investigación” por “Investigación Científica”.

-- RESULTADO:

INSERT INTO genres (name, ranking, active)
VALUES ("Investigación", 13, 1);

-- 3. Eliminar el registro cuyo name es: “Investigación Científica”. Recordemos verificar
-- cuál es el id de dicho registro.
-- Resultado:

DELETE FROM genres
WHERE id=13;

-- Haciendo uso del Select, debemos afrontar las siguientes consultas:
-- 4. Mostrar todos los registros de la tabla “movies”.
-- Resultado:

SELECT * FROM `movies`;

-- 5. Mostrar el nombre, apellido y rating de todos los actores.
-- Resultado:

SELECT first_name, last_name, rating from actors;


-- 6. Mostrar el título de todas las series. Tomar en cuenta que tanto el nombre de la tabla como el campo estén en español.
-- Resultado:

SELECT title as Título FROM `series` AS Series;

-- Micro desafío - Paso 2:
-- Utilizando el Where y Order by, ejecutemos las siguientes consultas (ten en cuenta el uso
-- de los operadores lógicos y relacionales).
-- 1.	Mostrar el nombre y apellido de los actores cuyo rating sea mayor a 7.5.

-- Resultado:

SELECT first_name, last_name FROM `actors` 
WHERE rating > 7.5

--2. Mostrar el título de las películas, el rating y los premios de las películas con un rating
-- mayor a 7.5 y con más de dos premios.
-- Resultado:

SELECT title, rating, awards FROM `movies`
WHERE rating> 7.7 
AND awards > 2

-- 3. Mostrar el título de las películas y el rating ordenadas por rating en forma
-- ascendente.
-- Resultado:

SELECT title, rating FROM `movies`
ORDER BY rating ASC



--Micro desafío - Paso 3:
--Vamos muy bien, no nos desanimemos ni por un minuto. Ahora, para la realización de las
--consultas debemos valernos del Limit y Offset.
--1.	Mostrar los títulos de las primeras tres películas en la base de datos.
--Resultado:

	SELECT title FROM `movies` LIMIT 3;

--2.	Mostrar el top 5 de las películas con mayor rating.
--Resultado:

SELECT title, rating FROM `movies`
ORDER BY rating DESC
LIMIT 5;

3--.	Mostrar las top 5 a 10 de las películas con mayor rating.
--Resultado:

SELECT title, rating FROM `movies`
ORDER BY rating DESC
LIMIT 5
OFFSET 5;

--4.	Listar los primeros 10 actores (sería la página 1).
--Resultado:

SELECT *  FROM `actors`
ORDER by rating DESC
LIMIT 10;

--a.	Luego, usar offset para traer la página 3.
--Resultado:

SELECT * FROM `actors`
ORDER BY rating DESC
LIMIT 10
OFFSET 30;

--Micro desafío - Paso 4:
--Ya casi culminamos todos los desafíos. Utilizando el Between y Like, hagamos las siguientes consultas:
--1.	Mostrar el título y rating de todas las películas cuyo título sea Harry Potter.
--Resultado:

SELECT title, rating FROM `movies`
WHERE title LIKE '%Harry Potter%';

--2.	Mostrar a todos los actores cuyos nombres empiecen con Sam.
--Resultado:

SELECT * FROM `actors`
WHERE first_name LIKE 'Sam%'

--3.	Mostrar el título de las películas que salieron entre el 2004 y 2008.
--Resultado:

SELECT title, release_date FROM `movies`
WHERE YEAR(release_date) BETWEEN 2004  AND 2008;
