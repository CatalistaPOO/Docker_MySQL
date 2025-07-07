use 91_recuperatorio_ventas;

-- consulta 1
select e.id_empleado, e.nombre, e.apellido1, e.apellido2, s.id_sucursal, s.sucursal, s.ciudad, p.fecha_pedido
from empleados as e
join sucursales as s on e.fk_sucursal = s.id_sucursal
join pedidos as p on p.fk_empleado = e.id_empleado
where year(p.fecha_pedido) = 2021
order by p.fecha_pedido;

-- consulta 2
select pr.id_producto, pr.nombre, pr.cantidad_en_stock
from productos as pr
left join detalles_pedido as dp on pr.id_producto = dp.fk_producto
where fk_pedido is null and pr.fk_familia = 4;

-- consulta 3
select c.id_cliente, c.nombre,c.apellido1, c.apellido2,  p.id_pedido, p.fecha_pedido, sum(dp.precio_unidad * dp.cantidad) as totalPed
from clientes as c
join pedidos as p on c.id_cliente = p.fk_cliente
join detalles_pedido as dp on p.id_pedido = dp.fk_pedido
where c.id_cliente = 6
group by dp.fk_pedido
order by totalPed;

-- consulta 4
select  p.id_producto, p.nombre, fp.familia, sum(dp.cantidad)as cantidadProd
from productos as p
join detalles_pedido as dp on dp.fk_producto = p.id_producto
join familia_productos as fp on fp.id_familia = p.fk_familia
group by id_producto
having cantidadProd > 20 
order by cantidadProd desc;

-- consulta 5
select s.id_sucursal, s.sucursal, sum(precio_unidad * cantidad) as totalPed 
from sucursales as s
join empleados as e on e.fk_sucursal = s.id_sucursal
join pedidos as p on p.fk_empleado = e.id_empleado
join detalles_pedido as dp on dp.fk_pedido = p.id_pedido
where year(p.fecha_pedido) = 2023
group by id_sucursal;