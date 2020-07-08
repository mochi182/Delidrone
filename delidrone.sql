-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.3.7-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for delidrone
CREATE DATABASE IF NOT EXISTS `delidrone` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `delidrone`;

-- Dumping structure for table delidrone.restaurante
CREATE TABLE IF NOT EXISTS `restaurante` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `rango_precio_min` decimal(10,2) DEFAULT NULL,
  `rango_precio_max` decimal(10,2) DEFAULT NULL,
  `tiempo_de_entrega` int(11) DEFAULT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  `url_imagen` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table delidrone.restaurante: ~6 rows (approximately)
/*!40000 ALTER TABLE `restaurante` DISABLE KEYS */;
INSERT INTO `restaurante` (`id`, `nombre`, `rango_precio_min`, `rango_precio_max`, `tiempo_de_entrega`, `descripcion`, `url_imagen`, `created_at`, `updated_at`) VALUES
	(1, 'Burger King', 20.00, 30.00, 22, 'Hamburguesas', 'https://amayei.nyc3.digitaloceanspaces.com/2019/04/830559308a3c9a864e02daee8b66177818e1ef77.jpg', '2020-07-08 18:15:58', '2020-07-08 18:15:58'),
	(2, 'La Rana Dorada', 16.00, 22.00, 12, 'Cervezas', 'https://pbs.twimg.com/media/DmlOTncUUAATW9r.jpg', '2020-07-08 18:16:38', '2020-07-08 18:16:38'),
	(3, 'Los Tarascos', 22.00, 30.00, 20, 'Mexicana', 'https://img.taste.com.au/Z2m_6zIt/taste/2016/11/beef-tacos-98153-1.jpeg', '2020-07-08 18:17:19', '2020-07-08 18:17:19'),
	(4, 'Gelarti', 10.00, 22.00, 18, 'Helados', 'https://i.blogs.es/098b7c/helados1/450_1000.jpg', '2020-07-08 18:17:56', '2020-07-08 18:17:56'),
	(5, 'Ciao Bella Pizza', 25.00, 35.00, 25, 'Pizzas', 'https://img.theculturetrip.com/768x512/smart/wp-content/uploads/2018/03/1925734.jpg', '2020-07-08 18:18:27', '2020-07-08 18:18:27'),
	(6, 'Cevicheria Mayce', 12.00, 22.00, 18, 'Ceviches', 'https://i2.wp.com/fountainavenuekitchen.com/wp-content/uploads/2019/07/cheater-shrimp-ceviche-hp.jpg?fit=1170%2C780&ssl=1', '2020-07-08 18:20:02', '2020-07-08 18:20:13');
/*!40000 ALTER TABLE `restaurante` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
