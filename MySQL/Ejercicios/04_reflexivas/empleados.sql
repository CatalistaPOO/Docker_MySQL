CREATE DATABASE  IF NOT EXISTS `04_reflexivas`;
USE `04_reflexivas`;

DROP TABLE IF EXISTS `empleados`;

CREATE TABLE `empleados` (
  `id_empleado` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `dni` varchar(10) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  fk_jefe int,
  PRIMARY KEY (`id_empleado`),
  foreign key (fk_jefe) references empleados (id_empleado)
);

LOCK TABLES `empleados` WRITE;
-- valores para los null de todas las filas: 3,null,2,6,9,2,9,6,2,9,6,3,3,9,6
INSERT INTO empleados VALUES (1,'Javier','Ortega Desio','4473754P','1984-10-2',null);
INSERT INTO empleados VALUES (2,'Marcos','Ayerza','7940816K','1984-5-8',null);
INSERT INTO empleados VALUES (3,'Jeronimo','De La Fuente','5169607A','1986-6-7',null);
INSERT INTO empleados VALUES (4,'Juan Martin','Fernandez Lobbe','5145360O','1983-1-17',null);
INSERT INTO empleados VALUES (5,'Santiago','Garcia Botta','3763193R','1986-1-26',null);
INSERT INTO empleados VALUES (6,'Lucas','Gonzales Amorosino','2807609L','1993-4-15',null);
INSERT INTO empleados VALUES (7,'Marinao','Galarza','1485392G','1988-2-19',null);
INSERT INTO empleados VALUES (8,'Pablo','Matera','6089091L','1974-5-23',null);
INSERT INTO empleados VALUES (9,'Juan','Pablo Socino','6055307E','1975-8-17',null);
INSERT INTO empleados VALUES (10,'Guido','Petti Pagadizabal','2773999I','1997-2-16',null);
INSERT INTO empleados VALUES (11,'Juan','Figallo','8739151Y','1971-12-9',null);
INSERT INTO empleados VALUES (12,'Santiago','Gonzalez Iglesias','3846194N','1987-8-27',null);
INSERT INTO empleados VALUES (13,'Leonardo','Senatore','7610171Y','1962-11-8',null);
INSERT INTO empleados VALUES (14,'Tomas','Lavanini','1172294Y','1984-2-5',null);
INSERT INTO empleados VALUES (15,'Nicolas','Sanchez','7739387C','1997-12-16',null);

UNLOCK TABLES;
