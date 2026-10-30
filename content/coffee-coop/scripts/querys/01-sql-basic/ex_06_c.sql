-- Exercise 06 - c
-- Farmers: inactive members in Pamplona ordered by affiliation date ascending

SELECT
    *
FROM 
    farm.farmers AS T1
WHERE
    T1.municipality_code = '54518' AND T1.is_active IS FALSE
ORDER BY T1.membership_date;

/*
 farmer_id | document_number |    first_name    |     last_name      | birth_date | gender | phone_number |                email                | membership_date | is_active | municipality_code 
-----------+-----------------+------------------+--------------------+------------+--------+--------------+-------------------------------------+-----------------+-----------+-------------------
     99920 | 230971064       | Manuel           | Agudelo Jiménez    | 1970-06-03 | M      | 3219718862   | manuel.agudelo99920@hotmail.com     | 1997-03-29      | f         | 54518
    111416 | 534023693       | Myriam           | Valencia Moreno    | 1962-04-04 | F      | 3241389451   | myriam.valencia111416@gmail.com     | 1998-11-03      | f         | 54518
     53823 | 33787285        | Rubén            | Ramos Chamorro     | 1978-12-05 | M      | 3244273375   |                                     | 1999-03-02      | f         | 54518
     42933 | 1135293825      | Abelardo         | Pérez Castro       | 1976-12-13 | M      | 3245612074   |                                     | 2003-06-19      | f         | 54518
     94576 | 478755763       | Nicolás          | Rivera Duque       | 1952-03-06 | M      | 3029310183   | nicolas.rivera94576@gmail.com       | 2003-08-11      | f         | 54518
    111147 | 160538872       | Liliana          | Mosquera Uribe     | 1969-12-23 | F      | 3119365364   |                                     | 2007-09-27      | f         | 54518
     22657 | 223974138       | Rodrigo Nelson   | Cabrera Villamizar | 1978-02-28 | M      | 3502554241   | rodrigo.cabrera22657@outlook.com    | 2009-05-02      | f         | 54518
     25949 | 10424994        | Cristian         | Herrera Zuluaga    | 1988-03-24 | M      | 3242295228   | cristian.herrera25949@yahoo.com     | 2010-04-28      | f         | 54518
    113393 | 1015411133      | Santiago         | Bermúdez Ruiz      | 1977-08-22 | M      | 3003993000   |                                     | 2010-11-30      | f         | 54518
     66985 | 1090968710      | Ruth             | Rodríguez Pérez    | 1992-04-13 | F      | 3021808053   |                                     | 2010-12-11      | f         | 54518`

(21 rows)
*/
