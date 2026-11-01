-- Exercise 09 - c
-- Quality analyses: unaccepted analyses on September 30, 2026 with observations ordered by defect percentage

SELECT
    T1.analysis_id AS analysis,
    T1.delivery_id AS delivery,
    T1.moisture_pct AS moisture_pct,
    T1.yield_factor AS yield_factor,
    T1.cup_score AS cup_score,
    T1.analyst_name,
    T1.observations,
    T1.defects_pct
FROM
    buy.quality_analyses AS T1
WHERE
    T1.analysis_id LIKE 'QA-20260930-%'AND T1.is_accepted IS FALSE AND T1.observations IS NOT NULL
ORDER BY T1.defects_pct DESC;

/*
      analysis      |      delivery       | moisture_pct | yield_factor | cup_score |    analyst_name    |                observations                 |  defects_pct 
--------------------+---------------------+--------------+--------------+-----------+--------------------+---------------------------------------------+-----------------
 QA-20260930-000104 | DLV-20260930-000214 |        17.68 |        97.46 |     82.59 | Carolina Rodríguez | Olor a fermento en la muestra.              |       19.54
 QA-20260930-000068 | DLV-20260930-000165 |        16.13 |       100.22 |           | Germán Peña        | Muestra tomada por duplicado.               |       17.29
 QA-20260930-000119 | DLV-20260930-000253 |         8.39 |       106.52 |     84.33 | Aníbal Pabón       | Exceso de impurezas y pasilla.              |       15.59
 QA-20260930-000086 | DLV-20260930-000147 |        15.20 |        96.57 |           | Erika Restrepo     | Olor a fermento en la muestra.              |       13.21
 QA-20260930-000113 | DLV-20260930-000223 |         9.57 |        99.70 |     85.05 | Reinaldo Bermúdez  | Café sobresecado, grano quebradizo.         |       12.94
 QA-20260930-000022 | DLV-20260930-000070 |        12.95 |       103.55 |           | Santiago Rojas     | Café con humedad alta, requiere más secado. |        9.75
 QA-20260930-000018 | DLV-20260930-000006 |        17.24 |       103.31 |     79.98 | Nicolás Serrano    | Café con humedad alta, requiere más secado. |        7.88
(7 rows)
*/