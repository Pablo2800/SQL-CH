use valknut;
CREATE TABLE clientes (
id_cliente INT not null PRIMARY KEY AUTO_INCREMENT,
Nombre varchar(42) not null,
Apellido varchar(42) not null,
Fecha_de_nacimiento varchar(220) not null,
Sexo varchar(42) not null
);

CREATE TABLE proveedores(
id_proveedor INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
Nombre varchar(42) not null,
Apellido varchar(42) not null,
Direccion varchar(42) not null);

CREATE TABLE productos(
id_producto INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
Marca varchar(42) not null,
Modelo varchar(42) not null,
Precio varchar(42) not null,
id_categoria INT NOT NULL,
FOREIGN KEY (id_categoria) REFERENCES categoria_productos(id_categoria)
);

CREATE TABLE ventas(
id_venta INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
Fecha varchar(42) not null,
id_cliente INT not null,
id_producto Int not null,
foreign key(id_producto) references productos(id_producto),
FOREIGN KEY(id_cliente) REFERENCES clientes(id_cliente)
);

CREATE TABLE categoria_productos(
id_categoria INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
Nombre varchar(42) not null
);

INSERT INTO clientes (`id_cliente`,`Nombre`,`Apellido`,`Fecha_de_nacimiento`,`Sexo`) VALUES (1,'Lionel','Messi','24/06/1987','Masculino');
INSERT INTO clientes (`id_cliente`,`Nombre`,`Apellido`,`Fecha_de_nacimiento`,`Sexo`) VALUES (2,'Emiliano','Martinez','30/01/1984','Masculino');
INSERT INTO clientes (`id_cliente`,`Nombre`,`Apellido`,`Fecha_de_nacimiento`,`Sexo`) VALUES (3,'Nicolas','Otamendi','18/05/1992','Masculino');
INSERT INTO clientes (`id_cliente`,`Nombre`,`Apellido`,`Fecha_de_nacimiento`,`Sexo`) VALUES (4,'Cristian','Romero','13/03/1990','Masculino');
INSERT INTO clientes (`id_cliente`,`Nombre`,`Apellido`,`Fecha_de_nacimiento`,`Sexo`) VALUES (5,'Nicolas','Tagliaffico','26/11/1995','Masculino');
INSERT INTO clientes (`id_cliente`,`Nombre`,`Apellido`,`Fecha_de_nacimiento`,`Sexo`) VALUES (6,'Nahuel','Molinas','23/05/1998','Masculino');
INSERT INTO clientes (`id_cliente`,`Nombre`,`Apellido`,`Fecha_de_nacimiento`,`Sexo`) VALUES (7,'Rodrigo','DePaul','24/06/1987','Masculino');
INSERT INTO clientes (`id_cliente`,`Nombre`,`Apellido`,`Fecha_de_nacimiento`,`Sexo`) VALUES (8,'Leandro ','Paredes','30/01/1984','Masculino');
INSERT INTO clientes (`id_cliente`,`Nombre`,`Apellido`,`Fecha_de_nacimiento`,`Sexo`) VALUES (9,'Giovanni','Lo Celso','18/05/1992','Masculino');
INSERT INTO clientes (`id_cliente`,`Nombre`,`Apellido`,`Fecha_de_nacimiento`,`Sexo`) VALUES (10,'Angel','Di Maria','13/03/1990','Masculino');
INSERT INTO clientes (`id_cliente`,`Nombre`,`Apellido`,`Fecha_de_nacimiento`,`Sexo`) VALUES (11,'Lautaro','Martinez','26/11/1995','Masculino');
INSERT INTO clientes (`id_cliente`,`Nombre`,`Apellido`,`Fecha_de_nacimiento`,`Sexo`) VALUES (12,'Antonella','Rocuzzo','23/05/1998','Femenino');
INSERT INTO clientes (`id_cliente`,`Nombre`,`Apellido`,`Fecha_de_nacimiento`,`Sexo`) VALUES (13,'Morena','Beltran','24/06/1987','Femenino');
INSERT INTO clientes (`id_cliente`,`Nombre`,`Apellido`,`Fecha_de_nacimiento`,`Sexo`) VALUES (14,'Emilia','Mernes','30/01/1984','Femenino');
INSERT INTO clientes (`id_cliente`,`Nombre`,`Apellido`,`Fecha_de_nacimiento`,`Sexo`) VALUES (15,'Maria','Becerra','18/05/1992','Femenino');

INSERT INTO productos (`id_producto`,`Marca`,`Modelo`,`Precio`,`id_categoria`) VALUES (1,'Samsung','A51','80000',1);
INSERT INTO productos (`id_producto`,`Marca`,`Modelo`,`Precio`,`id_categoria`) VALUES (2,'Motorola','S21','90000',1);
INSERT INTO productos (`id_producto`,`Marca`,`Modelo`,`Precio`,`id_categoria`) VALUES (3,'iPhone','13 Pro Max','450000',1);
INSERT INTO productos (`id_producto`,`Marca`,`Modelo`,`Precio`,`id_categoria`) VALUES (4,'MiPods','A6s','3000',2);
INSERT INTO productos (`id_producto`,`Marca`,`Modelo`,`Precio`,`id_categoria`) VALUES (5,'Samsung','Galaxy A8','60000',3);
INSERT INTO productos (`id_producto`,`Marca`,`Modelo`,`Precio`,`id_categoria`) VALUES (6,'Lenovo','M8','31000',3);
INSERT INTO productos (`id_producto`,`Marca`,`Modelo`,`Precio`,`id_categoria`) VALUES (7,'Samsung','A22','22000',4);
INSERT INTO productos (`id_producto`,`Marca`,`Modelo`,`Precio`,`id_categoria`) VALUES (8,'Xiaomi','Universal','7000',4);
INSERT INTO productos (`id_producto`,`Marca`,`Modelo`,`Precio`,`id_categoria`) VALUES (9,'Motorola','G9 Plus','140000',1);
INSERT INTO productos (`id_producto`,`Marca`,`Modelo`,`Precio`,`id_categoria`) VALUES (10,'Xiaomi','Mi 11 ultra','230000',1);
INSERT INTO productos (`id_producto`,`Marca`,`Modelo`,`Precio`,`id_categoria`) VALUES (11,'Samsung','A03','1300',5);
INSERT INTO productos (`id_producto`,`Marca`,`Modelo`,`Precio`,`id_categoria`) VALUES (12,'TCL','20','4000',5);

