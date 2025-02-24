CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50)
);

CREATE TABLE papers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(50),
    grade INT,
    student_id INT,
    Foreign Key (student_id) REFERENCES students (id) ON DELETE CASCADE
);

INSERT INTO
    students (first_name)
VALUES ('Caleb'),
    ('Samantha'),
    ('Raj'),
    ('Carlos'),
    ('Lisa');

INSERT INTO
    papers (student_id, title, grade)
VALUES (1, 'My First Book Report', 60),
    (
        1,
        'My Second Book Report',
        75
    ),
    (
        2,
        "Russian Lit Through The Ages",
        94
    ),
    (
        2,
        'De Montaigne and The Art of The Essay',
        98
    ),
    (
        4,
        'Borges and Magical Realism',
        89
    );

select first_name, title, grade
from students
    JOIN papers on students.id = papers.student_id
ORDER BY grade desc;

select first_name, IFNULL(title, 'Missing'), IFNULL(grade, 0)
from students
    LEFT JOIN papers on students.id = papers.student_id
ORDER BY first_name ASC;

SELECT first_name, IFNULL(AVG(grade), 0) as average,
FROM students
    LEFT JOIN papers on students.id = papers.student_id
GROUP BY
    first_name
ORDER BY average DESC;

SELECT
    first_name,
    IFNULL(AVG(grade), 0) as average,
    CASE
        WHEN IFNULL(AVG(grade), 0) >= 75 THEN 'PASSING'
        WHEN IFNULL(AVG(grade), 0) < 75 THEN 'FAILING'
    END AS passing_status
FROM students
    LEFT JOIN papers on students.id = papers.student_id
GROUP BY
    first_name
ORDER BY average DESC;