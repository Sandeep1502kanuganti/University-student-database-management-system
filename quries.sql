-- 1. Get student details with course and grade
SELECT s.Name, c.Title, g.Grade
FROM Students s
JOIN Grades g ON s.StudentID = g.StudentID
JOIN Courses c ON g.CourseID = c.CourseID;

-- 2. List all students enrolled in a specific course
SELECT s.Name
FROM Students s
JOIN Enrollment e ON s.StudentID = e.StudentID
WHERE e.CourseID = 1;

-- 3. Average grade per course
SELECT c.Title, AVG(CASE g.Grade 
                    WHEN 'A' THEN 4 
                    WHEN 'B' THEN 3 
                    WHEN 'C' THEN 2 
                    WHEN 'D' THEN 1 
                    ELSE 0 END) AS GPA
FROM Grades g
JOIN Courses c ON g.CourseID = c.CourseID
GROUP BY c.CourseID;
