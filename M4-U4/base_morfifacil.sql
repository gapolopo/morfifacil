-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.7.36 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para morfifacil
CREATE DATABASE IF NOT EXISTS `morfifacil` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `morfifacil`;

-- Volcando estructura para tabla morfifacil.calendario
CREATE TABLE IF NOT EXISTS `calendario` (
  `ID_REC` bigint(20) NOT NULL,
  `COMIDA` int(11) NOT NULL COMMENT '0 desayuno, 1 almuerzo, 2 merianda, 3 cena',
  `FECHA_COMIDA` datetime NOT NULL,
  `FECHA_CARGA` datetime NOT NULL,
  `USUARIO_CARGA` bigint(20) NOT NULL,
  KEY `FK__recetas` (`ID_REC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Calendario con las recetas por semana';

-- Volcando datos para la tabla morfifacil.calendario: 0 rows
/*!40000 ALTER TABLE `calendario` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendario` ENABLE KEYS */;

-- Volcando estructura para tabla morfifacil.comentarios
CREATE TABLE IF NOT EXISTS `comentarios` (
  `ID_REC` bigint(20) NOT NULL,
  `SABROCIDAD` int(11) DEFAULT '5',
  `FACILIDAD` int(11) DEFAULT '5',
  KEY `FK__recetas` (`ID_REC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Guarda los comentarios sobre cada receta realizada';

-- Volcando datos para la tabla morfifacil.comentarios: 0 rows
/*!40000 ALTER TABLE `comentarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `comentarios` ENABLE KEYS */;

-- Volcando estructura para tabla morfifacil.imagenes
CREATE TABLE IF NOT EXISTS `imagenes` (
  `ID_REC` bigint(20) NOT NULL,
  `ID_IMAGEN` bigint(20) NOT NULL AUTO_INCREMENT,
  `IMAGEN` varchar(1000) NOT NULL,
  PRIMARY KEY (`ID_REC`,`ID_IMAGEN`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Guarda las imagenes de las recetas';

-- Volcando datos para la tabla morfifacil.imagenes: 0 rows
/*!40000 ALTER TABLE `imagenes` DISABLE KEYS */;
/*!40000 ALTER TABLE `imagenes` ENABLE KEYS */;

-- Volcando estructura para tabla morfifacil.recetas
CREATE TABLE IF NOT EXISTS `recetas` (
  `ID_REC` bigint(20) NOT NULL AUTO_INCREMENT,
  `RECETA` text NOT NULL,
  `DENOMINACION` varchar(100) NOT NULL,
  `FECHA` datetime NOT NULL,
  PRIMARY KEY (`ID_REC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Guarda la colección de recetas';

-- Volcando datos para la tabla morfifacil.recetas: 0 rows
/*!40000 ALTER TABLE `recetas` DISABLE KEYS */;
/*!40000 ALTER TABLE `recetas` ENABLE KEYS */;

-- Volcando estructura para tabla morfifacil.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `ID` bigint(9) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `perfil` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='Contiene la info de los usuarios de la solución';

-- Volcando datos para la tabla morfifacil.usuarios: 1 rows
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`ID`, `nombre`, `apellido`, `mail`, `password`, `perfil`) VALUES
	(1, 'Galo', 'Budiño', 'aloruy@gmail.com', 'Cachilo', 'Cheff');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
