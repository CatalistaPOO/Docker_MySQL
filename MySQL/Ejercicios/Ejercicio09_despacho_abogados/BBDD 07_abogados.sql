drop database if exists 09_abogados;
create database 09_abogados;
use 09_abogados;

create table personas (
id_persona int  auto_increment primary key,
nif varchar (9) not null unique,
nombre varchar(45) not null,
apellido1 varchar (45) not null,
apellido2 varchar (45) not null,
direccion varchar (100)
);

create table empleados (
-- id_empleado int unsigned auto_increment primary key,
fk_persona int not null,
foreign key (fk_persona) references personas(id_persona)
);

create  table clientes (
-- id_cliente int unsigned auto_increment primary key,
fk_persona int not null,
foreign key (fk_persona) references personas(id_persona)
);

create table procuradores (
-- id_procurador int signed auto_increment primary key
fk_empleado int  not null,
foreign key (fk_empleado) references empleados(fk_persona)
);

create table abogados (
-- id_abogado int unsigned not null auto_increment primary key,
fk_empleado int not null,
foreign key (fk_empleado) references empleados(fk_persona)
);

create table especialidades(
id_especialidad int  auto_increment primary key
);

create table  tener_especialidad (
fk_especialidad int not null,
foreign key (fk_especialidad) references especialidades(id_especialidad),
fk_abogado int not null,
foreign key (fk_abogado) references abogados (fk_empleado)
);

create table estados (
id_estado int  auto_increment primary key
);

create table expedientes (
id_expediente int  auto_increment primary key,
fk_estado int not null,
fk_cliente int not null,
fk_abogado int not null,
foreign key (fk_estado) references estados (id_estado),
foreign key (fk_cliente) references clientes(fk_persona),
foreign key (fk_abogado) references abogados(fk_empleado)
);

create table intervenciones (
id_intervencion int  auto_increment primary key,
fk_expediente int not null,
foreign key (fk_expediente) references expedientes (id_expediente),
fk_empleado int not null,
foreign key (fk_empleado) references empleados(fk_persona)
);