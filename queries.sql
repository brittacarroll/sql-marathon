-- Write a SQL statement that selects all of the movies before the year 2000.

SELECT title, year
FROM movies
WHERE year < 2000
ORDER BY year;

-- Write a query to view all categories
SELECT * FROM categories;


--Select movie with ID of 4
SELECT *
FROM movies
WHERE movies.id = 4;

-- Write a SQL query to order movie titles by year in ascending order.
SELECT * FROM movies
ORDER BY movies.year;

-- Then modify the SQL query to print out all movies in alphabetical order, grouped by year.
SELECT * FROM movies
ORDER BY movies.year, movies.title;

-- Write a SQL query to print out the first five movies in the database.
SELECT * FROM movies
LIMIT 5;

-- Then modify the SQL query to print out the last five movies released.
SELECT * FROM movies
ORDER BY year DESC
LIMIT 5;

--Change the Sci-Fi category name to Science Fiction
UPDATE categories
SET name = 'Science Fiction'
WHERE name = 'Sci-Fi';

-- Delete the movie with id of 3.
DELETE FROM movies
WHERE movies.id = 3;

-- Print out a list of movie titles, their corresponding category, ordered by the title of the movie.
SELECT movies.title, categories.name FROM movies
JOIN categories ON movies.category_id = categories.id
ORDER BY title;
