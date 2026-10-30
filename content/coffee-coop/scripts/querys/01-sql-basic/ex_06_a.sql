-- Exercise 06 - a
-- Farmers: female members in Pamplona ordered by last name and first name

SELECT
    T1.document_number AS document,
    T1.last_name AS last_name,
    T1.first_name AS first_name,
    T1.phone_number AS phone
FROM 
    farm.farmers AS T1
WHERE 
    T1.gender = 'F' AND T1.municipality_code = '54518'
ORDER BY 2,3;

/*
 document  |     last_name     |    first_name     |   phone    
------------+-------------------+-------------------+------------
 768461420  | Agudelo Sandoval  | Marleny           | 3242280898
 931079279  | Álvarez Bonilla   | Edilma            | 3236902029
 463842401  | Álvarez Cárdenas  | Rocío             | 3047898372
 788628125  | Álvarez Carrillo  | Mónica            | 3059237130
 939635303  | Álvarez Correa    | Marleny           | 3232410671
 1089620113 | Arango Narváez    | Myriam Yuliana    | 3178267449
 172555225  | Arias Álvarez     | Edilma Gabriela   | 3213658326
 550696749  | Arias Ramírez     | Viviana           | 3204850778
 797017145  | Barrera Cabrera   | Isabella          | 3041744702
 659942505  | Barrera Correa    | Mariana           | 3126485460

(111 rows)
*/