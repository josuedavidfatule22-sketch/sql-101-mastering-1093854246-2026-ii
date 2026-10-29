-- Exercise 02 - a
-- Coffee varieties: name, species, and description of rust-resistant varieties

SELECT
    T1.variety_id AS variety,
    T1.species,
    T1.description
FROM
    farm.coffee_varieties AS T1
WHERE
    T1.is_rust_resistant = TRUE;

/*
 variety | species |                             description                             
---------+---------+---------------------------------------------------------------------
       1 | arabica | Variedad colombiana resistente a la roya, la más sembrada del país.
       2 | arabica | Variedad compuesta resistente a la roya, antecesora de Castillo.
       4 | arabica | Variedad de porte bajo con resistencia a la roya.
       7 | arabica | Variedad de porte alto resistente a la roya.
      12 | robusta | Especie Coffea canephora, de mayor contenido de cafeína.
(5 rows)
*/