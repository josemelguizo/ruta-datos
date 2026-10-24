-- Semana 1 · Mis primeras consultas SQL
-- Base de práctica: dvdrental (PostgreSQL 18)

-- Ver todas las películas
SELECT * FROM film;

-- Títulos sin repetir, en orden alfabético
SELECT DISTINCT title FROM film
ORDER BY title ASC;

-- Las 4 películas más recientes
SELECT title, release_year FROM film
ORDER BY release_year DESC
LIMIT 4;

-- Los primeros 5 títulos en orden alfabético
SELECT title FROM film
ORDER BY title ASC
LIMIT 5;

-- Los siguientes 5 títulos (del 6 al 10)
SELECT title FROM film
ORDER BY title ASC
LIMIT 5 OFFSET 5;

-- Buscar una película por su título
SELECT title, release_year FROM film
WHERE title LIKE 'Chamber Italian';
