--Exercise 03 - a
-- All collection points and their deliveries on September 30, 2026


SELECT
    T2.point_name AS collection_point,
    T1.delivery_id AS delivery,
    T1.gross_weight_kg AS gross_weight_kg
FROM 
    buy.deliveries AS T1
    RIGHT JOIN buy.collection_points AS T2
    ON T1.collection_point_id = T2.collection_point_id
    AND T1.delivery_id LIKE 'DLV-20260930-%';

/*
               collection_point               |      delivery       | gross_weight_kg 
----------------------------------------------+---------------------+-----------------
 Punto de Compra Jambaló 1                    | DLV-20260930-000001 |           51.53
 Punto de Compra Pueblo Bello 1               | DLV-20260930-000245 |           48.86
 Punto de Compra Algeciras 1                  | DLV-20260930-000246 |          247.42
 Punto de Compra Herrán 2                     | DLV-20260930-000247 |          104.84
 Punto de Compra Gigante 1                    | DLV-20260930-000248 |          159.89
 Punto de Compra Algeciras 1                  | DLV-20260930-000249 |          244.21
 Punto de Compra Tuluá 1                      | DLV-20260930-000250 |          256.26
 Punto de Compra La Celia 1                   | DLV-20260930-000251 |          173.91
 Punto de Compra Santander De Quilichao 1     | DLV-20260930-000252 |          310.14
 Punto de Compra Toribío 1                    | DLV-20260930-000253 |          253.15
(338)
La diferencia con el where, es que este elimina las final que no cumplen con la condicion
por ende borra las filas que son null
*/