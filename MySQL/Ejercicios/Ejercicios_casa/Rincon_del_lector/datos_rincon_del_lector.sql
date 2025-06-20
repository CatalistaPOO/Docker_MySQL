-- Usar la base de datos
USE rincon_lector;

-- Insertar datos en la tabla AUTOR
INSERT INTO autor (nombre, apellido1, apellido2, pais) VALUES
('Gabriel', 'García', 'Márquez', 'Colombia'),
('Jane', 'Austen', NULL, 'Reino Unido'),
('George', 'Orwell', NULL, 'Reino Unido'),
('Isabel', 'Allende', NULL, 'Chile'),
('Haruki', 'Murakami', NULL, 'Japón'),
('María', 'Dueñas', NULL, 'España'),
('Ken', 'Follett', NULL, 'Reino Unido'),
('J.K.', 'Rowling', NULL, 'Reino Unido'),
('Stephen', 'King', NULL, 'Estados Unidos'),
('Laura', 'Gallego', NULL, 'España');

-- Insertar datos en la tabla LIBROS
INSERT INTO libros (isbn, titulo, año_publicacion, num_paginas, precio_venta) VALUES
('978-0345353147', 'Cien años de soledad', '1967-05-30', 448, 15.99),
('978-0141439518', 'Orgullo y prejuicio', '1813-01-28', 432, 9.50),
('978-0451524935', '1984', '1949-06-08', 328, 12.75), -- Corregido el título
('978-8420471830', 'La casa de los espíritus', '1982-01-01', 496, 14.95),
('978-0679724942', 'Tokio Blues (Norwegian Wood)', '1987-09-04', 384, 11.20),
('978-8499086884', 'El tiempo entre costuras', '2009-06-25', 640, 19.99),
('978-8490628280', 'Los pilares de la Tierra', '1989-01-01', 1104, 25.00),
('978-8498381488', 'Harry Potter y la piedra filosofal', '1997-06-26', 256, 10.90),
('978-0385199577', 'It', '1986-09-15', 1138, 18.50),
('978-8420485998', 'Memorias de Idhún: La Resistencia', '2004-10-14', 688, 16.00),
('978-0743273565', 'El amor en los tiempos del cólera', '1985-01-01', 368, 13.99),
('978-0544003415', 'El señor de los anillos', '1954-07-29', 1216, 22.50),
('978-0307277717', 'Crimen y castigo', '1866-01-01', 576, 10.00);


-- Insertar datos en la tabla LIBRO_AUTOR (relación N:M)
INSERT INTO libro_autor (fk_libro, fk_autor) VALUES
((SELECT id_libro FROM libros WHERE isbn = '978-0345353147'), (SELECT id_autor FROM autor WHERE nombre = 'Gabriel' AND apellido1 = 'García')),
((SELECT id_libro FROM libros WHERE isbn = '978-0141439518'), (SELECT id_autor FROM autor WHERE nombre = 'Jane' AND apellido1 = 'Austen')),
((SELECT id_libro FROM libros WHERE isbn = '978-0451524935'), (SELECT id_autor FROM autor WHERE nombre = 'George' AND apellido1 = 'Orwell')),
((SELECT id_libro FROM libros WHERE isbn = '978-8420471830'), (SELECT id_autor FROM autor WHERE nombre = 'Isabel' AND apellido1 = 'Allende')),
((SELECT id_libro FROM libros WHERE isbn = '978-0679724942'), (SELECT id_autor FROM autor WHERE nombre = 'Haruki' AND apellido1 = 'Murakami')),
((SELECT id_libro FROM libros WHERE isbn = '978-8499086884'), (SELECT id_autor FROM autor WHERE nombre = 'María' AND apellido1 = 'Dueñas')),
((SELECT id_libro FROM libros WHERE isbn = '978-8490628280'), (SELECT id_autor FROM autor WHERE nombre = 'Ken' AND apellido1 = 'Follett')),
((SELECT id_libro FROM libros WHERE isbn = '978-8498381488'), (SELECT id_autor FROM autor WHERE nombre = 'J.K.' AND apellido1 = 'Rowling')),
((SELECT id_libro FROM libros WHERE isbn = '978-0385199577'), (SELECT id_autor FROM autor WHERE nombre = 'Stephen' AND apellido1 = 'King')),
((SELECT id_libro FROM libros WHERE isbn = '978-8420485998'), (SELECT id_autor FROM autor WHERE nombre = 'Laura' AND apellido1 = 'Gallego')),
((SELECT id_libro FROM libros WHERE isbn = '978-0743273565'), (SELECT id_autor FROM autor WHERE nombre = 'Gabriel' AND apellido1 = 'García')),
((SELECT id_libro FROM libros WHERE isbn = '978-0385199577'), (SELECT id_autor FROM autor WHERE nombre = 'J.K.' AND apellido1 = 'Rowling'));


