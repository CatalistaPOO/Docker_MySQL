drop database if exists Clinica_Vetrinaria; 
Create database Clinica_Veterinaria;
use Clinica_veterinaria;

create table mascotas(
id_mascota int not null auto_increment,
fecha date,
especie varchar(45),
fk_propietario int not null,
primary key (id_mascota),
foreign key (fk_propietario) references propietarios (id_propietario)
);

create table propietarios(
id_propietario int auto_increment,
nombre varchar(30) not null,
apellido1 varchar(30) not null,
apellido2 varchar(30),
direccion varchar(100)not null,
telefono int,
primary key (id_propietario)
);

create table tratamientos(
id_tratamiento int not null auto_increment,
nombre_tratamiento varchar(80) unique not null,
descripcion_tratamiento text not null,
coste int not null,
fk_visitas int not null,
primary key(id_tratamiento),
foreign key (fk_visitas) references visitas (id_visita)
);

create table vetrinarios (
id_vetrinario int not null auto_increment,
numero_colegiado int not null unique,
especialidad varchar(45),
fk_personal int not null,
primary key (id_vetrinario),
foreign key (fk_personal) references personal (id_personal)
);

create table auxiliares(
id_auxiliar int not null auto_increment,
fk_personal int not null,
primary key (id_auxiliar),
foreign key (fk_personal) references personal (id_personal)
);

create table personal(
id_personal int not null auto_increment,
nombre varchar(45) not null,
apellido1 varchar(45) not null,
apellido2 varchar(45),
fecha_contratacion date not null,
salario int not null,
fk_veterinarios int not null,
primary key (id_personal),
foreign key (fk_vetrinarios) references veterinarios(id_veterinario)
);

create table visitas(
id_visita int not null auto_increment,
fecha date not null,
motivo_visita text not null,
diagnostico varchar(120),
fk_tratamiento int not null,
primary key (id_visita),
foreign key (fk_tratamiento) references tratamientos (id_tratamiento)
);