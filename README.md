# MYSQL_INDEXING_FOR-QUERY_OPTIMIZATION
This repository covers indexing strategies and query optimization techniques in SQL, aimed at improving database performance and speeding up data retrieval processes.

CREATE INDEX idx_population ON COUNTRY(POPULATION);

(1) List the distinct country names from the Persons table.

SELECT DISTINCT(COUNTRY_NAME) FROM PERSONS;

![image](https://github.com/user-attachments/assets/3817ff21-7425-4af1-b806-9f08fb18a792)

(2)Select first names and last names from the Persons table with alias

SELECT FNAME AS FIRST_NAME,LNAME AS LAST_NAME FROM PERSONS;

![image](https://github.com/user-attachments/assets/35e34cc4-23b0-4201-8f50-813286998492)

(3)Find all persons with a rating greater than 4.0.

SELECT ID, CONCAT(FNAME," " ,LNAME) AS FULL_NAME ,RATING FROM PERSONS WHERE RATING > 4.0;

![image](https://github.com/user-attachments/assets/d3c9ef54-fdb2-4b3e-9b34-ce5b37a659df)

(4)Find countries with a population greater than 150M.

SELECT * FROM COUNTRY WHERE POPULATION > 150000000;

![image](https://github.com/user-attachments/assets/5732eb72-0152-4d97-90bc-7167ad6b2bd3)

(5)Find persons who are from 'USA' or have a rating greater than 4.5. 

SELECT CONCAT(FNAME," ",LNAME) AS FULL_NAME,COUNTRY_NAME,RATING FROM PERSONS WHERE COUNTRY_NAME = 'USA' OR RATING > 4.5;

![image](https://github.com/user-attachments/assets/e2903c0f-9251-4698-895e-77145093a6e5)

(6)Find all persons where the country name is NULL. 

SELECT CONCAT(FNAME," ",LNAME) AS FULL_NAME,COUNTRY_NAME FROM PERSONS WHERE COUNTRY_NAME IS NULL;

![image](https://github.com/user-attachments/assets/5de2fd97-4764-4fd1-a53b-102098d5520f)

(7)Find all persons from the countries 'USA', 'Canada', and 'UK'.

SELECT * FROM PERSONS WHERE COUNTRY_NAME IN('USA','CANADA','UK');

![image](https://github.com/user-attachments/assets/e790eb80-5189-449e-8041-643619f90ccc)

(8)Find all persons not from the countries 'India' and 'Australia'. 

SELECT CONCAT(FNAME,' ',LNAME) AS FULL_NAME,COUNTRY_ID, COUNTRY_NAME FROM PERSONS 
		WHERE COUNTRY_NAME NOT IN ('INDIA','AUSTRALIA') OR COUNTRY_NAME IS NULL;

![image](https://github.com/user-attachments/assets/c751f34e-98df-4685-8f7d-5b55013536db)

(9)Find all countries with a population between 100M and 300M. 

SELECT * FROM COUNTRY WHERE POPULATION BETWEEN 100000000 AND 300000000;

![image](https://github.com/user-attachments/assets/5b61b0aa-1e32-4003-9716-622e6c381a4c)

(10)Find all countries whose names do not start with 'C'.

SELECT * FROM COUNTRY WHERE COUNTRY_NAME NOT LIKE 'C%';

![image](https://github.com/user-attachments/assets/98757869-5802-4e71-a029-009a0ea267e3)

