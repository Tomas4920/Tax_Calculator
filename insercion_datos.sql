INSERT INTO ingresos_trabajo (empleado_id, salario, bonificaciones, fecha) VALUES
(1, 2500.00, 500.00, '2024-01-15'),
(2, 3000.00, 0.00, '2024-02-15');


INSERT INTO retenciones (empleado_id, monto_retencion, fecha) VALUES
(1, 300.00, '2024-01-31'),
(2, 350.00, '2024-02-28');


INSERT INTO seguridad_social (empleado_id, monto_pago, fecha) VALUES
(1, 200.00, '2024-01-31'),
(2, 250.00, '2024-02-28');


INSERT INTO aportes_pensiones (empleado_id, monto_aporte, fecha) VALUES
(1, 150.00, '2024-01-31'),
(2, 180.00, '2024-02-28');


INSERT INTO prestamos_hipotecarios (empleado_id, monto_prestamo, fecha) VALUES
(1, 100000.00, '2024-01-10'),
(2, 150000.00, '2024-02-10');


INSERT INTO gastos_educacion (empleado_id, monto_gasto, fecha) VALUES
(1, 500.00, '2024-01-15'),
(2, 600.00, '2024-02-15');
