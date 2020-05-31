-- Cats Table:
CREATE TABLE cats (
id INTEGER PRIMARY KEY,
name TEXT,
age INTEGER,
breed TEXT
);

-- Owners Table:
CREATE TABLE owners (id INTEGER PRIMARY KEY, name TEXT);
Insert the following data:
Insert Data:
INSERT INTO owners (name) VALUES ("mugumogu");
INSERT INTO owners (name) VALUES ("Sophie");
INSERT INTO owners (name) VALUES ("Penny");
INSERT INTO cats (name, age, breed) VALUES ("Maru", 3, "Scottish Fold");
INSERT INTO cats (name, age, breed) VALUES ("Hana", 1, "Tabby");
INSERT INTO cats (name, age, breed) VALUES ("Nona", 4, "Tortoiseshell");
INSERT INTO cats (name, age, breed) VALUES ("Lil' Bub", 2, "perma-kitten");

-- make join table
CREATE TABLE cats_owners (
cat_id INTEGER,
owner_id INTEGER
);

/* Let's confirm that worked by checking our schema. Type:
sqlite3> .schema
And you'll see:
CREATE TABLE cats (
id INTEGER PRIMARY KEY, 
name TEXT, 
age INTEGER,
breed TEXT);
 
CREATE TABLE owners (id INTEGER PRIMARY KEY, name TEXT);
 
CREATE TABLE cats_owners (
cat_id INTEGER,
owner_id INTEGER
);

*/

-- Insert Data into the Join Table
INSERT INTO cats_owners (cat_id, owner_id) VALUES (3, 2);
INSERT INTO cats_owners (cat_id, owner_id) VALUES (4, 2);
INSERT INTO cats_owners (cat_id, owner_id) VALUES (1, 1);
INSERT INTO cats_owners (cat_id, owner_id) VALUES (4, 1);
SELECT * FROM cats_owners;

/*
cat_id      owner_id  
----------  ----------
3           2
4           2
1           1
4           1
*/

-- Basic Queries in Join Table

-- SELECT all owners associated to cat number 4.
 SELECT cats_owners.owner_id 
 FROM cats_owners 
 WHERE cat_id = 4;

/*
 owner_id  
----------
2
1
*/

-- SELECT all cats associated to owner number 1.
 SELECT cats_owners.cat_id 
 FROM cats_owners 
 WHERE owner_id = 1;

-- => cat_id : 1 and 4 belong to owner 1

--Advanced Queries
SELECT owners.name, owner_id 
FROM owners 
INNER JOIN cats_owners 
ON owners.id = cats_owners.owner_id WHERE cats_owners.cat_id = 4;


