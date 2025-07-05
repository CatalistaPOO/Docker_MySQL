use 90_ex_mii_banco;

-- 1- Datos de la tarjeta de cliente con NIF 10481533L
select id_tarjeta, pan, marca, anyo_vencimiento 
from tarjetas as t
join cuentas as c on t.fk_cuenta = c.fk_cliente
where c.fk_cliente =  (select id_cliente from clientes where nif = '10481533L');

-- 2- Titulares de cuenta en Madrid sin tarjeta
select id_cliente, apellido1, apellido2, municipio, provincia -- , id_cuenta, pan
from cuentas as c
left join tarjetas as t on t.fk_cuenta = c.id_cuenta
join clientes as cl on cl.id_cliente = c.fk_cliente
where id_cliente not in (select  fk_cliente
						from cuentas as cu
						join tarjetas as ta on cu.id_cuenta = ta.fk_cuenta)
and cl.provincia = 'Madrid';

-- 3 - Extractos del cliente id 29 con su importe total por mes ordenado por cuenta, año y mes.
select cl.id_cliente,cl.apellido1,cl.apellido2, cl.nombre, cu.numero, sum(mo.importe)
from clientes as cl
join cuentas as cu on cu.fk_cliente = cl.id_cliente
join extractos as ex on cu.id_cuenta = ex.fk_cuenta
join movimientos as mo on ex.id_extracto = mo.fk_extracto
where id_cliente = 29 -- and fk_tipo = 1
group by ex.id_extracto 
order by cu.numero, ex.anyo , ex.mes;

-- 4 - Clientes y cantidad de tarjetas, mostrar solo los que tengan mas de 4 tarjetas
select id_cliente, apellido1, apellido2, count(id_tarjeta)as n_tarjetas
from tarjetas as ta
join cuentas as cu on cu.id_cuenta = ta.fk_cuenta
join clientes as cl on cl.id_cliente = cu.fk_cliente
group by cl.id_cliente
having n_tarjetas >= 4;

-- 5 - clientes con compras en junio con importe inferior a la media de las compras en junio
select id_cliente,nombre,apellido1,apellido2
from clientes
;

-- EXTRAS IA ---------------------------------------------------------------------------------------

-- 1 -Obtener el nombre y apellido1 de todos los clientes cuyo nif empiece por '10'. 
select nombre, apellido1, apellido2, nif
from clientes as c
where nif like '10%';

-- 2 -Listar el pan y marca de todas las tarjetas cuyo anyo_vencimiento sea 2025 y el tipo sea 'Crédito'.
select pan, marca, anyo_vencimiento, tipo
from tarjetas
where anyo_vencimiento = 2025 and tipo = 'Credito'
order by marca;

-- 3 -Obtener el numero de cuenta y el nombre del cliente para todas las cuentas asociadas a clientes con provincia 'Barcelona'.
select cu.numero, cl.nombre,cl.apellido1, cl.apellido2, provincia
from clientes as cl
join cuentas as cu on cl.id_cliente = cu.fk_cliente
where provincia = 'Barcelona';

-- 4 -Mostrar el id_movimiento, fecha e importe de todos los movimientos de tipo_movimiento 'Compra' realizados en el año 2023, ordenados por fecha de forma descendente.
select id_movimiento, fecha, importe
from movimientos as mo
join tipos_movimientos as tm on tm.id_tipo_movimiento = mo.fk_tipo
where tm.tipo_movimiento = 'Compra' and year (fecha) = 2020
order by fecha desc;

-- 5 -Para cada tipo_movimiento, calcular el número total de movimientos registrados.
select tm.tipo_movimiento, count(id_movimiento)
from movimientos as mo
join tipos_movimientos as tm on mo.fk_tipo = tm.id_tipo_movimiento
group by tm.tipo_movimiento
order by tm.tipo_movimiento;

-- 6 -Listar el nombre y apellido1 de los clientes que tienen al menos un movimiento con un importe superior a 1000.
select nombre, apellido1
from clientes as cl
join cuentas as cu on cl.id_cliente = cu.fk_cliente
join extractos as ex on ex.fk_cuenta = cu.id_cuenta
join movimientos as mo on mo.fk_extracto = ex.id_extracto
where  importe > 1000
group by cl.id_cliente;

-- 7 -Obtener el id_extracto, anyo y mes de los extractos que tienen un importe total (suma de importe de los movimientos asociados) superior a 5000.
select id_extracto, mes, anyo, sum(importe)as importe_total
from extractos as ex
join movimientos as mo on mo.fk_extracto = ex.id_extracto
group by id_extracto
having importe_total > 5000
order by importe_total;

