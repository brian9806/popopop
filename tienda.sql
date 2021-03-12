-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.5.8-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para tienda
CREATE DATABASE IF NOT EXISTS `tienda` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `tienda`;

-- Volcando estructura para tabla tienda.productos
CREATE TABLE IF NOT EXISTS `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precio_compra` float(14,2) NOT NULL,
  `precio_venta` float(14,2) NOT NULL,
  `estado` varchar(50) DEFAULT NULL COMMENT '1= Activo, 0= inactivo',
  `ganancia` tinyint(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla tienda.productos: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio_compra`, `precio_venta`, `estado`, `ganancia`) VALUES
	(1, 'llavez', 'casa', 5000.00, 1500.00, '1', -70),
	(2, 'gel', 'personal', 1000.00, 1500.00, '0', 0),
	(3, 'crema', 'aseo', 7500.00, 4100.00, '0', 0),
	(4, 'tablet', 'regue', 5000.00, 7000.00, '1', 0),
	(5, 'carro', 'trasporte', 50000000.00, 70000000.00, '1', 0),
	(6, 'calculadora', 'personal', 10000.00, 20000.00, '1', 100),
	(7, 'moto', 'fogueo', 5000.00, 7000.00, '1', 40),
	(8, 'cpu', 'comput', 1000000.00, 2000000.00, '1', 100),
	(9, 'pañales', 'aseo', 5000.00, 1500.00, '1', -70);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
