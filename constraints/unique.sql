CREATE Table contacts (
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(15) NOT NULL UNIQUE
)

INSERT INTO contacts (name, phone) VALUES ('jimmy', 8675309)

SELECT * FROM contacts;

INSERT INTO contacts (name, phone) VALUES ('john', 8675309);

INSERT INTO contacts (name, phone) VALUES ('john', 8675310);

SELECT * FROM contacts;