-- 8 -Mostrar el nombre y apellido1 de los clientes que tienen al menos dos cuentas diferentes.
select nombre, apellido1, count(id_cuenta) as n_cuentas
from clientes as cl
join cuentas as cu on cu.fk_cliente = cl.id_cliente
group by id_cliente
having n_cuentas > 1;

-- 9 -Encontrar el id_cliente y nombre de los clientes que han realizado compras por un importe total superior a la media de todas las compras realizadas en el mes de marzo de 2020.
select id_cliente, nombre, sum(importe) as gasto_compras 
from clientes as cl
join cuentas as cu on cl.id_cliente = cu.fk_cliente
join extractos as ex on cu.id_cuenta = ex.fk_cuenta
join movimientos as mo on ex.id_extracto = mo.fk_extracto
where ex.mes = 3
group by id_cliente
having gasto_compras > (select avg(importe) as media
						from movimientos as mo
						join extractos as ex on ex.id_extracto = mo.fk_extracto
						where ex.mes = 3)
order by gasto_compras;

-- media marzo
select avg(importe) as media
from movimientos as mo
join extractos as ex on ex.id_extracto = mo.fk_extracto
where ex.mes = 3;

-- 10 -Para cada cliente, mostrar su nombre, apellido1 y el número total de movimientos de tipo 'Pago' que ha realizado, siempre y cuando ese cliente tenga más de 5 movimientos de tipo 'Compra'.
select nombre, apellido1, count(id_movimiento) as n_movimientos
from clientes as cl
join cuentas as cu on cl.id_cliente = cu.fk_cliente
join extractos as ex on cu.id_cuenta = ex.fk_cuenta
join movimientos as mo on ex.id_extracto = mo.fk_extracto
where fk_tipo = 1
group by cl.id_cliente
having n_movimientos > 5
order by n_movimientos;

-- 11 -Obtener el id_cliente, nombre y apellido1 de los clientes que tienen un número de cuenta que comienza con 'ES' y un nif que termina en 'R'.
select id_cliente, nombre, apellido1, nif, numero
from clientes as cl
join cuentas as cu on cl.id_cliente = cu.fk_cliente
where cu.numero like "ES%" and cl.nif like "%R";

-- 12 -Obtener el nombre de la marca de tarjeta más utilizada (es decir, la marca con el mayor número de tarjetas emitidas).
select marca, sum(id_tarjeta) as cantidadTarjetas
from tarjetas
group by marca
order by cantidadTarjetas desc
limit 1;
 
-- 13 -Para cada cliente, mostrar su nombre, apellido1 y el importe total de todos sus movimientos de tipo 'Compra' en el mes de mayo. Solo incluir clientes que tengan movimientos de 'Compra'.
select nombre, apellido1, sum(importe)as totalImporte, mes
from clientes as cl
join cuentas as cu on cl.id_cliente = cu.fk_cliente
join extractos as ex on cu.id_cuenta = ex.fk_cuenta
join movimientos as mo on ex.id_extracto = mo.fk_extracto
where ex.mes = 5 and mo.fk_tipo = 1
group by cl.id_cliente;

-- 14 -Identificar las  10 cuentas (id_cuenta, numero) que han tenido mayor gasto en el último mes (asumiendo que es el 31 de diciembre de 2020).
select id_cuenta, numero, mes, sum(importe) as gasto
from cuentas as cu
right join extractos as ex on cu.id_cuenta = ex.fk_cuenta
join movimientos as mo on ex.id_extracto = mo.fk_extracto
where ex.mes = 11
group by id_cuenta
order by gasto desc
limit 10;

-- 15 -Mostrar el id_cliente y nombre de los clientes que tienen tarjetas de más de una marca diferente.
select id_cliente, nombre, count(distinct(marca)) as marcasTarjetas, count(id_tarjeta) as nTarjetas-- , count(id_tarjeta) as NTarjetas
from clientes as cl
join cuentas as cu on cl.id_cliente = cu.fk_cliente
join tarjetas as ta on cu.id_cuenta = ta.fk_cuenta
group by id_cliente
having marcasTarjetas > 1 in (select count(distinct(marca))
								from tarjetas as ta
								join cuentas as cu on cu.id_cuenta = ta.fk_cuenta
								group by cu.fk_cliente);

-- contar tarjetas por marca de un cliente
select count(distinct(marca))
from tarjetas as ta
join cuentas as cu on cu.id_cuenta = ta.fk_cuenta
group by cu.fk_cliente;

