-- ORDER BY sorting with WHERE
SELECT * 
FROM cats
WHERE age > 5
ORDER BY name ASC, age DESC;


SELECT * 
FROM cats 
ORDER BY (net_worth) 
WHERE net_worth > 500;

-- COMPLEX QUERY: inner join, group by
SELECT *
FROM cats
INNER JOIN cats_owners
ON cat_id
WHERE age > 5
GROUP BY net_worth;

ALTER TABLE dogs ADD COLUMN weight INTEGER;
-- add data for dog weight:


SELECT *
FROM cats
INNER JOIN 
ON cats.owner_id = cats_owners.owner_id;

/* First, let's look at an inner join */
SELECT *
FROM cats
INNER JOIN 
ON dogs.owner_id = cats.owner_id;

CREATE TABLE pets_owners (
  id INTEGER PRIMARY KEY,
  cat_id INTEGER,
  dog_id INTEGER,
  owner_id INTEGER
  );