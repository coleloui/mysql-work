SELECT UPPER(
        REVERSE(
            'Why does my cat look at me with such hatred?'
        )
    );

SELECT REPLACE (title, ' ', '->') AS title FROM books;

SELECT
    author_fname AS forwards,
    REVERSE(author_fname) AS backwards
FROM books;

SELECT UPPER(
        CONCAT(
            author_fname, ' ', author_lname
        )
    ) AS 'full name in caps'
FROM books;

SELECT CONCAT(
        title, ' was released in ', released_year
    ) as blurb
from books;

SELECT title, CHARACTER_LENGTH(title) as 'character count'
from books;

SELECT
    CONCAT(SUBSTR(title, 1, 10), '...') AS short_title,
    CONCAT(
        author_lname,
        ', ',
        author_fname
    ) as author,
    CONCAT(stock_quantity, ' in stock') as quantity
FROM books;