-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: valknut
-- ------------------------------------------------------
-- Server version	8.0.30
/*Las tablas son categoria_productos,clientes,facturas,facturas_log,productos,productos_log,productos_log_registros_borrados,proveedores,ventas y vitacora_categoria_productos */
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `categoria_productos`
--

LOCK TABLES `categoria_productos` WRITE;
/*!40000 ALTER TABLE `categoria_productos` DISABLE KEYS */;
INSERT INTO `categoria_productos` VALUES (1,'Celulares'),(2,'Auriculares'),(3,'Tablets'),(4,'Cargadores'),(5,'Probando');
/*!40000 ALTER TABLE `categoria_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Lionel','Messi','24/06/1987','Masculino'),(2,'Emiliano','Martinez','30/01/1984','Masculino'),(3,'Nicolas','Otamendi','18/05/1992','Masculino'),(4,'Cristian','Romero','13/03/1990','Masculino'),(5,'Nicolas','Tagliaffico','26/11/1995','Masculino'),(6,'Nahuel','Molinas','23/05/1998','Masculino'),(7,'Rodrigo','DePaul','24/06/1987','Masculino'),(8,'Leandro ','Paredes','30/01/1984','Masculino'),(9,'Giovanni','Lo Celso','18/05/1992','Masculino'),(10,'Angel','Di Maria','13/03/1990','Masculino'),(11,'Lautaro','Martinez','26/11/1995','Masculino'),(12,'Antonella','Rocuzzo','23/05/1998','Femenino'),(13,'Morena','Beltran','24/06/1987','Femenino'),(14,'Emilia','Mernes','30/01/1984','Femenino'),(15,'Maria','Becerra','18/05/1992','Femenino'),(16,'Rodrigo','Palacio','26/04/1987','masculino');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `facturas`
--

LOCK TABLES `facturas` WRITE;
/*!40000 ALTER TABLE `facturas` DISABLE KEYS */;
INSERT INTO `facturas` VALUES (1,'A','Belgrano 3',20000.00,'2022-11-21'),(4,'B','San Martin 20',14000.00,'2022-11-21'),(11,'B','Alem 51',8000.00,'2022-11-21');
/*!40000 ALTER TABLE `facturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `facturas_log`
--

LOCK TABLES `facturas_log` WRITE;
/*!40000 ALTER TABLE `facturas_log` DISABLE KEYS */;
INSERT INTO `facturas_log` VALUES (11,'B','Alem 51',8000.00,'2022-11-21');
/*!40000 ALTER TABLE `facturas_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Samsung','A51','80000',1),(2,'Motorola','S21','90000',1),(3,'iPhone','13 Pro Max','450000',1),(4,'MiPods','A6s','3000',2),(5,'Samsung','Galaxy A8','60000',3),(6,'Lenovo','M8','31000',3),(7,'Samsung','A22','22000',4),(8,'Xiaomi','Universal','7000',4),(9,'Motorola','G9 Plus','140000',1),(10,'Xiaomi','Mi 11 ultra','230000',1),(11,'Samsung','A03','1300',5),(12,'TCL','20','4000',5);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `productos_log`
--

LOCK TABLES `productos_log` WRITE;
/*!40000 ALTER TABLE `productos_log` DISABLE KEYS */;
INSERT INTO `productos_log` VALUES (16,'Samsung','S2','48000',1);
/*!40000 ALTER TABLE `productos_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `productos_log_registros_borrados`
--

LOCK TABLES `productos_log_registros_borrados` WRITE;
/*!40000 ALTER TABLE `productos_log_registros_borrados` DISABLE KEYS */;
INSERT INTO `productos_log_registros_borrados` VALUES (16,'Samsung','S2','48000',1);
/*!40000 ALTER TABLE `productos_log_registros_borrados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'Jose','Arias','Belgrano 5068'),(2,'Mariano','Morales','Acachufo 8726'),(3,'Alan','Varela','Caceros 2990'),(4,'Mariela','Torres','San Martin 4024'),(5,'Guillermo','Fernandez','Independencia 2931'),(6,'Silvio','Romero','Almirante Brown 874'),(7,'Sebastian','Villa','Alem 9412'),(8,'Ezequiel','Zeballos','Sarmiento 8321'),(9,'Luca','Langoni','Rosas 5913'),(10,'Agustin','Rossi','Cervantes 9001'),(11,'Marcos','Rojo','Boedo 2994'),(12,'Cristian','Medina','Las Heras 9200'),(13,'Luis','Vasquez','Urquiza 7652');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,'02/12/2022',1,1),(2,'02/12/2022',1,4),(3,'02/12/2022',2,2),(4,'02/12/2022',5,6),(5,'02/12/2022',6,7),(6,'03/12/2022',7,8),(7,'03/12/2022',3,1),(8,'03/12/2022',2,2),(9,'03/12/2022',4,10),(10,'03/12/2022',4,8),(11,'03/12/2022',8,12),(12,'03/12/2022',9,5),(13,'04/12/2022',9,3),(14,'04/12/2022',3,1),(15,'04/12/2022',10,5);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `vitacora_categoria_productos`
--

LOCK TABLES `vitacora_categoria_productos` WRITE;
/*!40000 ALTER TABLE `vitacora_categoria_productos` DISABLE KEYS */;
INSERT INTO `vitacora_categoria_productos` VALUES (1,'2022-10-27 23:31:53','root@localhost','Fundas','Probando','Se actualizaron los datos'),(4,'2022-10-27 23:43:40','root@localhost','Vidrios',NULL,'Se borraron los datos');
/*!40000 ALTER TABLE `vitacora_categoria_productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-10 17:07:49
