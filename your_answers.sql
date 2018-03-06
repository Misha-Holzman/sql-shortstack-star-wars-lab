DROP DATABASE IF EXISTS shortstack_starwars;

CREATE DATABASE shortstack_starwars;

\c shortstack_starwars;

DROP TABLE IF EXISTS jedis;

CREATE TABLE jedis (
  id serial PRIMARY KEY,
  name varchar(50) NOT NULL,
  lightsaber_color varchar(50) NOT NULL,
  years_training integer NOT NULL,
  tempted_by_dark_side boolean NOT NULL,
  temptation varchar(50) NOT NULL
);

INSERT INTO jedis (name, lightsaber_color, years_training, tempted_by_dark_side, temptation) VALUES
  ('Darth Rashad', 'white', 14, FALSE, 'green slime'),
  ('Andrew Fett', 'blue', 12, FALSE, 'negative film'),
  ('Linda Sideous', 'gray', 15, FALSE, 'soccer'),
  ('Cash-3P0', 'purple', 18, FALSE, 'graffiti'),
  ('Mayabacca','red',7,TRUE, 'kickflips'),
  ('Keith Binks', 'green', 14, FALSE, 'Dos Toros'),
  ('Garrett Kenobi', 'red', 7, TRUE, 'crashing space shuttles'),
  ('Anatoliy Solo', 'red', 19, TRUE, 'German'),
  ('Ark Windu', 'red', 9, TRUE, 'sports'),
  ('Eddie Ren', 'orange', 14, FALSE, 'C++'),
  ('James Maul', 'green', 8, FALSE, 'cheating at pokemon'),
  ('Jorge-the-Hutt', 'red', 19, TRUE, 'Colorado'),
  ('Jennifer Kenobi', 'blue', 10, FALSE, 'photography '),
  ('Leon-Gon-Jinn', 'orange', 14, FALSE, 'anime'),
  ('Niko-TR8R', 'red', 8, TRUE, 'magic'),
  ('Roxy Skywalker', 'blue', 6, TRUE, 'accurate physics'),
  ('Sanjaya-D2', 'red', 2, TRUE, 'tourists'),
  ('Richard Tarkin', 'purple',20, FALSE, 'The Office'),
  ('Skyler Calrissian', 'red',14, TRUE, 'fine whiskey'),
  ('Steven Kota', 'yellow', 100, FALSE, 'Tom Sawyer'),
  ('Tim Aoun', 'purple',9, FALSE, 'basketball'),
  ('Greg Gunray', 'brown',13, FALSE, 'Corgis');


-- 1. Return the information of all the jedi classmates.
SELECT * FROM jedis;
-- 2. Find the name of the SITH (red lightsabers from jedis)

-- 3. There was an assassination by the Sith! All the green lightsaber owners need to be deleted from the records!

-- 4. SELECT * FROM jedis, you should see the green lightsaber owners missing.

-- A New Jedi emerges. Add "The unknown" with a "black" lightsaber who has 100 years training, never tempted by the dark side, and tempation is "absolutely nothing"

-- When you select all from jedis, you should notice a new jedi:
  --      | the unknown          | black            |            100 | f                    | absolutely nothing

-- 5. The new Jedi trains all of the blue light saber owners. They double their years_training instantly.

-- 6. The orange lightsaber owners attack the unknown in the night. Ultimate fail. Remove the orange lightsaber owners

-- 7. Concerned, The new Jedi converts the brown and purple lightsaber owners to blue, and doubles their training also...


-- 8. The ultimate Jedi battle takes place. Sadly, all novice Jedi (good and bad) with < 20 years_training need to be deleted from our records.

-- 9. The unknown one vanishes. Remove them from the records.

-- Who are the last standing Jedis? What trait do they all share? Paste your results from a SELECT * in a filed called `the_answer`
