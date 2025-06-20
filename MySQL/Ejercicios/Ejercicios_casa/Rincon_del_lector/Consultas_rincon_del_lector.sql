use rincon_lector;
-- Nivel Básico:
-- 1 Muestra el título y el precio de todos los libros.
select titulo,precio_venta
from libros
order by precio_venta;

-- 2 Obtén el nombre y apellidos de todos los autores
-- nacidos en "España".
select nombre,apellido1,apellido2,pais
from autor
where pais = 'España';

-- 3 Lista el correo electrónico de todos los clientes.
select id_cliente, mail
from clientes
order by id_cliente;

-- 4 Muestra todos los pedidos que tienen
-- un estado de "Pendiente de Pago".
select * 
from pedidos
where estado = 'Pendiente de Pago';

-- Nivel Intermedio:
-- 5 Encuentra el título de los libros escritos por el autor
-- "Gabriel García Márquez".
select l.titulo, a.nombre, a.apellido1, a.apellido2
from libros as l
join libro_autor as la on l.id_libro = la.fk_libro
join autor as a on la.fk_autor = a.id_autor
where  a.nombre = 'Gabriel' and a.apellido1 = 'García' and a.apellido2 = 'Márquez' ;

-- 6 Calcula el número total de libros diferentes en el catálogo.
select distinct(isbn) from libros;

-- 7 Muestra el nombre del cliente y la fecha de sus pedidos,
-- ordenados por fecha de pedido descendente.
select cl.nombre, cl.apellido1, cl.apellido2, pd.fecha_pedido
from clientes as cl
join pedidos as pd on cl.id_cliente = pd.fk_cliente
order by pd.fecha_pedido desc;

-- 8 Obtén el título de los libros que pertenecen 
-- a la categoría "Novela Histórica".
select l.titulo , c.nombre_categoria
from libros as l
join libro_categoria as lc on l.id_libro = lc.fk_libro
join categoria as c on lc.fk_categoria = c.id_categoria
where c.nombre_categoria = 'Novela Histórica';

-- 9 Encuentra el título del libro y la puntuación de
-- todas las reseñas para ese libro.
select l.titulo, r.puntuacion
from libros as l
join resenas as r on l.id_libro = r.fk_libro
order by l.titulo;

-- Nivel Avanzado:
-- 10 Lista el nombre de los clientes que han realizado 
-- más de un pedido.
select concat(cl.nombre, cl.apellido1) as n_cliente, count(pd.fk_cliente) as cantidad_pedidos
from clientes as cl
join pedidos as pd on cl.id_cliente = pd.fk_cliente
group by pd.fk_cliente
having cantidad_pedidos >= 2;

-- 11 Muestra el título de los libros que han sido pedidos
-- por al menos dos clientes diferentes.
select l.titulo, count(distinct p.fk_cliente) as n_clientes_diferentes
from libros as l
join libros_pedidos as lp on l.id_libro = lp.fk_libro
join pedidos as p on lp.fk_pedido = p.id_pedido
group by id_libro
having n_clientes_diferentes >= 2;

-- 12 Encuentra el autor o autores que han escrito el libro
-- con el ISBN '978-8490628280'.
select * 
from autor as a
join libro_autor as la on a.id_autor = la.fk_autor
where la.fk_libro = (select id_libro from libros where isbn ='978-8490628280');

-- 13 Calcula el valor total de cada 
-- pedido (suma del precio * cantidad de cada libro en el pedido).
select sum(l.precio_venta * lp.cantidad) as valor_total_pedido, lp.fk_pedido
from libros as l
join libros_pedidos as lp on l.id_libro = lp.fk_libro
group by lp.fk_pedido
order by lp.fk_pedido;

-- 14 Obtén el nombre del cliente y el título del libro
--  para todos los pedidos, incluyendo los pedidos que 
-- no tienen libros asociados (si es posible en tu diseño)
-- y los libros que no han sido pedidos.
select concat(cl.nombre,', ', cl.apellido1,' ',cl.apellido2) as n_cliente, l.titulo, lp.fk_pedido
from libros_pedidos as lp
right join libros as l on l.id_libro = lp.fk_libro
right join pedidos as p on p.id_pedido = lp.fk_pedido
join clientes as cl on cl.id_cliente = p.fk_cliente
group by lp.fk_libro, lp.fk_pedido, cl.id_cliente;
-- corregido
SELECT
    CONCAT_WS(' ', cl.nombre, cl.apellido1, cl.apellido2) AS nombre_cliente,
    p.id_pedido,
    p.fecha_pedido,
    l.titulo AS titulo_libro_pedido
FROM
    clientes AS cl
LEFT JOIN -- Usamos LEFT JOIN para incluir todos los clientes, incluso si no tienen pedidos
    pedidos AS p ON cl.id_cliente = p.fk_cliente
LEFT JOIN -- Usamos LEFT JOIN para incluir todos los pedidos, incluso si no tienen libros asociados (no es el caso en tu esquema, lp.fk_pedido es NOT NULL)
    libros_pedidos AS lp ON p.id_pedido = lp.fk_pedido
LEFT JOIN -- Usamos LEFT JOIN para incluir todos los libros_pedidos, incluso si el libro no existe (no es el caso)
    libros AS l ON lp.fk_libro = l.id_libro
ORDER BY
    nombre_cliente, p.fecha_pedido, l.titulo;

-- 15 Muestra el título de los libros que no tienen ninguna reseña.
select l.titulo, r.fk_libro
from resenas as r
right join libros as l on l.id_libro = r.fk_libro
where r.fk_libro is null;

-- 16 Encuentra la categoría con más libros asociados.
select count(lc.fk_libro) as n_libros, c.nombre_categoria
from libro_categoria as lc
join categoria as c on c.id_categoria = lc.fk_categoria
group by c.id_categoria;

-- 17 Muestra el nombre del autor y el número de libros que ha escrito cada autor.
select a.nombre,', ', a.apellido1,' ', a.apellido2, count(fk_libro) as n_libros
from autor as a
join libro_autor as la on a.id_autor = la.fk_autor
group by la.fk_autor;

-- 18 Obtén el nombre del cliente y el número total de reseñas que ha dejado.
select cl.nombre, cl.apellido1, cl.apellido2, count(r.id_resena)
from clientes as cl
join resenas as r on cl.id_cliente = r.fk_cliente
group by fk_cliente;