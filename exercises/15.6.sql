-- 1: web/desktop app
CREATE USER moon_app IDENTIFIED BY '1234';

GRANT SELECT, INSERT, UPDATE, DELETE, EXECUTE
ON sql_store.*
TO moon_app;

-- 2: admin
GRANT ALL
ON *.*
TO john;