-- 16 -Listar los id_extracto, anyo y mes de los extractos cuyo importe total sea superior al importe promedio de todos los extractos registrados.
select id_extracto, anyo as año, mes,round(sum(mo.importe),2) as mediaImporte
from extractos as ex
join movimientos as mo on ex.id_extracto = mo.fk_extracto
group by ex.id_extracto, ex.anyo
having mediaImporte > (select avg(media) as mediaXExtracto
						from (select sum(importe) as media
						from movimientos as mo
						join extractos as ex on ex.id_extracto = mo.fk_extracto
                        group by ex.id_extracto, ex.mes, ex.anyo)as mediaXExtracto)
order by mediaImporte desc;

-- medias por cada extracto (devuelve tabla, donde interesa media)
select id_extracto, sum(importe) as media, mes , anyo
from movimientos as mo
join extractos as ex on ex.id_extracto = mo.fk_extracto
group by ex.id_extracto, ex.mes, ex.anyo

order by id_extracto;

-- recoger de la tabla todas las medias y hacer una media
 select avg(media)
	from (select id_extracto, sum(importe) as media, mes , anyo
			from movimientos as mo
			join extractos as ex on ex.id_extracto = mo.fk_extracto
			group by ex.id_extracto, ex.mes, ex.anyo
			order by id_extracto) as mediaXExtracto;
            
-- 17 -Obtener el nombre y apellido1 de los clientes que han realizado al menos una compra en el  mes de noviembre.
select nombre, apellido1, tm.tipo_movimiento, month(mo.fecha)
from clientes as cl
join cuentas as cu on cl.id_cliente = cu.fk_cliente
join extractos as ex on cu.id_cuenta = ex.fk_cuenta
join movimientos as mo on ex.id_extracto = mo.fk_extracto
join tipos_movimientos as tm on tm.id_tipo_movimiento = mo.fk_tipo
where mo.fk_tipo = 1 and month(mo.fecha) = 11
group by cl.id_cliente, month(mo.fecha);
 
-- 18 -Encontrar los id_cliente y nombre de los clientes que tienen un número de tarjetas superior a la media de tarjetas por cliente.
select  id_cliente, nombre, count(id_tarjeta) as numTarjetas
from clientes as cl
join cuentas as cu on cl.id_cliente = cu.fk_cliente
join tarjetas as ta on cu.id_cuenta = ta.fk_cuenta
group by cl.id_cliente
having numTarjetas > (select avg(conteo.nTarjetas)as mediaTarjeta from
										(select count(id_tarjeta) nTarjetas
										from tarjetas as ta
										join cuentas as cu on cu.id_cuenta = ta.fk_cuenta
										join clientes as cl on cl.id_cliente = cu.fk_cliente
										group by id_cliente) as conteo);

-- hacer la media de tarjetas por cliente (sin decimales)
select round(avg(conteo.nTarjetas),0) as mediaTarjeta from
										(select count(id_tarjeta) nTarjetas
										from tarjetas as ta
										join cuentas as cu on cu.id_cuenta = ta.fk_cuenta
										join clientes as cl on cl.id_cliente = cu.fk_cliente
										group by id_cliente) as conteo;

-- 19 -Para cada provincia, calcular el importe total de todos los movimientos de tipo 'Compra' realizados por clientes de esa provincia en el mes de junio de 2020. 
-- Solo mostrar las provincias donde este importe total sea superior a 50000.
select provincia, sum(importe) as importeTotal
from  clientes as cl
join cuentas as cu on cl.id_cliente = cu.fk_cliente
join extractos as ex on cu.id_cuenta = ex.fk_cuenta
join movimientos as mo on ex.id_extracto = mo.fk_extracto
where mo.fk_tipo = 1 and month(mo.fecha) = 6
group by provincia
having importeTotal > 50000
order by importeTotal;

-- 20 -Mostrar el id_cliente, nombre y apellido1 de los clientes que tienen un movimiento con el importe máximo registrado entre todos los movimientos de tipo 'Pago'.
-- Si hay varios con el mismo importe máximo, mostrar todos.
select id_cliente, nombre, apellido1, max(importe) as importeMaximo
from  clientes as cl
join cuentas as cu on cl.id_cliente = cu.fk_cliente
join extractos as ex on cu.id_cuenta = ex.fk_cuenta
join movimientos as mo on ex.id_extracto = mo.fk_extracto
where mo.fk_tipo = 1
group by id_cliente
having importeMaximo = (select max(importe) as importeMax
						from movimientos 
						where fk_tipo = 1);

-- selecionar el importe maximo de todos los mivmientos
select max(importe) as importeMax
from movimientos 
where fk_tipo = 1;
