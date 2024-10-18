SELECT * FROM ingresos_trabajo;


SELECT SUM(monto_retencion) AS total_retenciones
FROM retenciones
WHERE empleado_id = 1;


SELECT * FROM seguridad_social
WHERE fecha BETWEEN '2024-02-01' AND '2024-02-28';
