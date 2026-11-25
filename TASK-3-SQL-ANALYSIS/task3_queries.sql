USE school_db;
DESCRIBE students;
DESCRIBE student;
SELECT First_Name, Class, Maths_Score
FROM student
WHERE Maths_Score > 85;
SELECT First_Name, Class, Maths_Score
FROM student
WHERE Maths_Score > 85;
DESCRIBE student;
DROP TABLE student;
USE school_db;
DESCRIBE studentss;
SELECT Student_ID,First_Name, Class, Maths_Score 
FROM students 
WHERE Maths_Score > 85;
USE school_db;
SELECT Student_ID, First_Name, Class, Maths_Score
FROM studentss
WHERE Maths_Score > 85;
SELECT First_Name, Last_Name, Class, English_Score
FROM students
ORDER BY English_Score DESC
LIMIT 5;
USE school_db;
SELECT First_Name, Last_Name, Class, English_Score
FROM students
ORDER BY English_Score DESC
LIMIT 5;
USE school_db;
SELECT First_Name, Last_Name, Class, English_Score
FROM studentss
ORDER BY English_Score DESC
LIMIT 5;
SELECT First_Name, Class, English_Score
FROM studentss
ORDER BY English_Score DESC
LIMIT 5;
SELECT Class,
ROUND(AVG(Maths_Score),2)AS Avg_Maths,
ROUND(AVG(Science_Score),2) AS Avg_Science,
ROUND(AVG(English_Score),2) AS Avg_English
FROM studentss
GROUP BY Class;
SELECT Attendance_Status, COUNT(*) AS Student_Count
FROM studentss
GROUP BY Attendance_Status;
CREATE TABLE class_teachers(Class VARCHAR(10), Teacher_Name VARCHAR(50));
INSERT INTO class_teachers VALUES ('10-A', 'Mrs. Kavitha'), ('10-B', 'Mr. Suresh'), ('10-C', 'Ms. Priya');
CREATE TABLE class_teachers (Class VARCHAR(10), Teacher_Name VARCHAR(50));
INSERT INTO class_teachers VALUES ('10-A','Mrs. Kavitha'), ('10-B', 'Mr. Suresh'), ('10-C', 'Ms. Priya');
SELECT * FROM class_teachers;
SELECT s.First_Name, s.Class, c.Teacher_Name, s.Maths_Score
FROM studentss s
JOIN class_teacher c ON s.Class = c.Class;
SELECT s.First_Name, s.Class, c.Teacher_Name, s.Maths_Score
FROM studentss s
JOIN class_teachers c ON s.Class = c.Class;
CREATE TABLE class_teachers(Class VARCHAR(10), Teacher_Name VARCHAR(50));

