CREATE TABLE inventory (
    item_name VARCHAR(100),
    price DECIMAL(8, 2),
    quantity INT
);

SELECT CURTIME();

SELECT DATE_FORMAT(CURDATE(), '%m/%d/%Y');

SELECT DATE_FORMAT(NOW(), '%M %D at %k:%i');

CREATE TABLE tweet (
    content VARCHAR(50),
    username VARCHAR(20),
    created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO
    tweet (content, username)
VALUES (
        'this is my first tweet',
        'coltscat'
    );

SELECT * FROM tweet;

INSERT INTO
    tweet (content, username)
VALUES (
        'this is my second tweet',
        'coltscat'
    );

SELECT * FROM tweet;