CREATE TABLE query_filter_int(a INT);
INSERT INTO query_filter_int SELECT g FROM generate_series(1,100) g;
SELECT COUNT(*) FROM query_filter_int WHERE a  <= 50;
DROP TABLE query_filter_int;

CREATE TABLE query_filter_float(a FLOAT8);
INSERT INTO query_filter_float VALUES (0.9), (1.0), (1.1);
SELECT COUNT(*) = 1 FROM query_filter_float WHERE a < 1.0;
SELECT COUNT(*) = 2 FROM query_filter_float WHERE a <= 1.0;
SELECT COUNT(*) = 2 FROM query_filter_float WHERE a < 1.1;

DROP TABLE query_filter_float;

CREATE TABLE query_filter_varchar(a VARCHAR);
INSERT INTO query_filter_varchar VALUES ('t1'), ('t2'), ('t1');
SELECT COUNT(*) = 2 FROM query_filter_varchar WHERE a = 't1';
SELECT COUNT(a) = 2 FROM query_filter_varchar WHERE a = 't1';
SELECT a, COUNT(*) FROM query_filter_varchar WHERE a = 't1' GROUP BY a;
DROP TABLE query_filter_varchar;
