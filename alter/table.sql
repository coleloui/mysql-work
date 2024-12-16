CREATE TABLE companies (
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    CONSTRAINT name_address UNIQUE (name, address)
);

ALTER Table companies ADD COLUMN phone VARCHAR(15);

SELECT * FROM companies;

ALTER Table companies
ADD COLUMN employee_count INT NOT NULL DEFAULT 1;

ALTER Table companies DROP COLUMN phone;

RENAME TABLE companies to suppliers;

ALTER TABLE suppliers RENAME TO companies;

ALTER TABLE companies RENAME COLUMN name TO company_name;

ALTER TABLE companies
MODIFY company_name VARCHAR(100) DEFAULT 'unknown';

ALTER TABLE companies ADD COLUMN business VARCHAR(15);

ALTER TABLE companies CHANGE business biz_name VARCHAR(50);