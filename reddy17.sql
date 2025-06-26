CREATE TABLE reddy17_students (
    name VARCHAR(255),
    id INT,
    gpa DOUBLE
);

SHOW CREATE TABLE reddy17_students;

INSERT INTO reddy17_students (id, name, gpa) VALUES
(800000001, 'Aaa', 3.25),
(800000002, 'Bbb', 2.76),
(800000003, 'Ccc', 3.12),
(800000004, 'Ddd', 2.34),
(800000005, 'Eee', 3.85),
(800000006, 'Fff', 2.56),
(800000007, 'Ggg', 3.49),
(800000008, 'Hhh', 2.87),
(800000009, 'Iii', 3.69),
(800000010, 'Jjj', 2.15),
(800000011, 'Kkk', 3.42),
(800000012, 'Lll', 2.91),
(800000013, 'Mmm', 3.78),
(800000014, 'Nnn', 2.46),
(800000015, 'Ooo', 3.33),
(800000016, 'Ppp', 2.63),
(800000017, 'Qqq', 3.55),
(800000018, 'Rrr', 2.08),
(800000019, 'Sss', 3.97),
(800000020, 'Ttt', 2.71),
(800000021, 'Uuu', 3.59),
(800000022, 'Vvv', 2.40),
(800000023, 'Www', 3.84),
(800000024, 'Xxx', 2.69),
(800000025, 'Yyy', 3.17),
(800000026, 'Zzz', 2.90);

SELECT * FROM reddy17_students ORDER BY id;

CREATE TABLE reddy17_classes (
    dept_code VARCHAR(10),
    course_number INT,
    credits INT
);

--  courses in CS that I have taken
INSERT INTO reddy17_classes (dept_code, course_number, credits) VALUES
('CS', 150, 3),
('CS', 164, 4),
('CS', 165, 4),
('CS', 192, 1),
('CS', 214, 3),
('CS', 220, 4),
('CS', 250, 4),
('CS', 312, 3),
('CS', 314, 3),
('CS', 356, 3),
('CS', 370, 3),
('CS', 345, 3);

SHOW CREATE TABLE reddy17_classes;

SELECT * FROM reddy17_classes;

UPDATE reddy17_classes 
SET dept_code = 'CT', course_number = 310 
WHERE dept_code = 'CS' AND course_number = 312;

SELECT * FROM reddy17_classes;

CREATE TABLE reddy17_enrollments (
    student_id INT,
    dept_code VARCHAR(10),
    course_number INT,
    semester ENUM('FA17', 'SP18', 'SU18', 'FA18', 'SP19', 'SU19', 'FA19', 'SP20')
);

INSERT INTO reddy17_enrollments (student_id, dept_code, course_number, semester) VALUES
(800000001, 'CT', 310, 'FA19'),
(800000002, 'CT', 310, 'SP20'),
(800000003, 'CT', 310, 'FA19'),
(800000004, 'CT', 310, 'SP20'),
(800000005, 'CT', 310, 'FA19');

INSERT INTO reddy17_enrollments VALUES
(800000001, 'CS', 150, 'FA17'),
(800000001, 'CS', 164, 'SP18'),
(800000001, 'CS', 165, 'FA18'),
(800000002, 'CS', 164, 'FA17'),
(800000002, 'CS', 165, 'SP18'),
(800000002, 'CS', 192, 'FA18'),
(800000003, 'CS', 165, 'FA17'),
(800000003, 'CS', 192, 'SP18'),
(800000003, 'CS', 214, 'FA18'),
(800000004, 'CS', 192, 'FA17'),
(800000004, 'CS', 214, 'SP18'),
(800000004, 'CS', 220, 'FA18'),
(800000005, 'CS', 214, 'FA17'),
(800000005, 'CS', 220, 'SP18'),
(800000005, 'CS', 250, 'FA18');

INSERT INTO reddy17_enrollments VALUES

(800000006, 'CS', 150, 'FA18'),
(800000006, 'CS', 164, 'SP19'),
(800000006, 'CS', 165, 'SU19'),
(800000006, 'CS', 192, 'FA19'),

(800000007, 'CS', 164, 'FA18'),
(800000007, 'CS', 165, 'SP19'),
(800000007, 'CS', 192, 'SU19'),
(800000007, 'CS', 214, 'FA19'),

(800000008, 'CS', 165, 'FA18'),
(800000008, 'CS', 192, 'SP19'),
(800000008, 'CS', 214, 'SU19'),
(800000008, 'CS', 220, 'FA19'),

(800000009, 'CS', 192, 'FA18'),
(800000009, 'CS', 214, 'SP19'),
(800000009, 'CS', 220, 'SU19'),
(800000009, 'CS', 250, 'FA19'),

