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