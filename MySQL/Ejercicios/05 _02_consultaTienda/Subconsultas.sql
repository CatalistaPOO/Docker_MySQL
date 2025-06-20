-- productos que tengan el precio mayor a la media de los fabricantes
select 02_tienda;


-- obtenemos la media por fabricante,
select id_fabricante, avg(precio) media
from productos join fabricantes 
on fk_fabricante = id_fabricante
group by id_fabricante;
-- si hiciesemos un join de prodcuto con la tabla que se hubiese creado (llamemosla medias):
select * 
from productos  join medias
on ok _fabriacante  = medias.id_fabricante
where precio>=medias.media;

-- SUBCONSULTAS
-- la subconsulta sería:
select * from productos 
join (select id_fabricante,avg(precio)media
	from productos join fabricantes
	on fk_fabricante = id_fabricante
	group by id_fabricante) medias
on fk_fabricante = medias.id_fabricante
where precio>= medias.media;

-- SUBCONSULTA HAVING
select fabricante, count(*) cant
from productos join fabricantes
on fk_fabricante = id_fabricante
group by fabricante
having cant=(select count(*)
from productos join fabricantes
on fk_fabricante = id_fabricante
where fabricante = 'Asus');
