USE chicken_coop;

CREATE TABLE employees(
    id INT AUTO_INCREMENT,
    first_name VARCHAR(20) NOT NULL,
    middle_name VARCHAR(20),
    last_name VARCHAR(20) NOT NULL,
    age INT NOT NULL,
    current_status VARCHAR(20) NOT NULL DEFAULT 'employeed',
    PRIMARY KEY(id)
);

DESC employees;

DROP TABLE employees;