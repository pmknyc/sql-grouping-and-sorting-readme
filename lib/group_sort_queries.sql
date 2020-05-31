-- cats table:
CREATE TABLE cats (
    id INTEGER PRIMARY KEY,
    name TEXT,
    age INTEGER,
    breed TEXT,
    net_worth INTEGER
);

-- owners Table:
CREATE TABLE owners (
    id INTEGER PRIMARY KEY, 
    name TEXT
);


-- cats-owners join table:
CREATE TABLE cats_owners (
    cat_id INTEGER,
    owner_id INTEGER
);

-- Inserting the values:
-- cats:
INSERT INTO cats (id, name, age, breed, net_worth) VALUES (1, "Maru", 3, "Scottish Fold", 1000000);
INSERT INTO cats (id, name, age, breed, net_worth) VALUES (2, "Hana", 1, "Tabby", 21800);
INSERT INTO cats (id, name, age, breed, net_worth) VALUES (3, "Grumpy Cat", 4, "Persian", 181600);
INSERT INTO cats (id, name, age, breed, net_worth) VALUES (4, "Lil' Bub", 2, "Tortoiseshell", 2000000);

-- owners:
INSERT INTO owners (name) VALUES ("Hudson");
INSERT INTO owners (name) VALUES ("Sophie");
INSERT INTO owners (name) VALUES ("Penny");
INSERT INTO owners (name) VALUES ("Becca");
INSERT INTO owners (name) VALUES ("Veve");
INSERT INTO owners (name) VALUES ("Lilly");

-- cats_  owners:
INSERT INTO cats_owners (cat_id, owner_id) VALUES (2, 2);
INSERT INTO cats_owners (cat_id, owner_id) VALUES (4, 3);
INSERT INTO cats_owners (cat_id, owner_id) VALUES (1, 2);
INSERT INTO cats_owners (cat_id, owner_id) VALUES (5, 1);
INSERT INTO cats_owners (cat_id, owner_id) VALUES (5, 5);
INSERT INTO cats_owners (cat_id, owner_id) VALUES (5, 4);
INSERT INTO cats_owners (cat_id, owner_id) VALUES (7, 1);
INSERT INTO cats_owners (cat_id, owner_id) VALUES (8, 6);
INSERT INTO cats_owners (cat_id, owner_id) VALUES (9, 6);

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

/*
id          name        age         breed                net_worth   cat_id      owner_id  
----------  ----------  ----------  -------------------  ----------  ----------  ----------
9           Dove        14          Domestic Short Hair  500         9           6
6           Linus       14          Tabby                2100        9           6
5           Sappho      19          White Short Hair     800000      9           6

*/


