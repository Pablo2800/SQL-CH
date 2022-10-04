use valknut;
CREATE TABLE clientes (
id_cliente INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
Nombre varchar(42) not null,
Apellido varchar(42) not null,
Fecha_de_nacimiento DATE not null,
Sexo varchar(42) not null
);

CREATE TABLE proveedores(
id_proveedor INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
Nombre varchar(42) not null,
Apellido varchar(42) not null,
Direccion varchar(42) not null);

CREATE TABLE productos(
id_producto INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
Nombre varchar(42) not null,
Marca varchar(42) not null,
id_categoria INT NOT NULL,
FOREIGN KEY (id_categoria) REFERENCES categoria_productos(id_categoria)
);

CREATE TABLE ventas(
id_venta INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
Fecha DATE not null,
id_cliente INT not null,
FOREIGN KEY(id_cliente) REFERENCES clientes(id_cliente)
);

CREATE TABLE categoria_productos(
id_categoria INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
Nombre varchar(42) not null,
Cantidad INT NOT NULL
);


