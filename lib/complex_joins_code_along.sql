

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
