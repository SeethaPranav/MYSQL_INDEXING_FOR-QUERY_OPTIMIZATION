USE COUNTRY_DB;

# (1) List the distinct country names from the Persons table.
SELECT DISTINCT(COUNTRY_NAME) FROM PERSONS;

# (2)Select first names and last names from the Persons table with 
SELECT FNAME AS FIRST_NAME,LNAME AS LAST_NAME FROM PERSONS;

#(3)Find all persons with a rating greater than 4.0.
SELECT ID, CONCAT(FNAME," " ,LNAME) AS FULL_NAME ,RATING FROM PERSONS WHERE RATING > 4.0;

#(4)Find countries with a population greater than 150M. 
SELECT * FROM COUNTRY WHERE POPULATION > 150000000;

CREATE INDEX idx_population ON COUNTRY(POPULATION);

#(5)Find persons who are from 'USA' or have a rating greater than 4.5. 
SELECT CONCAT(FNAME," ",LNAME) AS FULL_NAME,COUNTRY_NAME,RATING FROM PERSONS WHERE COUNTRY_NAME = 'USA' OR RATING > 4.5;

#(6)Find all persons where the country name is NULL. 
SELECT CONCAT(FNAME," ",LNAME) AS FULL_NAME,COUNTRY_NAME FROM PERSONS WHERE COUNTRY_NAME IS NULL;

#(7)Find all persons from the countries 'USA', 'Canada', and 'UK'.
SELECT * FROM PERSONS WHERE COUNTRY_NAME IN('USA','CANADA','UK');

#(8)Find all persons not from the countries 'India' and 'Australia'. 
INSERT INTO COUNTRY VALUES(111, 'AUSTRALIA', 1234567892, 4550000);
INSERT INTO Persons VALUES (563, 'RUDY', 'ANTONY', 1234567892, 3.4, 111, 'AUSTRALIA');
INSERT INTO Persons VALUES (564, 'RUDY', 'ANTONY', 67892, 3.4, 111, 'AUSTRALIA');
SELECT CONCAT(FNAME,' ',LNAME) AS FULL_NAME,COUNTRY_ID, COUNTRY_NAME FROM PERSONS 
		WHERE COUNTRY_NAME NOT IN ('INDIA','AUSTRALIA') OR COUNTRY_NAME IS NULL;

#(9)Find all countries with a population between 100M and 300M. 
SELECT * FROM COUNTRY WHERE POPULATION BETWEEN 100000000 AND 300000000;

#(10)Find all countries whose names do not start with 'C'.
SELECT * FROM COUNTRY WHERE COUNTRY_NAME NOT LIKE 'C%';