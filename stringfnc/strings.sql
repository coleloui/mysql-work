USE book_shop;

-- concat
SELECT CONCAT(
        author_fname, ' ', author_lname
    ) AS author_name
FROM books;

SELECT CONCAT_WS(
        ' ', author_fname, author_lname
    ) AS author_name
FROM books;

-- substring
SELECT SUBSTRING('Hello World', 1, 5);

SELECT CONCAT(SUBSTR(title, 1, 10), '...') AS short_title FROM books;

SELECT CONCAT(
        SUBSTR(author_fname, 1, 1), '. ', SUBSTR(author_lname, 1, 1), '.'
    ) AS author_initials
FROM books;

SELECT REPLACE ('hello world', 'hell', '%$#@');

SELECT REPLACE ( 'cheese bread coffee milk', ' ', ' and ' );