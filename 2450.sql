/* =========================================================
   ETL REGULATORIO – FORMULARIO 2450
   Producto: Crédito en general
   Periodicidad: Trimestral
   Base de datos: Netezza
   Script representativo (anonimizado)
   ========================================================= */

SELECT
    '2450'                              AS form,
    '3'                                 AS prod_serv,
    '1'                                 AS tipo_cliente,
    '01'                                AS per_jur,
    COUNT(DISTINCT p.customer_number)   AS num_ctes
FROM operation o
JOIN participant p
    ON o.operation_id = p.operation_id
WHERE o.product_type = 'CREDIT'
  AND o.operation_status = 'ACTIVE'
  AND o.operation_date BETWEEN
        DATE 'AAAA-10-01' AND DATE 'AAAA-12-31';
