--Exercise 01 - b
-- Farms in municipality 54518 with municipality and farmer names

SELECT
    T1.farm_name AS farm,
    T1.rural_district AS rural_district,
    T3.municipality_name AS municipality,
    T2.first_name AS first_name,
    T2.last_name AS last_name
FROM 
    farm.farms AS T1 
    INNER JOIN
    farm.farmers AS T2
    ON T1.farmer_id = T2.farmer_id
    INNER JOIN
    geo.municipalities AS T3
    ON T1.municipality_code = T3.municipality_code
WHERE   
    T1.municipality_code = '54518'
ORDER BY
    T2.last_name;

/*
       farm       |    rural_district    | municipality |     first_name     |      last_name      
------------------+----------------------+--------------+--------------------+---------------------
 La Selva         | Peñas                | Pamplona     | Manuel             | Agudelo Jiménez
 El Jardín        | El Escorial          | Pamplona     | Manuel             | Agudelo Jiménez
 El Diamante      | El Alizal            | Pamplona     | Marleny            | Agudelo Sandoval
 Bellavista       | Alto Grande          | Pamplona     | Rocío              | Álvarez Cárdenas
 El Encanto       | Fontibón             | Pamplona     | Rocío              | Álvarez Cárdenas
 Monteverde       | Lengua               | Pamplona     | Mónica             | Álvarez Carrillo
 La Cabaña        | Lengua               | Pamplona     | Mónica             | Álvarez Carrillo
 El Arrayán       | Navarro              | Pamplona     | Marleny            | Álvarez Correa
 El Mango         | La Legua             | Pamplona     | Alberto            | Álvarez Villamizar
 Monteverde       | La Legua             | Pamplona     | Myriam Yuliana     | Arango Narváez
(368 rows)
*/