SELECT COUNT(released_year) FROM books;

SELECT COUNT(DISTINCT released_year) FROM books;

SELECT title FROM books WHERE title LIKE '%the%';

SELECT COUNT(*) FROM books WHERE title LIKE '%the%';