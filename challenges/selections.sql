-- SELECT * FROM books WHERE title LIKE '%stories%';

-- SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;

-- SELECT CONCAT(title, ' - ', released_year) as summary
-- FROM books
-- ORDER BY released_year DESC
-- LIMIT 3;

-- SELECT title, author_lname FROM books WHERE author_lname LIKE '%\ %';

-- SELECT
--     title,
--     released_year,
--     stock_quantity
-- FROM books
-- ORDER BY stock_quantity, released_year DESC
-- LIMIT 3;

-- SELECT title, author_lname
-- FROM books
-- ORDER BY author_lname, title DESC;

-- SELECT UPPER(
--         CONCAT(
--             'my favorite author is ', author_fname, ' ', author_lname, '!'
--         )
--     ) AS yell
-- FROM books
-- ORDER BY author_lname;