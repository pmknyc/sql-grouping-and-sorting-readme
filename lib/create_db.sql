-- MAKE NEW DBASE:  pets_dbase.db

-- cats table:
CREATE TABLE cats (
    id INTEGER PRIMARY KEY,
    name TEXT,
    age INTEGER,
    breed TEXT,
    net_worth INTEGER
    cat_owner INTEGER
    owner_name TEXT
  );

-- cats:
INSERT INTO cats (id, name, age, breed, net_worth) VALUES (1, "Maru", 3, "Scottish Fold", 1000000);
INSERT INTO cats (id, name, age, breed, net_worth) VALUES (2, "Hana", 1, "Tabby", 21800);
INSERT INTO cats (id, name, age, breed, net_worth) VALUES (3, "Grumpy Cat", 4, "Persian", 181600);
INSERT INTO cats (id, name, age, breed, net_worth) VALUES (4, "Lil' Bub", 2, "Tortoiseshell", 2000000);
INSERT INTO cats (id, name, age, breed, net_worth) VALUES (5, "Sappho", 19, "Domestic Short Hair" , 800000);
INSERT INTO cats (id, name, age, breed, net_worth) VALUES (6, "Linus", 14, "Tabby", 2100);
INSERT INTO cats (id, name, age, breed, net_worth) VALUES (7, "Maxine", 8 , "Domestic Short Hair",500);
INSERT INTO cats (id, name, age, breed, net_worth) VALUES (8, "Bat", 12, "Domestic Short Hair", 500);
INSERT INTO cats (id, name, age, breed, net_worth) VALUES (9, "Dove", 14, "Domestic Short Hair", 500);


-- add table of dogs
CREATE TABLE dogs (
    id INTEGER PRIMARY KEY,
    name TEXT,
    age INTEGER,
    breed TEXT,
    dog_owner INTEGER
    owner_name TEXT
);

-- dogs:
INSERT INTO dogs (name, age, breed) VALUES ("Rover", 3, "bulldog");
INSERT INTO dogs (name, age, breed) VALUES ("Fido", 2, "bulldog");
INSERT INTO dogs (name, age, breed) VALUES ("Fluffy", 4, "shitsu");
INSERT INTO dogs (name, age, breed) VALUES ("Buddy", 8, "dachshund");
INSERT INTO dogs (name, age, breed) VALUES ("Doc", 11, "dachshund");
INSERT INTO dogs (name, age, breed) VALUES ("Belle", 5, "labrador");
INSERT INTO dogs (name, age, breed) VALUES ("Sophie", 9, "poodle");
INSERT INTO dogs (name, age, breed) VALUES ("Zoe", 10, "jack russell terrier");
INSERT INTO dogs (name, age, breed) VALUES ("Maddie", 6, "german shepherd");
INSERT INTO dogs (name, age, breed) VALUES ("Elliot", 4, "beagle");
INSERT INTO dogs (name, age, breed) VALUES ("Cole", 3, "labrador");

-- owners Table:
CREATE TABLE owners (
    id INTEGER PRIMARY KEY, 
    name TEXT
);

-- owners:
INSERT INTO owners (name) VALUES ("Hudson");
INSERT INTO owners (name) VALUES ("Sophie");
INSERT INTO owners (name) VALUES ("Penny");
INSERT INTO owners (name) VALUES ("Becca");
INSERT INTO owners (name) VALUES ("Veve");
INSERT INTO owners (name) VALUES ("Lilly");
INSERT INTO owners (name) VALUES ("Shawn");
INSERT INTO owners (name) VALUES ("Paula");
INSERT INTO owners (name) VALUES ("Hilary");


-- cats-owners join table:
CREATE TABLE cats_owners (
    cat_id INTEGER,
    owner_id INTEGER
);


-- cats_owners:
INSERT INTO cats_owners (cat_id, owner_id) VALUES (2, 2);
INSERT INTO cats_owners (cat_id, owner_id) VALUES (4, 3);
INSERT INTO cats_owners (cat_id, owner_id) VALUES (1, 2);
INSERT INTO cats_owners (cat_id, owner_id) VALUES (5, 1);
INSERT INTO cats_owners (cat_id, owner_id) VALUES (5, 5);
INSERT INTO cats_owners (cat_id, owner_id) VALUES (5, 4);
INSERT INTO cats_owners (cat_id, owner_id) VALUES (7, 1);
INSERT INTO cats_owners (cat_id, owner_id) VALUES (8, 6);
INSERT INTO cats_owners (cat_id, owner_id) VALUES (9, 6);

