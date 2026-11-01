-- Exercise 10 - c
-- Settlements: settlements without deductions on September 30, 2026 checking gross amount

SELECT
    T1.settlement_id AS settlement,
    T1.delivery_id AS delivery,
    T1.net_weight_kg AS net_weight_kg,
    T1.price_per_kg_applied AS price_per_kg,
    T1.gross_amount AS gross_cop,
    T1.net_weight_kg * T1.price_per_kg_applied AS check_gross_cop,
    T1.deductions_amount AS deductions_cop,
    T1.net_amount AS net_cop
FROM
    pay.settlements AS T1
WHERE
    T1.delivery_id LIKE 'DLV-20260930-%'
    AND T1.deductions_amount = 0;


/*
     settlement      |      delivery       | net_weight_kg | price_per_kg | gross_cop  | check_gross_cop | deductions_cop |  net_cop   
---------------------+---------------------+---------------+--------------+------------+-----------------+----------------+------------
 STL-20261001-000006 | DLV-20260930-000003 |        109.68 |     22083.00 | 2422063.44 |    2422063.4400 |           0.00 | 2422063.44
 STL-20261001-000060 | DLV-20260930-000005 |        251.37 |     21052.00 | 5291841.24 |    5291841.2400 |           0.00 | 5291841.24
 STL-20261003-000006 | DLV-20260930-000012 |         47.08 |     21627.00 | 1018199.16 |    1018199.1600 |           0.00 | 1018199.16
 STL-20261002-000018 | DLV-20260930-000020 |        113.45 |     21439.00 | 2432254.55 |    2432254.5500 |           0.00 | 2432254.55
 STL-20261003-000001 | DLV-20260930-000023 |        219.26 |     22645.00 | 4965142.70 |    4965142.7000 |           0.00 | 4965142.70
 STL-20261002-000006 | DLV-20260930-000025 |        173.32 |     21155.00 | 3666584.60 |    3666584.6000 |           0.00 | 3666584.60
 STL-20261001-000058 | DLV-20260930-000027 |        180.33 |     22112.00 | 3987456.96 |    3987456.9600 |           0.00 | 3987456.96
 STL-20261002-000024 | DLV-20260930-000029 |        228.30 |     21942.00 | 5009358.60 |    5009358.6000 |           0.00 | 5009358.60
 STL-20260930-000050 | DLV-20260930-000037 |         63.66 |     21964.00 | 1398228.24 |    1398228.2400 |           0.00 | 1398228.24
(48 rows)
*/