-- Insertar datos en la tabla CATEGORIA
INSERT INTO categoria (nombre_categoria) VALUES
('Novela Histórica'),
('Ciencia Ficción'),
('Fantasía'),
('Clásicos'),
('Terror'),
('Romance'),
('Realismo Mágico'),
('Thriller'),
('Aventura'),
('Novela'); -- Añadida para coherencia con inserciones de libro_categoria

-- Insertar datos en la tabla LIBRO_CATEGORIA (relación N:M)
INSERT INTO libro_categoria (fk_libro, fk_categoria) VALUES
((SELECT id_libro FROM libros WHERE isbn = '978-0345353147'), (SELECT id_categoria FROM categoria WHERE nombre_categoria = 'Realismo Mágico')),
((SELECT id_libro FROM libros WHERE isbn = '978-0345353147'), (SELECT id_categoria FROM categoria WHERE nombre_categoria = 'Clásicos')),
((SELECT id_libro FROM libros WHERE isbn = '978-0141439518'), (SELECT id_categoria FROM categoria WHERE nombre_categoria = 'Romance')),
((SELECT id_libro FROM libros WHERE isbn = '978-0141439518'), (SELECT id_categoria FROM categoria WHERE nombre_categoria = 'Clásicos')),
((SELECT id_libro FROM libros WHERE isbn = '978-0451524935'), (SELECT id_categoria FROM categoria WHERE nombre_categoria = 'Ciencia Ficción')),
((SELECT id_libro FROM libros WHERE isbn = '978-0451524935'), (SELECT id_categoria FROM categoria WHERE nombre_categoria = 'Clásicos')),
((SELECT id_libro FROM libros WHERE isbn = '978-8420471830'), (SELECT id_categoria FROM categoria WHERE nombre_categoria = 'Realismo Mágico')),
((SELECT id_libro FROM libros WHERE isbn = '978-0679724942'), (SELECT id_categoria FROM categoria WHERE nombre_categoria = 'Novela')),
((SELECT id_libro FROM libros WHERE isbn = '978-8499086884'), (SELECT id_categoria FROM categoria WHERE nombre_categoria = 'Novela Histórica')),
((SELECT id_libro FROM libros WHERE isbn = '978-8490628280'), (SELECT id_categoria FROM categoria WHERE nombre_categoria = 'Novela Histórica')),
((SELECT id_libro FROM libros WHERE isbn = '978-8498381488'), (SELECT id_categoria FROM categoria WHERE nombre_categoria = 'Fantasía')),
((SELECT id_libro FROM libros WHERE isbn = '978-0385199577'), (SELECT id_categoria FROM categoria WHERE nombre_categoria = 'Terror')),
((SELECT id_libro FROM libros WHERE isbn = '978-8420485998'), (SELECT id_categoria FROM categoria WHERE nombre_categoria = 'Fantasía')),
((SELECT id_libro FROM libros WHERE isbn = '978-0743273565'), (SELECT id_categoria FROM categoria WHERE nombre_categoria = 'Romance')),
((SELECT id_libro FROM libros WHERE isbn = '978-0544003415'), (SELECT id_categoria FROM categoria WHERE nombre_categoria = 'Fantasía')),
((SELECT id_libro FROM libros WHERE isbn = '978-0544003415'), (SELECT id_categoria FROM categoria WHERE nombre_categoria = 'Aventura')),
((SELECT id_libro FROM libros WHERE isbn = '978-0307277717'), (SELECT id_categoria FROM categoria WHERE nombre_categoria = 'Clásicos')),
((SELECT id_libro FROM libros WHERE isbn = '978-0307277717'), (SELECT id_categoria FROM categoria WHERE nombre_categoria = 'Thriller'));

