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
-- INSERT INTO cats_owners (cat_id, owner_id) VALUES (3, 2);

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


