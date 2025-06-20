drop database rincon_lector;
create database if not exists rincon_lector;
use rincon_lector;

create table libros(
id_libro int auto_increment,
isbn varchar(17) not null,
titulo varchar(100)not null,
año_publicacion date,
num_paginas int,
precio_venta decimal(5,2) not null,
primary key (id_libro),
unique key (isbn)
);

create table clientes (
id_cliente int auto_increment,
nombre varchar (45) not null,
apellido1 varchar(45) not null,
apellido2 varchar(45),
mail varchar(45) not null,
direccion varchar(100) not null,
primary key (id_cliente),
unique key (mail)
);

create table resenas (
id_resena int auto_increment,
puntuacion int not null,
comentario text,
fecha_resena date,
fk_libro int not null,
fk_cliente int not null,
primary key(id_resena),
check (puntuacion >= 1 and puntuacion <= 5),
foreign key (fk_libro) references libros(id_libro),
foreign key (fk_cliente) references clientes(id_cliente)
);

create table pedidos(
id_pedido int auto_increment,
fecha_pedido date not null,
estado varchar(30) not null,
fk_cliente int not null,
primary key (id_pedido),
foreign key (fk_cliente) references clientes(id_cliente)
);

create table libros_pedidos (
fk_libro int not null,
fk_pedido int not null,
cantidad int not null,
primary key (fk_libro, fk_pedido),
foreign key (fk_libro) references libros(id_libro),
foreign key (fk_pedido) references pedidos(id_pedido)
);

create table autor(
id_autor int auto_increment,
nombre varchar(35) not null,
apellido1 varchar(45)not null,
apellido2 varchar(45),
pais varchar(30)not null,
primary key (id_autor)
);

create table libro_autor (
fk_libro int not null,
fk_autor int not null,
primary key (fk_libro, fk_autor),
foreign key (fk_libro) references libros(id_libro),
foreign key (fk_autor) references autor(id_autor)
);

create table categoria (
id_categoria int auto_increment,
nombre_categoria varchar(45) not null,
primary key (id_categoria)
);

create table libro_categoria(
fk_libro int not null,
fk_categoria int not null,
primary key (fk_libro, fk_categoria),
foreign key (fk_libro) references libros(id_libro),
foreign key (fk_categoria) references categoria(id_categoria)
);