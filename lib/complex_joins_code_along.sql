sqlite3 class_grades.db
/* make 2 tables, add primary key to both */
CREATE TABLE Teachers(id);
/* add foreign key to Students */
CREATE TABLE Students(student_id, teacher_id);
INSERT INTO Teachers VALUES (1);
INSERT INTO Teachers VALUES (2);
INSERT INTO Teachers VALUES (3);
INSERT INTO Students VALUES (1, NULL);
INSERT INTO Students VALUES (2, 1);
INSERT INTO Students VALUES (3, NULL);

SELECT * from teachers;
/* 
id        
----------
1
2
3
*/

SELECT * from students;
/*
student_id  teacher_id
----------  ----------
1
2           1
3
*/

/* First, let's look at an inner join */
SELECT *
FROM Teachers
INNER JOIN Students
ON Teachers.id = Students.teacher_id;

/*  This query returns only the teacher with id = 1 
    because student 2 is in the first teacher's class.
    Primary key (id) in Teachers is same value/object 
    as the teacher_id

id  |  student_id |  teacher_id
--------------------------------
1   |  2          |  1

*/

/* Left Outer Join */
SELECT
  Teachers.id as teacher_id,
  Students.student_id
FROM Teachers
LEFT OUTER JOIN Students
ON Teachers.id = Students.teacher_id;
/* 
teacher_id  student_id
----------  ----------
1           2
2
3

*/

/* more joins with pets_database
> sqlite3 pets_database.db 
SQLite version 3.22.0 2018-01-22 18:45:57
*/ 

select * from cats;
/*
1|Maru|3|Scottish Fold|1
2|Hana|1|Tabby|1
4|Nona|4|Tortoiseshell|2
5|Patches|2|Calico|2
6|Maxine|4|Tabby|
7|Grumpy Cat|4|Persian|
8|Lil' Bub|2|Tortoiseshell|
*/
sqlite> select * from dogs;

/*
1|Clifford
*/

sqlite> select * from dogs;
/*
id          name      
----------  ----------
1           Clifford
*/

sqlite> select * from cats;
/*
id          name        age         breed          owner_id  
----------  ----------  ----------  -------------  ----------
1           Maru        3           Scottish Fold  1
2           Hana        1           Tabby          1
4           Nona        4           Tortoiseshell  2
5           Patches     2           Calico         2
6           Maxine      4           Tabby
7           Grumpy Cat  4           Persian
8           Lil' Bub    2           Tortoiseshell

*/

sqlite> .schema
CREATE TABLE dogs (
    id INTEGER PRIMARY KEY,
    name TEXT
);

CREATE TABLE IF NOT EXISTS "cats" (
id INTEGER PRIMARY KEY,
name TEXT,
age INTEGER,
breed TEXT, owner_id INTEGER);

CREATE TABLE owners (id INTEGER PRIMARY KEY, name TEXT);

ALTER TABLE dogs ADD COLUMN age INTEGER;
ALTER TABLE dogs ADD COLUMN breed TEXT;
ALTER TABLE dogs ADD COLUMN owner_id INTEGER;
