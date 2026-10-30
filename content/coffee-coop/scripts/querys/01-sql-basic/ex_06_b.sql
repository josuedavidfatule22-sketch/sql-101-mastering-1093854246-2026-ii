-- Exercise 06 - b
-- Farmers: members in Pamplona without registered email

SELECT
    *
FROM 
    farm.farmers AS T1
WHERE 
    T1.municipality_code = '54518' AND T1.email IS NULL;

/*
 farmer_id | document_number |    first_name    |     last_name      | birth_date | gender | phone_number | email | membership_date | is_active | municipality_code 
-----------+-----------------+------------------+--------------------+------------+--------+--------------+-------+-----------------+-----------+-------------------
       775 | 712758473       | Wilson           | López Villamizar   | 1996-04-26 | M      | 3055094275   |       | 2016-02-19      | t         | 54518
      2716 | 727945493       | Gloria           | Marín Rivera       | 1975-06-11 | O      | 3225571567   |       | 2021-01-28      | t         | 54518
      3739 | 549054771       | María            | Burbano Duarte     | 1964-08-24 | F      | 3183590387   |       | 2004-09-23      | t         | 54518
      7898 | 24999630        | Esperanza        | Romero Betancur    | 1955-08-11 | F      | 3029623613   |       | 2015-08-30      | t         | 54518
      8485 | 914044314       | Ancízar Cristian | Polanía Delgado    | 1997-04-18 | M      | 3028825809   |       | 2021-02-24      | f         | 54518
     10999 | 343256743       | Dora             | Hernández Correa   | 1952-12-18 | F      | 3166719225   |       | 2014-03-08      | t         | 54518
     12711 | 1148351420      | Inés             | Jiménez Jaimes     | 1966-09-14 | F      | 3104090231   |       | 2008-02-11      | t         | 54518
     14977 | 1117597835      | Cecilia Lorena   | Díaz García        | 1953-09-22 | F      | 3207660684   |       | 2017-01-11      | f         | 54518
     20108 | 749444168       | Emilio           | Delgado Molina     | 1992-02-05 | M      | 3118015821   |       | 2016-03-11      | t         | 54518
(65 rows)
*/