(800000010, 'CS', 214, 'FA18'),
(800000010, 'CS', 220, 'SP19'),
(800000010, 'CS', 250, 'SU19'),
(800000010, 'CT', 310, 'SP20'),

(800000011, 'CS', 220, 'FA18'),
(800000011, 'CS', 250, 'SP19'),
(800000011, 'CT', 310, 'SU19'),
(800000011, 'CS', 356, 'FA19'),

(800000012, 'CS', 250, 'FA18'),
(800000012, 'CT', 310, 'SP19'),
(800000012, 'CS', 356, 'SU19'),
(800000012, 'CS', 370, 'FA19'),

(800000013, 'CT', 310, 'FA18'),
(800000013, 'CS', 356, 'SP19'),
(800000013, 'CS', 370, 'SU19'),
(800000013, 'CS', 150, 'FA19'),

(800000014, 'CS', 356, 'FA18'),
(800000014, 'CS', 370, 'SP19'),
(800000014, 'CS', 150, 'SU19'),
(800000014, 'CS', 164, 'FA19'),

(800000015, 'CS', 370, 'FA18'),
(800000015, 'CS', 150, 'SP19'),
(800000015, 'CS', 164, 'SU19'),
(800000015, 'CS', 165, 'FA19'),

(800000016, 'CS', 150, 'FA18'),
(800000016, 'CS', 164, 'SP19'),
(800000016, 'CS', 165, 'SU19'),
(800000016, 'CS', 192, 'FA19'),

(800000017, 'CS', 164, 'FA18'),
(800000017, 'CS', 165, 'SP19'),
(800000017, 'CS', 192, 'SU19'),
(800000017, 'CS', 214, 'FA19'),

(800000018, 'CS', 165, 'FA18'),
(800000018, 'CS', 192, 'SP19'),
(800000018, 'CS', 214, 'SU19'),
(800000018, 'CS', 220, 'FA19'),

(800000019, 'CS', 192, 'FA18'),
(800000019, 'CS', 214, 'SP19'),
(800000019, 'CS', 220, 'SU19'),
(800000019, 'CS', 250, 'FA19'),

(800000020, 'CS', 214, 'FA18'),
(800000020, 'CS', 220, 'SP19'),
(800000020, 'CS', 250, 'SU19'),
(800000020, 'CT', 310, 'SP20'),

(800000021, 'CS', 220, 'FA18'),
(800000021, 'CS', 250, 'SP19'),
(800000021, 'CT', 310, 'SU19'),
(800000021, 'CS', 356, 'FA19'),

(800000022, 'CS', 250, 'FA18'),
(800000022, 'CT', 310, 'SP19'),
(800000022, 'CS', 356, 'SU19'),
(800000022, 'CS', 370, 'FA19'),

(800000023, 'CT', 310, 'FA18'),
(800000023, 'CS', 356, 'SP19'),
(800000023, 'CS', 370, 'SU19'),
(800000023, 'CS', 150, 'FA19'),

(800000024, 'CS', 356, 'FA18'),
(800000024, 'CS', 370, 'SP19'),
(800000024, 'CS', 150, 'SU19'),
(800000024, 'CS', 164, 'FA19'),

(800000025, 'CS', 370, 'FA18'),
(800000025, 'CS', 150, 'SP19'),
(800000025, 'CS', 164, 'SU19'),
(800000025, 'CS', 165, 'FA19'),

(800000026, 'CS', 150, 'FA18'),
(800000026, 'CS', 164, 'SP19'),
(800000026, 'CS', 165, 'SU19'),
(800000026, 'CS', 192, 'FA19');

SELECT COUNT(*) FROM reddy17_enrollments;

SELECT s.id, s.name, s.gpa
FROM reddy17_students s
JOIN reddy17_enrollments e ON s.id = e.student_id
WHERE e.dept_code = 'CT' AND e.course_number = 310;

SELECT DISTINCT c.dept_code, c.course_number, c.credits
FROM reddy17_classes c
JOIN reddy17_enrollments e 
  ON c.dept_code = e.dept_code AND c.course_number = e.course_number
ORDER BY c.dept_code, c.course_number;

SELECT s.id, s.name, 
       GROUP_CONCAT(CONCAT(e.dept_code, e.course_number) ORDER BY e.dept_code, e.course_number SEPARATOR ', ') AS enrolled_courses
FROM reddy17_students s
JOIN reddy17_enrollments e ON s.id = e.student_id
GROUP BY s.id, s.name
ORDER BY s.id;

SELECT SUM(student_credits) AS total_credits
FROM (
    SELECT s.id, SUM(c.credits) AS student_credits
    FROM reddy17_students s
    JOIN reddy17_enrollments e ON s.id = e.student_id
    JOIN reddy17_classes c 
      ON e.dept_code = c.dept_code AND e.course_number = c.course_number
    GROUP BY s.id
) AS student_credit_sums;