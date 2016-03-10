INSERT INTO categories (name)
VALUES
  ('Action'),
  ('Comedy'),
  ('Drama'),
  ('Horror'),
  ('Sci-Fi'),
  ('Mystery'),
  ('Fantasy'),
  ('Animation');

INSERT INTO movies (title, year, category_id)
VALUES
  ('Donnie Darko', '2001', (SELECT id FROM categories WHERE name='Mystery')),
  ('Army of Darkness', '1992', (SELECT id FROM categories where name='Fantasy')),
  ('Dumbo', '1941', (SELECT id FROM categories WHERE name = 'Animation')),
  ('Lion King', '1994', (SELECT id FROM categories WHERE name = 'Animation')),
  ('Evolution', '2001', (SELECT id FROM categories WHERE name='Comedy')),
  ('Young Frankenstein', '1974', (SELECT id FROM categories where name='Comedy')),
  ('Fifth Element', '1997', (SELECT id FROM categories WHERE name = 'Sci-Fi')),
  ('Die Hard', '1988', (SELECT id FROM categories WHERE name = 'Action')),
  ('Ex Machina', '2015', (SELECT id FROM categories WHERE name = 'Sci-Fi'));
