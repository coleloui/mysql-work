CREATE TABLE captions (
    text VARCHAR(150),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO
    captions (text)
VALUES (
        'just me and the girls chillin'
    ),
    ('beautiful sunset');

SELECT * FROM captions;

CREATE TABLE captions2 (
    text VARCHAR(150),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO captions2 (text) VALUES ('i luv life');

SELECT * FROM captions2;

UPDATE captions2 SET text = 'i love life!!!';