INSERT INTO ventas (`id_venta`,`Fecha`,`id_cliente`,`id_producto`) VALUES (1,'02/12/2022',1,1);
INSERT INTO ventas (`id_venta`,`Fecha`,`id_cliente`,`id_producto`) VALUES (2,'02/12/2022',1,4);
INSERT INTO ventas (`id_venta`,`Fecha`,`id_cliente`,`id_producto`) VALUES (3,'02/12/2022',2,2);
INSERT INTO ventas (`id_venta`,`Fecha`,`id_cliente`,`id_producto`) VALUES (4,'02/12/2022',5,6);
INSERT INTO ventas (`id_venta`,`Fecha`,`id_cliente`,`id_producto`) VALUES (5,'02/12/2022',6,7);
INSERT INTO ventas (`id_venta`,`Fecha`,`id_cliente`,`id_producto`) VALUES (6,'03/12/2022',7,8);
INSERT INTO ventas (`id_venta`,`Fecha`,`id_cliente`,`id_producto`) VALUES (7,'03/12/2022',3,1);
INSERT INTO ventas (`id_venta`,`Fecha`,`id_cliente`,`id_producto`) VALUES (8,'03/12/2022',2,2);
INSERT INTO ventas (`id_venta`,`Fecha`,`id_cliente`,`id_producto`) VALUES (9,'03/12/2022',4,10);
INSERT INTO ventas (`id_venta`,`Fecha`,`id_cliente`,`id_producto`) VALUES (10,'03/12/2022',4,8);
INSERT INTO ventas (`id_venta`,`Fecha`,`id_cliente`,`id_producto`) VALUES (11,'03/12/2022',8,12);
INSERT INTO ventas (`id_venta`,`Fecha`,`id_cliente`,`id_producto`) VALUES (12,'03/12/2022',9,5);
INSERT INTO ventas (`id_venta`,`Fecha`,`id_cliente`,`id_producto`) VALUES (13,'04/12/2022',9,3);
INSERT INTO ventas (`id_venta`,`Fecha`,`id_cliente`,`id_producto`) VALUES (14,'04/12/2022',3,1);
INSERT INTO ventas (`id_venta`,`Fecha`,`id_cliente`,`id_producto`) VALUES (15,'04/12/2022',10,5);

INSERT INTO categoria_productos (`id_categoria`,`Nombre`) VALUES (1,'Celulares');
INSERT INTO categoria_productos (`id_categoria`,`Nombre`) VALUES (2,'Auriculares');
INSERT INTO categoria_productos (`id_categoria`,`Nombre`) VALUES (3,'Tablets');
INSERT INTO categoria_productos (`id_categoria`,`Nombre`) VALUES (4,'Cargadores');
INSERT INTO categoria_productos (`id_categoria`,`Nombre`) VALUES (5,'Fundas');

INSERT INTO proveedores (`id_proveedor`,`Nombre`,`Apellido`,`Direccion`) VALUES (1,'Jose','Arias','Belgrano 5068');
INSERT INTO proveedores (`id_proveedor`,`Nombre`,`Apellido`,`Direccion`) VALUES (2,'Mariano','Morales','Acachufo 8726');
INSERT INTO proveedores (`id_proveedor`,`Nombre`,`Apellido`,`Direccion`) VALUES (3,'Alan','Varela','Caceros 2990');
INSERT INTO proveedores (`id_proveedor`,`Nombre`,`Apellido`,`Direccion`) VALUES (4,'Mariela','Torres','San Martin 4024');
INSERT INTO proveedores (`id_proveedor`,`Nombre`,`Apellido`,`Direccion`) VALUES (5,'Guillermo','Fernandez','Independencia 2931');
INSERT INTO proveedores (`id_proveedor`,`Nombre`,`Apellido`,`Direccion`) VALUES (6,'Silvio','Romero','Almirante Brown 874');
INSERT INTO proveedores (`id_proveedor`,`Nombre`,`Apellido`,`Direccion`) VALUES (7,'Sebastian','Villa','Alem 9412');
INSERT INTO proveedores (`id_proveedor`,`Nombre`,`Apellido`,`Direccion`) VALUES (8,'Ezequiel','Zeballos','Sarmiento 8321');
INSERT INTO proveedores (`id_proveedor`,`Nombre`,`Apellido`,`Direccion`) VALUES (9,'Luca','Langoni','Rosas 5913');
INSERT INTO proveedores (`id_proveedor`,`Nombre`,`Apellido`,`Direccion`) VALUES (10,'Agustin','Rossi','Cervantes 9001');
INSERT INTO proveedores (`id_proveedor`,`Nombre`,`Apellido`,`Direccion`) VALUES (11,'Marcos','Rojo','Boedo 2994');
INSERT INTO proveedores (`id_proveedor`,`Nombre`,`Apellido`,`Direccion`) VALUES (12,'Cristian','Medina','Las Heras 9200');
INSERT INTO proveedores (`id_proveedor`,`Nombre`,`Apellido`,`Direccion`) VALUES (13,'Luis','Vasquez','Urquiza 7652');
