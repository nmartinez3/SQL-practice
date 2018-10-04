USE sakila;

CREATE TABLE test_table(
	film_id int auto_increment NOT NULL,
    col2 varchar(64),
    PRIMARY KEY(film_id)
    );

DESCRIBE test_table;

INSERT INTO test_table(film_id, col2)
	VALUES (NULL, 'asdf');
    
SELECT * FROM test_table;

INSERT INTO test_table(film_id, col2)
	VALUES (123, 'asdf');   
    
SELECT * FROM test_table;

SHOW INDEXES FROM test_table;

INSERT INTO test_table(film_id, col2)
	SELECT film_id + 1, col2 FROM test_table ORDER BY rand();

# well, trying to change row order has no effect on how the table is displayed when calling SELECT *;
UPDATE test_table SET film_id = film_id WHERE film_id >= 1 ORDER BY film_id DESC;

SELECT * FROM test_table;