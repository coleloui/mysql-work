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