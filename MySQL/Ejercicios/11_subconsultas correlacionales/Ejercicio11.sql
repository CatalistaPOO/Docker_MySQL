use 02_tienda;


-- SUBCONSULTAS CORRELACIONADAS (EJ 11)

-- 1 media de los precios de los productos excepto el actual
select p.producto, p.precio, (select avg(precio) from productos where id_producto != p.id_producto)
from productos p;