-- Insertar datos en la tabla CLIENTES
INSERT INTO clientes (nombre, apellido1, apellido2, mail, direccion) VALUES
('Juan', 'Pérez', 'Gómez', 'juan.perez@example.com', 'Calle Falsa 123, Madrid'),
('María', 'López', NULL, 'maria.lopez@example.com', 'Avenida Siempre Viva 45, Barcelona'),
('Carlos', 'Sánchez', 'Ruiz', 'carlos.sanchez@example.com', 'Plaza Mayor 1, Sevilla'),
('Ana', 'García', 'Martínez', 'ana.garcia@example.com', 'Gran Vía 10, Valencia'),
('Pedro', 'Rodríguez', NULL, 'pedro.rodriguez@example.com', 'Paseo de la Castellana 200, Madrid'),
('Sofía', 'Fernández', 'Blanco', 'sofia.fernandez@example.com', 'Calle Toledo 5, Toledo'),
('Javier', 'Díaz', 'Herrera', 'javier.diaz@example.com', 'Rambla Cataluña 70, Barcelona');


-- Insertar datos en la tabla PEDIDOS
INSERT INTO pedidos (fecha_pedido, estado, fk_cliente) VALUES
('2023-01-15', 'Entregado', (SELECT id_cliente FROM clientes WHERE mail = 'juan.perez@example.com')),
('2023-02-20', 'Enviado', (SELECT id_cliente FROM clientes WHERE mail = 'maria.lopez@example.com')),
('2023-03-01', 'Pendiente de Pago', (SELECT id_cliente FROM clientes WHERE mail = 'carlos.sanchez@example.com')),
('2023-03-05', 'Entregado', (SELECT id_cliente FROM clientes WHERE mail = 'juan.perez@example.com')),
('2023-04-10', 'Cancelado', (SELECT id_cliente FROM clientes WHERE mail = 'ana.garcia@example.com')),
('2023-04-22', 'Enviado', (SELECT id_cliente FROM clientes WHERE mail = 'maria.lopez@example.com')),
('2023-05-01', 'Pendiente', (SELECT id_cliente FROM clientes WHERE mail = 'pedro.rodriguez@example.com')),
('2023-05-05', 'Entregado', (SELECT id_cliente FROM clientes WHERE mail = 'sofia.fernandez@example.com')),
('2023-05-10', 'Enviado', (SELECT id_cliente FROM clientes WHERE mail = 'javier.diaz@example.com')),
('2023-05-12', 'Pendiente', (SELECT id_cliente FROM clientes WHERE mail = 'pedro.rodriguez@example.com'));


-- Insertar datos en la tabla LIBROS_PEDIDOS (detalle de los pedidos)
INSERT INTO libros_pedidos (fk_libro, fk_pedido, cantidad) VALUES
((SELECT id_libro FROM libros WHERE isbn = '978-0345353147'), (SELECT id_pedido FROM pedidos WHERE fecha_pedido = '2023-01-15' AND fk_cliente = (SELECT id_cliente FROM clientes WHERE mail = 'juan.perez@example.com')), 1),
((SELECT id_libro FROM libros WHERE isbn = '978-0141439518'), (SELECT id_pedido FROM pedidos WHERE fecha_pedido = '2023-01-15' AND fk_cliente = (SELECT id_cliente FROM clientes WHERE mail = 'juan.perez@example.com')), 1),
((SELECT id_libro FROM libros WHERE isbn = '978-0451524935'), (SELECT id_pedido FROM pedidos WHERE fecha_pedido = '2023-02-20' AND fk_cliente = (SELECT id_cliente FROM clientes WHERE mail = 'maria.lopez@example.com')), 2),
((SELECT id_libro FROM libros WHERE isbn = '978-8420471830'), (SELECT id_pedido FROM pedidos WHERE fecha_pedido = '2023-02-20' AND fk_cliente = (SELECT id_cliente FROM clientes WHERE mail = 'maria.lopez@example.com')), 1),
((SELECT id_libro FROM libros WHERE isbn = '978-0679724942'), (SELECT id_pedido FROM pedidos WHERE fecha_pedido = '2023-03-01' AND fk_cliente = (SELECT id_cliente FROM clientes WHERE mail = 'carlos.sanchez@example.com')), 1),
((SELECT id_libro FROM libros WHERE isbn = '978-8499086884'), (SELECT id_pedido FROM pedidos WHERE fecha_pedido = '2023-03-05' AND fk_cliente = (SELECT id_cliente FROM clientes WHERE mail = 'juan.perez@example.com')), 1),
((SELECT id_libro FROM libros WHERE isbn = '978-8490628280'), (SELECT id_pedido FROM pedidos WHERE fecha_pedido = '2023-03-05' AND fk_cliente = (SELECT id_cliente FROM clientes WHERE mail = 'juan.perez@example.com')), 1),
((SELECT id_libro FROM libros WHERE isbn = '978-8498381488'), (SELECT id_pedido FROM pedidos WHERE fecha_pedido = '2023-04-10' AND fk_cliente = (SELECT id_cliente FROM clientes WHERE mail = 'ana.garcia@example.com')), 3),
((SELECT id_libro FROM libros WHERE isbn = '978-0385199577'), (SELECT id_pedido FROM pedidos WHERE fecha_pedido = '2023-04-22' AND fk_cliente = (SELECT id_cliente FROM clientes WHERE mail = 'maria.lopez@example.com')), 1),
((SELECT id_libro FROM libros WHERE isbn = '978-0345353147'), (SELECT id_pedido FROM pedidos WHERE fecha_pedido = '2023-05-01' AND fk_cliente = (SELECT id_cliente FROM clientes WHERE mail = 'pedro.rodriguez@example.com')), 1),
((SELECT id_libro FROM libros WHERE isbn = '978-8420485998'), (SELECT id_pedido FROM pedidos WHERE fecha_pedido = '2023-05-01' AND fk_cliente = (SELECT id_cliente FROM clientes WHERE mail = 'pedro.rodriguez@example.com')), 2),
((SELECT id_libro FROM libros WHERE isbn = '978-0743273565'), (SELECT id_pedido FROM pedidos WHERE fecha_pedido = '2023-05-05' AND fk_cliente = (SELECT id_cliente FROM clientes WHERE mail = 'sofia.fernandez@example.com')), 1),
((SELECT id_libro FROM libros WHERE isbn = '978-0544003415'), (SELECT id_pedido FROM pedidos WHERE fecha_pedido = '2023-05-10' AND fk_cliente = (SELECT id_cliente FROM clientes WHERE mail = 'javier.diaz@example.com')), 1);

