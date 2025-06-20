drop database if exists 03_coches; -- esta linea borra la base de datos entera, util para comprobaciones
Create database 03_coches;
use 03_coches;

CREATE TABLE marcas (
    id_marca INT AUTO_INCREMENT,
    marca VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_marca)
);

CREATE TABLE modelos (
    id_modelo INT AUTO_INCREMENT,
    modelo VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_modelo),
    fk_marca INT NOT NULL,
    CONSTRAINT id_marca FOREIGN KEY (fk_marca)
        REFERENCES marcas (id_marca)
);

CREATE TABLE coches (
    id_coche INT AUTO_INCREMENT,
    matricula VARCHAR(10) NOT NULL,
    precio_alquiler DECIMAL(5 , 2 ),
    color VARCHAR(20),
    PRIMARY KEY (id_coche),
    UNIQUE KEY (matricula),
    fk_modelo INT NOT NULL,
    FOREIGN KEY (fk_modelo)
        REFERENCES modelos (id_modelo)
);

CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT,
    dni VARCHAR(8) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    telefono INT,
    PRIMARY KEY (id_cliente),
    UNIQUE KEY (dni)
);

CREATE TABLE reservas (
    id_reserva INT AUTO_INCREMENT,
    precio_total DECIMAL,
    fecha_inicio DATE,
    fecha_fin DATE,
    PRIMARY KEY (id_reserva),
    fk_cliente INT NOT NULL,
    FOREIGN KEY (fk_cliente)
        REFERENCES clientes (id_cliente)
);

CREATE TABLE coches_por_reservas (
    fk_coche INT,
    fk_reserva INT,
    litros_gasolina INT NOT NULL,
    km_inicio INT NOT NULL,
    km_fin INT,
    PRIMARY KEY (fk_coche , fk_reserva),
    CONSTRAINT cpr_coches FOREIGN KEY (fk_coche)
        REFERENCES coches (id_coche),
    FOREIGN KEY (fk_reserva)
        REFERENCES reservas (id_reserva)
);


CREATE TABLE resrevas_por_clientes (
    fk_cliente INT,
    fk_reservas INT,
    porcentaje INT,
    PRIMARY KEY (fk_cliente , fk_reservas),
    CONSTRAINT rpc_reservas FOREIGN KEY (fk_reservas)
        REFERENCES reservas (id_reserva),
    FOREIGN KEY (fk_cliente)
        REFERENCES clientes (id_cliente)
);