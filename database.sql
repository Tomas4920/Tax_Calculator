CREATE DATABASE TaxCalculator;

USE TaxCalculator;

-- Ingresos de trabajo
CREATE TABLE ingresos_trabajo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    empleado_id INT,
    salario DECIMAL(10,2),
    bonificaciones DECIMAL(10,2),
    fecha DATE
);

-- Retenciones
CREATE TABLE retenciones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    empleado_id INT,
    monto_retencion DECIMAL(10,2),
    fecha DATE
);

-- Pagos de seguridad social
CREATE TABLE seguridad_social (
    id INT AUTO_INCREMENT PRIMARY KEY,
    empleado_id INT,
    monto_pago DECIMAL(10,2),
    fecha DATE
);

--Aportes a pensiones
CREATE TABLE aportes_pensiones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    empleado_id INT,
    monto_aporte DECIMAL(10,2),
    fecha DATE
);

--Préstamos hipotecarios
CREATE TABLE prestamos_hipotecarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    empleado_id INT,
    monto_prestamo DECIMAL(10,2),
    fecha DATE
);

--Gastos por educación
CREATE TABLE gastos_educacion (
    id INT AUTO_INCREMENT PRIMARY KEY,
    empleado_id INT,
    monto_gasto DECIMAL(10,2),
    fecha DATE
);
