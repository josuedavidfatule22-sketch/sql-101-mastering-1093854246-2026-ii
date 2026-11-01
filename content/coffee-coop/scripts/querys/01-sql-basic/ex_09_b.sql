-- Exercise 09 - b
-- Quality analyses: analyses on September 30, 2026 with moisture out of 10-12% range


SELECT
    T1.analysis_id AS analysis,
    T1.delivery_id AS delivery,
    T1.moisture_pct AS moisture_pct,
    T1.yield_factor AS yield_factor,
    T1.cup_score AS cup_score,
    T1.analyst_name,
    T1.observations
FROM
    buy.quality_analyses AS T1
WHERE
    T1.analysis_id LIKE 'QA-20260930-%' AND T1.moisture_pct BETWEEN 10 AND 12;

/*
      analysis      |      delivery       | moisture_pct | yield_factor | cup_score |    analyst_name    |       observations                           
--------------------+---------------------+--------------+--------------+-----------+--------------------+-----------------------------------------------------------------
 QA-20260930-000143 | DLV-20260930-000287 |        10.37 |        92.79 |           | Erika Restrepo     | 
 QA-20260930-000146 | DLV-20260930-000288 |        11.30 |        92.26 |     83.47 | Daniel Betancur    | 
 QA-20260930-000133 | DLV-20260930-000291 |        10.68 |        90.06 |           | Jaime Ortega       | 
 QA-20260930-000142 | DLV-20260930-000292 |        10.84 |        93.62 |           | Mariana García     | 
 QA-20260930-000132 | DLV-20260930-000296 |        10.29 |        92.00 |           | Emilio Polanía     | 
 QA-20260930-000148 | DLV-20260930-000298 |        10.10 |        86.00 |     79.64 | Daniel Betancur    | 
 QA-20260930-000151 | DLV-20260930-000299 |        10.49 |        94.80 |           | Aníbal Pabón       | 
 QA-20260930-000001 | DLV-20260930-000003 |        11.55 |        91.69 |           | Gloria Restrepo    | 
 QA-20260930-000002 | DLV-20260930-000004 |        11.13 |        90.28 |           | Gloria Restrepo    | Muestra tomada por duplicado.
 QA-20260930-000007 | DLV-20260930-000008 |        10.14 |        90.60 |           | Mariana García     | 
(111 rows)
*/