-- Insertar datos en la tabla RESENAS
INSERT INTO resenas (puntuacion, comentario, fecha_resena, fk_libro, fk_cliente) VALUES
(5, 'Una obra maestra, imprescindible.', '2023-01-20', (SELECT id_libro FROM libros WHERE isbn = '978-0345353147'), (SELECT id_cliente FROM clientes WHERE mail = 'juan.perez@example.com')),
(4, 'Clásico que no defrauda, pero un poco lento al principio.', '2023-02-01', (SELECT id_libro FROM libros WHERE isbn = '978-0141439518'), (SELECT id_cliente FROM clientes WHERE mail = 'maria.lopez@example.com')),
(5, 'Absolutamente revelador, te hace pensar.', '2023-03-10', (SELECT id_libro FROM libros WHERE isbn = '978-0451524935'), (SELECT id_cliente FROM clientes WHERE mail = 'carlos.sanchez@example.com')),
(4, 'Mágico y envolvente, una historia preciosa.', '2023-03-15', (SELECT id_libro FROM libros WHERE isbn = '978-8420471830'), (SELECT id_cliente FROM clientes WHERE mail = 'juan.perez@example.com')),
(3, 'Interesante pero un poco denso para mi gusto.', '2023-04-05', (SELECT id_libro FROM libros WHERE isbn = '978-0679724942'), (SELECT id_cliente FROM clientes WHERE mail = 'ana.garcia@example.com')),
(5, 'Me enganchó desde la primera página, muy recomendable.', '2023-04-20', (SELECT id_libro FROM libros WHERE isbn = '978-8499086884'), (SELECT id_cliente FROM clientes WHERE mail = 'maria.lopez@example.com')),
(5, 'Una saga épica, totalmente inmersiva.', '2023-05-01', (SELECT id_libro FROM libros WHERE isbn = '978-8490628280'), (SELECT id_cliente FROM clientes WHERE mail = 'pedro.rodriguez@example.com')),
(4, 'Un clásico del terror, no apto para cardíacos.', '2023-05-15', (SELECT id_libro FROM libros WHERE isbn = '978-0385199577'), (SELECT id_cliente FROM clientes WHERE mail = 'sofia.fernandez@example.com')),
(5, 'Sencillamente genial, la fantasía en estado puro.', '2023-05-20', (SELECT id_libro FROM libros WHERE isbn = '978-8498381488'), (SELECT id_cliente FROM clientes WHERE mail = 'javier.diaz@example.com'));