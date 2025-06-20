use casa_inmobiliaria;

-- Ejercicio 1: Selección Simple
-- Muestra la dirección, ciudad y precio de venta de todas las propiedades que están en la ciudad de 'Madrid'.
select * 
from casa_Propiedades
where ciudad = 'Madrid';

-- Ejercicio 2: Selección con JOIN
-- Muestra la dirección de cada propiedad y el nombre del tipo de propiedad al que pertenece (ej: "Apartamento", "Casa").
select cp.direccion, tp.nombre_tipo
from casa_Propiedades as cp
join casa_Tipos_Propiedad as tp on cp.id_tipo_propiedad = tp.id_tipo_propiedad
order by tp.nombre_tipo;

-- Ejercicio 3: JOIN Múltiple
-- Lista la dirección de la propiedad, el nombre de su propietario y el email del propietario.
select cp.direccion, cpt.nombre_propietario, cpt.email_propietario
from casa_Tipos_Propiedad as tp
join casa_Propiedades as cp on tp.id_tipo_propiedad = cp.id_tipo_propiedad
join casa_Propietarios as cpt on cp.id_propietario = cpt.id_propietario
order by cpt.id_propietario;

-- Ejercicio 4: Agregación (COUNT y GROUP BY)
-- Cuenta cuántas propiedades hay de cada nombre_tipo (Apartamento, Casa, etc.) y muestra el nombre del tipo y la cantidad.


-- Ejercicio 5: Subconsulta en WHERE
-- Encuentra las propiedades (dirección y precio_venta) cuyo precio_venta sea superior al precio de venta medio de todas las propiedades listadas para la venta.


-- Ejercicio 6: Subconsulta con IN (o JOIN equivalente)
-- Muestra el nombre y email de los clientes que han visitado alguna propiedad en la ciudad de 'Madrid'.
-- (Pista: primero identifica las propiedades en Madrid, luego las visitas a esas propiedades, y finalmente los clientes de esas visitas).


-- Ejercicio 7: LEFT JOIN y IS NULL
-- Encuentra las propiedades (dirección y ciudad) que NUNCA han tenido una visita registrada.


-- Ejercicio 8: Agregación con HAVING
-- Muestra el nombre_propietario y la cantidad de propiedades que posee, pero solo para aquellos propietarios que tienen MÁS de una propiedad listada.

