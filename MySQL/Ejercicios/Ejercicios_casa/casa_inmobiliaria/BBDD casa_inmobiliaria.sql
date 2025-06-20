-- 1. CREAR LA BASE DE DATOS (si tienes permisos, si no, selecciona la tuya y crea las tablas)
drop database if exists casa_inmobiliaria;
CREATE DATABASE casa_inmobiliaria;
USE casa_inmobiliaria; 

-- 2. CREAR TABLAS

-- Tabla para los tipos de propiedad (Apartamento, Casa, Local, etc.)
CREATE TABLE casa_Tipos_Propiedad (
    id_tipo_propiedad INT PRIMARY KEY AUTO_INCREMENT,
    nombre_tipo VARCHAR(50) NOT NULL UNIQUE
);

-- Tabla para los propietarios de los inmuebles
CREATE TABLE casa_Propietarios (
    id_propietario INT PRIMARY KEY AUTO_INCREMENT,
    nombre_propietario VARCHAR(100) NOT NULL,
    email_propietario VARCHAR(100) UNIQUE,
    telefono_propietario VARCHAR(20)
);

-- Tabla principal de propiedades
CREATE TABLE casa_Propiedades (
    id_propiedad INT PRIMARY KEY AUTO_INCREMENT,
    direccion VARCHAR(255) NOT NULL,
    ciudad VARCHAR(50) NOT NULL,
    codigo_postal VARCHAR(10),
    id_tipo_propiedad INT,
    id_propietario INT,
    precio_venta DECIMAL(12, 2),
    precio_alquiler DECIMAL(10, 2),
    disponible_venta BOOLEAN DEFAULT TRUE,
    disponible_alquiler BOOLEAN DEFAULT FALSE,
    fecha_listado DATE,
    descripcion TEXT,
    FOREIGN KEY (id_tipo_propiedad) REFERENCES casa_Tipos_Propiedad(id_tipo_propiedad),
    FOREIGN KEY (id_propietario) REFERENCES casa_Propietarios(id_propietario)
);

-- Tabla para los clientes interesados
CREATE TABLE casa_Clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nombre_cliente VARCHAR(100) NOT NULL,
    email_cliente VARCHAR(100) UNIQUE,
    telefono_cliente VARCHAR(20),
    presupuesto_max_compra DECIMAL(12, 2),
    preferencia_alquiler BOOLEAN DEFAULT FALSE
);

-- Tabla para registrar las visitas de los clientes a las propiedades
CREATE TABLE casa_Visitas (
    id_visita INT PRIMARY KEY AUTO_INCREMENT,
    id_propiedad INT,
    id_cliente INT,
    fecha_visita DATETIME NOT NULL,
    comentarios_visita TEXT,
    FOREIGN KEY (id_propiedad) REFERENCES casa_Propiedades(id_propiedad),
    FOREIGN KEY (id_cliente) REFERENCES casa_Clientes(id_cliente)
);

-- 3. INSERTAR DATOS DE EJEMPLO

-- Tipos de Propiedad
INSERT INTO casa_Tipos_Propiedad (nombre_tipo) VALUES
('Apartamento'),
('Casa'),
('Local Comercial'),
('Terreno');

-- Propietarios
INSERT INTO casa_Propietarios (nombre_propietario, email_propietario, telefono_propietario) VALUES
('Carlos Santana', 'c.santana@email.com', '600111222'),
('Luisa Fernandez', 'l.fernandez@email.com', '600333444'),
('Inversiones Sol S.L.', 'info@inversionessol.com', '917890000');

-- Propiedades
INSERT INTO casa_Propiedades (direccion, ciudad, codigo_postal, id_tipo_propiedad, id_propietario, precio_venta, precio_alquiler, disponible_venta, disponible_alquiler, fecha_listado, descripcion) VALUES
('Calle Falsa 123, Piso 2A', 'Madrid', '28001', 1, 1, 350000.00, NULL, TRUE, FALSE, '2024-01-15', 'Luminoso apartamento céntrico con 3 habitaciones.'),
('Avenida Principal 45, Chalet', 'Barcelona', '08001', 2, 2, 650000.00, 2500.00, TRUE, TRUE, '2024-02-20', 'Casa con jardín y piscina, ideal para familias.'),
('Plaza Mayor 1, Bajo', 'Sevilla', '41001', 3, 3, 120000.00, 800.00, TRUE, TRUE, '2024-03-10', 'Local comercial en zona de mucho tránsito.'),
('Camino Viejo s/n', 'Valencia', '46001', 4, 1, 75000.00, NULL, TRUE, FALSE, '2023-12-05', 'Terreno urbanizable con buenas vistas.'),
('Calle Luna 7, Ático', 'Madrid', '28004', 1, 2, 480000.00, 1800.00, FALSE, TRUE, '2024-04-01', 'Ático reformado con terraza espectacular. Alquilado actualmente.');

-- Clientes
INSERT INTO casa_Clientes (nombre_cliente, email_cliente, telefono_cliente, presupuesto_max_compra, preferencia_alquiler) VALUES
('Ana García', 'a.garcia@email.com', '601999888', 400000.00, FALSE),
('Pedro Jiménez', 'p.jimenez@email.com', '601777666', NULL, TRUE),
('Sofía Martín', 's.martin@email.com', '601555444', 700000.00, FALSE),
('Javier Alonso', 'j.alonso@email.com', '601333222', 100000.00, FALSE);

-- Visitas
INSERT INTO casa_Visitas (id_propiedad, id_cliente, fecha_visita, comentarios_visita) VALUES
(1, 1, '2024-02-01 10:00:00', 'Le gustó mucho la luz y la ubicación.'),
(2, 3, '2024-03-05 17:30:00', 'Interesada, pero el jardín requiere mucho mantenimiento.'),
(1, 3, '2024-02-10 12:00:00', 'Necesita pensarlo, el precio es un poco alto.'),
(5, 2, '2024-04-15 11:00:00', 'Perfecto para alquiler, quiere hacer una oferta.');