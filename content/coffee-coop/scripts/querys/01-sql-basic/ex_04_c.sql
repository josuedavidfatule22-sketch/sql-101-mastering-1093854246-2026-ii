-- Exercise 04 - c
-- Municipalities: all municipalities in the country containing 'Pamplona' (case-insensitive)

SELECT
    T1.municipality_name
FROM    
    geo.municipalities AS T1
WHERE
    T1.municipality_name ILIKE '%Pamplona%';

/*
 municipality_name 
-------------------
 Pamplona
(1 fila)
*/
