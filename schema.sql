DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS categories;

CREATE TABLE categories(
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE movies(
  id SERIAL PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  year INT,
  category_id INT REFERENCES categories(id),
  UNIQUE(title, year)
);
