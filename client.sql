SELECT * FROM newschema.client;
INSERT INTO client
VALUES (2,'zz','xx','dd');
SELECT * FROM newschema.client;
/*update */
UPDATE client
SET nom = 'azizi abdelhamid', email= 'aa@gmail.com'
WHERE id_client = 1;
SELECT * FROM newschema.client;
