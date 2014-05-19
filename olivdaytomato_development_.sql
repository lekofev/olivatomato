-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 19, 2014 at 09:11 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `olivdaytomato_development`
--

-- --------------------------------------------------------

--
-- Table structure for table `active_admin_comments`
--

CREATE TABLE IF NOT EXISTS `active_admin_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_id` varchar(255) NOT NULL,
  `resource_type` varchar(255) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `author_type` varchar(255) DEFAULT NULL,
  `body` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `namespace` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_admin_notes_on_resource_type_and_resource_id` (`resource_type`,`resource_id`),
  KEY `index_active_admin_comments_on_namespace` (`namespace`),
  KEY `index_active_admin_comments_on_author_type_and_author_id` (`author_type`,`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE IF NOT EXISTS `admin_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_admin_users_on_email` (`email`),
  UNIQUE KEY `index_admin_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`) VALUES
(1, 'admin@example.com', '$2a$10$zlTSFoQgsffDHg5ktaFMOuPfY55CcpraF/M9gaq7mSX.pfiPycLtG', NULL, NULL, NULL, 33, '2014-05-19 20:36:40', '2014-05-19 20:34:59', '127.0.0.1', '127.0.0.1', '2014-04-03 01:16:47', '2014-05-19 20:36:40');

-- --------------------------------------------------------

--
-- Table structure for table `banner_inicios`
--

CREATE TABLE IF NOT EXISTS `banner_inicios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_titulo` varchar(255) DEFAULT NULL,
  `img_parrafo` text,
  `img_url` varchar(255) DEFAULT NULL,
  `img_link` varchar(255) DEFAULT NULL,
  `orden` int(11) DEFAULT '0',
  `visible` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `seccion_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `banner_inicios`
--

INSERT INTO `banner_inicios` (`id`, `img_titulo`, `img_parrafo`, `img_url`, `img_link`, `orden`, `visible`, `created_at`, `updated_at`, `seccion_id`) VALUES
(1, 'Ensalada Francesa', 'Ensalada Francesa', 'ensalada.jpg', 'https://mail.google.com', 0, 1, '2014-04-09 01:52:54', '2014-04-09 01:57:14', '1'),
(2, 'Ensalada Chilena', 'Ensalada Chilena', 'ensalada.jpg', '', 5, 1, '2014-04-09 01:55:55', '2014-04-26 21:29:06', '1'),
(3, 'Ensalada Peruana', 'Ensalada Peruana', 'ensalada.jpg', 'nolink', 2, 1, '2014-04-09 01:56:20', '2014-04-09 01:56:29', '1'),
(4, 'Ensalada Rusa', 'Ensalada Rusa', 'ensalada.jpg', 'https://www.facebook.com/', 3, 1, '2014-04-09 01:56:55', '2014-04-09 01:56:55', '1'),
(5, NULL, NULL, 'ensalada.jpg', 'https://www.google.com.pe', 1, 1, '2014-04-26 21:28:01', '2014-04-26 21:28:01', '1');

-- --------------------------------------------------------

--
-- Table structure for table `cat_alimentos`
--

CREATE TABLE IF NOT EXISTS `cat_alimentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cat_ingredientes`
--

CREATE TABLE IF NOT EXISTS `cat_ingredientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `precio` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `text_1` varchar(255) DEFAULT NULL,
  `text_2` varchar(255) DEFAULT NULL,
  `orden` int(11) DEFAULT '0',
  `visible` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `cat_ingredientes`
--

INSERT INTO `cat_ingredientes` (`id`, `nombre`, `precio`, `descripcion`, `text_1`, `text_2`, `orden`, `visible`, `created_at`, `updated_at`) VALUES
(1, 'Frutas', '2.30', '', '', '', 0, 1, '2014-05-13 20:08:12', '2014-05-16 17:45:37'),
(2, 'Verduras', '3.50', '', '', '', 0, 1, '2014-05-13 20:08:35', '2014-05-16 17:45:29'),
(3, 'Protehínas', '3.50', '', '', '', 0, 1, '2014-05-13 21:46:07', '2014-05-16 17:45:21');

-- --------------------------------------------------------

--
-- Table structure for table `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `referencia` varchar(255) DEFAULT NULL,
  `text_1` varchar(255) DEFAULT NULL,
  `text_2` varchar(255) DEFAULT NULL,
  `text_3` varchar(255) DEFAULT NULL,
  `orden` int(11) DEFAULT '0',
  `visible` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `apellido`, `telefono`, `email`, `direccion`, `referencia`, `text_1`, `text_2`, `text_3`, `orden`, `visible`, `created_at`, `updated_at`) VALUES
(1, 'ERick', 'rodri', '12121212121', 'rodrigzer@gmail.com', 'sdf', 'sdfs', '', '', '', 0, 1, '2014-05-19 20:26:33', '2014-05-19 20:26:33'),
(2, 'dsaf', 'dsf', '32143124', 'hugui8427@hotmail.com', '4234', '234324', NULL, NULL, NULL, 0, 1, '2014-05-19 20:34:22', '2014-05-19 20:34:22');

-- --------------------------------------------------------

--
-- Table structure for table `enfermedads`
--

CREATE TABLE IF NOT EXISTS `enfermedads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `text_1` varchar(255) DEFAULT NULL,
  `text_2` varchar(255) DEFAULT NULL,
  `orden` int(11) DEFAULT '0',
  `visible` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `enfermedads`
--

INSERT INTO `enfermedads` (`id`, `nombre`, `tipo`, `descripcion`, `text_1`, `text_2`, `orden`, `visible`, `created_at`, `updated_at`) VALUES
(1, 'Lácteos', 'alergia', 'Aliquam eget viverra elit. Nulla dictum placerat velit convallis dignissim. In hac', 'lacteos', '', 0, 1, '2014-05-13 03:39:44', '2014-05-13 22:11:26'),
(2, 'Huevos', 'alergia', 'Viverra elit. Nulla dictum placerat velit convallis dignissim. In hac', 'huevos', '', 0, 1, '2014-05-13 03:40:05', '2014-05-13 22:11:12'),
(3, 'Hipertensión', 'enfermedad', 'In hac habitasse platea dictumst. Fusce commodo auctor urna. ', 'hipertencion', '', 0, 1, '2014-05-13 03:46:04', '2014-05-13 22:11:00'),
(4, 'Obesidad', 'enfermedad', 'Dd vestibulum libero at suscipit viverra. Nunc condimentum nulla eu quam vehicula bibendum.', 'obesidad', '', 0, 1, '2014-05-13 03:46:32', '2014-05-13 22:10:42'),
(5, 'Obesidad camión', 'enfermedad', 'sdf sfdsfdsfdsf sdf sfsdf ', 'obesidad_camion', '', 0, 1, '2014-05-13 22:04:11', '2014-05-13 22:10:15'),
(6, 'Gastritis', 'EnFermeDad', 'onec lobortis faucibus lacus sit amet malesuada. Sed quis tellus cursus, fermentum quam quis, sollicitudin metus', 'gastritis', '', 0, 1, '2014-05-14 19:44:35', '2014-05-14 19:44:35');

-- --------------------------------------------------------

--
-- Table structure for table `ensaladas`
--

CREATE TABLE IF NOT EXISTS `ensaladas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `parrafo` text,
  `txt_adicional_1` text,
  `txt_adicional_2` text,
  `visible` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ensaladas`
--

INSERT INTO `ensaladas` (`id`, `titulo`, `parrafo`, `txt_adicional_1`, `txt_adicional_2`, `visible`, `created_at`, `updated_at`) VALUES
(1, 'Ensaladas', 'Tenemos una selección de ensaladas listas para pedir', '', '', 1, '2014-04-11 02:21:19', '2014-04-11 02:21:19');

-- --------------------------------------------------------

--
-- Table structure for table `galeria_fotos`
--

CREATE TABLE IF NOT EXISTS `galeria_fotos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `img_grande` varchar(255) DEFAULT NULL,
  `miniatura` varchar(255) DEFAULT NULL,
  `txt_adicional_1` text,
  `txt_adicional_2` text,
  `orden` int(11) DEFAULT '0',
  `visible` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `imagen_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `galeria_fotos`
--

INSERT INTO `galeria_fotos` (`id`, `titulo`, `descripcion`, `img_grande`, `miniatura`, `txt_adicional_1`, `txt_adicional_2`, `orden`, `visible`, `created_at`, `updated_at`, `imagen_id`) VALUES
(1, 'La enlasda de fideos', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean iaculis pretium mollis. Pellentesque at justo', 'otro.jpg', 'otro_c.jpg', '', '', 0, 1, '2014-04-16 02:14:46', '2014-04-16 02:18:48', '1'),
(2, 'Ensalada Fresh', 'Proin ac sapien imperdiet metus laoreet varius. Nullam aliquet, magna quis aliquam sollicitudin, dolor', 'otro.jpg', 'otro_c.jpg', '', '', 0, 1, '2014-04-17 17:59:29', '2014-04-17 17:59:29', '1'),
(3, 'Fresa con Lechuga', 'Iperdiet metus laoreet varius. Nullam aliquet, magna quis aliquam sollicitudin, dolor', 'otro.jpg', 'otro_c.jpg', '', '', 0, 1, '2014-04-17 18:00:09', '2014-04-17 18:00:09', '1'),
(4, ' Sed vel nulla ac arcu ultrices', 'Donec a blandit augue, a pretium orci. Sed vel nulla ac arcu ultrices lacinia ac ut augue. Donec tempor congue enim ac facilisis.', 'otro.jpg', 'otro_c.jpg', '', '', 0, 1, '2014-04-17 18:02:11', '2014-04-17 18:02:11', '1'),
(5, ' Nam ante quam, pharetra', ' In ornare felis ac massa adipiscing luctus. Nam ante quam, pharetra varius vulputate quis, scelerisque sed nibh. Nam mollis ', 'otro.jpg', 'otro_c.jpg', '', '', 0, 1, '2014-04-17 18:02:36', '2014-04-17 18:02:36', '1');

-- --------------------------------------------------------

--
-- Table structure for table `galeria_videos`
--

CREATE TABLE IF NOT EXISTS `galeria_videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `url_video` varchar(255) DEFAULT NULL,
  `miniatura` varchar(255) DEFAULT NULL,
  `txt_adicional_1` text,
  `txt_adicional_2` text,
  `orden` int(11) DEFAULT '0',
  `visible` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `imagen_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `galeria_videos`
--

INSERT INTO `galeria_videos` (`id`, `titulo`, `descripcion`, `url_video`, `miniatura`, `txt_adicional_1`, `txt_adicional_2`, `orden`, `visible`, `created_at`, `updated_at`, `imagen_id`) VALUES
(1, 'Salud y ensalada', 'ue orci massa, tempus a purus ut, porta aliquet quam. Ut placerat posuere purus, et interdum massa pulvinar sed. Maecenas tincidunt', '', 'otro_c.jpg', '', '', 0, 1, '2014-04-16 02:19:30', '2014-04-16 02:19:30', '1');

-- --------------------------------------------------------

--
-- Table structure for table `historia`
--

CREATE TABLE IF NOT EXISTS `historia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `imagen` varchar(255) DEFAULT NULL,
  `txt_adicional_1` text,
  `txt_adicional_2` text,
  `orden` int(11) DEFAULT '0',
  `visible` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `historia`
--

INSERT INTO `historia` (`id`, `titulo`, `descripcion`, `imagen`, `txt_adicional_1`, `txt_adicional_2`, `orden`, `visible`, `created_at`, `updated_at`) VALUES
(1, '', '', 'historia.jpg', '', '', 0, 1, '2014-04-17 20:22:03', '2014-04-17 20:22:03'),
(2, '', '', 'historia.jpg', '', '', 0, 1, '2014-04-17 20:22:17', '2014-04-17 20:22:17'),
(3, '', '', 'historia.jpg', '', '', 0, 1, '2014-04-17 20:22:35', '2014-04-17 20:22:35');

-- --------------------------------------------------------

--
-- Table structure for table `imagens`
--

CREATE TABLE IF NOT EXISTS `imagens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foto_titulo` varchar(255) DEFAULT NULL,
  `foto_descripcion` text,
  `video_titulo` varchar(255) DEFAULT NULL,
  `video_descripcion` text,
  `txt_adicional_1` text,
  `txt_adicional_2` text,
  `orden` int(11) DEFAULT '0',
  `visible` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `imagens`
--

INSERT INTO `imagens` (`id`, `foto_titulo`, `foto_descripcion`, `video_titulo`, `video_descripcion`, `txt_adicional_1`, `txt_adicional_2`, `orden`, `visible`, `created_at`, `updated_at`) VALUES
(1, 'Fotos', 'La naturaleza nos inspira, inspírate tu también.', 'Videos', 'Lo más nutritivo que encontramos en la web.', '', '', 0, 1, '2014-04-16 01:45:00', '2014-04-23 01:21:10');

-- --------------------------------------------------------

--
-- Table structure for table `ingredientes`
--

CREATE TABLE IF NOT EXISTS `ingredientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `peso` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `calorias` varchar(255) DEFAULT NULL,
  `grasas` varchar(255) DEFAULT NULL,
  `protehinas` varchar(255) DEFAULT NULL,
  `carbohidratos` varchar(255) DEFAULT NULL,
  `text_1` varchar(255) DEFAULT NULL,
  `text_2` varchar(255) DEFAULT NULL,
  `orden` int(11) DEFAULT '0',
  `visible` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `cat_ingrediente_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ingredientes`
--

INSERT INTO `ingredientes` (`id`, `nombre`, `peso`, `descripcion`, `calorias`, `grasas`, `protehinas`, `carbohidratos`, `text_1`, `text_2`, `orden`, `visible`, `created_at`, `updated_at`, `cat_ingrediente_id`) VALUES
(1, 'Apio', '80', 'Maecenas felis purus, consequat eu aliquet eu, gravida eu ipsum', '130', '80', '120', '40', 'hipertencion', 'apio', 0, 1, '2014-05-13 20:13:15', '2014-05-16 20:05:13', '2'),
(2, 'Tomate', '150', 'pellentesque. Mauris scelerisque, nisi sodales imperdiet bibendum,', '80', '10', '130', '150', 'hipertencion', 'tomate', 0, 1, '2014-05-13 20:14:16', '2014-05-16 20:05:01', '2'),
(3, 'Naranja', '90', 'pellentesque. Mauris scelerisque, nisi sodales imperdiet bibendum,', '20', '10', '80', '120', 'gastritis', 'naranja', 0, 1, '2014-05-13 20:14:55', '2014-05-16 20:04:35', '1'),
(4, 'Pera', '30', 'Mauris scele pellentesque pellentesque.. risque, nisi sodales imperdiet bibendum,', '30', '10', '30', '115', '', 'pera', 0, 1, '2014-05-13 20:15:54', '2014-05-16 20:04:14', '1'),
(5, 'Carne', '85', 'e, nisi sodales imperdiet bib pellentesque. Mauris scelerisquendum,', '0', '65', '20', '35', 'obesidad, hipertencion', 'carne', 0, 1, '2014-05-13 21:46:46', '2014-05-17 20:13:01', '3');

-- --------------------------------------------------------

--
-- Table structure for table `lista_ensaladas`
--

CREATE TABLE IF NOT EXISTS `lista_ensaladas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `txt_adicional_1` text,
  `txt_adicional_2` text,
  `img_grande` varchar(255) DEFAULT NULL,
  `img_chica` varchar(255) DEFAULT NULL,
  `precio` varchar(255) DEFAULT NULL,
  `mineral_1` varchar(255) DEFAULT NULL,
  `mineral_2` varchar(255) DEFAULT NULL,
  `mineral_3` varchar(255) DEFAULT NULL,
  `mineral_4` varchar(255) DEFAULT NULL,
  `mineral_5` varchar(255) DEFAULT NULL,
  `mineral_6` varchar(255) DEFAULT NULL,
  `mineral_7` varchar(255) DEFAULT NULL,
  `orden` int(11) DEFAULT '0',
  `visible` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `ensalada_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `lista_ensaladas`
--

INSERT INTO `lista_ensaladas` (`id`, `titulo`, `descripcion`, `txt_adicional_1`, `txt_adicional_2`, `img_grande`, `img_chica`, `precio`, `mineral_1`, `mineral_2`, `mineral_3`, `mineral_4`, `mineral_5`, `mineral_6`, `mineral_7`, `orden`, `visible`, `created_at`, `updated_at`, `ensalada_id`) VALUES
(1, 'Del cesar', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent at elit arcu. ', '', '', 'salad_g.jpg', 'salad_s.jpg', 'S/.15.30', 'Calorías,20% ', 'Proteínas,20%', 'Carbohidratos,20%', 'Grasas,20%', '', '', '', 0, 1, '2014-04-11 02:58:25', '2014-04-13 20:52:04', '1'),
(3, 'Pardo de Tomato', 'make a type specimen book. It has survived not only five centuries, but also the leap ', '', '', 'salad_g.jpg', 'salad_s.jpg', 'S/.20.50', 'Proteinas1, 20%', 'Proteinas2, 20%', 'Proteinas3, 20%', 'Proteinas4, 20%', '', '', '', 1, 1, '2014-04-12 21:18:58', '2014-04-12 21:19:49', '1'),
(4, 'Tomate al Pesto', 's that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many des\r\n', '', '', 'ensalada.jpg', 'salad_s.jpg', 's/.17.5', 'energía, 10%', 'energía, 10%', 'energía, 10%', 'energía, 10%', '', '', '', 4, 1, '2014-04-12 21:20:01', '2014-05-19 17:28:43', '1'),
(5, 'Papa y Camote', 's, as opposed to using ''Content here, content here'', making ', '', '', 'salad_g.jpg', 'salad_s.jpg', 'S/.20.50', 'Carbohidraots, 12%', 'Carbohidraots, 12%', 'Carbohidraots, 12%', 'Carbohidraots, 12%', '', '', '', 3, 1, '2014-04-12 21:21:45', '2014-05-19 17:28:59', '1'),
(6, 'Ensalada Rusa', ' been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley', '', '', 'salad_g.jpg', 'salad_s.jpg', 'S/.10.30', 'Calorías,20% ', 'Calorías,20% ', 'Calorías,20% ', 'Calorías,20% ', '', '', '', 0, 1, '2014-04-12 21:23:41', '2014-05-19 17:29:09', '1');

-- --------------------------------------------------------

--
-- Table structure for table `nutricions`
--

CREATE TABLE IF NOT EXISTS `nutricions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `parrafo` text,
  `nombre_producto` varchar(255) DEFAULT NULL,
  `img_producto` varchar(255) DEFAULT NULL,
  `mineral_1` varchar(255) DEFAULT NULL,
  `mineral_2` varchar(255) DEFAULT NULL,
  `mineral_3` varchar(255) DEFAULT NULL,
  `mineral_4` varchar(255) DEFAULT NULL,
  `mineral_5` varchar(255) DEFAULT NULL,
  `mineral_6` varchar(255) DEFAULT NULL,
  `mineral_7` varchar(255) DEFAULT NULL,
  `sabias_que` text,
  `fuente` text,
  `txt_adicional_1` text,
  `txt_adicional_2` text,
  `orden` int(11) DEFAULT '0',
  `visible` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nutricions`
--

INSERT INTO `nutricions` (`id`, `titulo`, `parrafo`, `nombre_producto`, `img_producto`, `mineral_1`, `mineral_2`, `mineral_3`, `mineral_4`, `mineral_5`, `mineral_6`, `mineral_7`, `sabias_que`, `fuente`, `txt_adicional_1`, `txt_adicional_2`, `orden`, `visible`, `created_at`, `updated_at`) VALUES
(1, 'Tips Nutricionales', 'Si tienes alguna condición de salud y quieres saber Cómo alimentarte, estás en el lugar correcto.', 'Manzana', 'manzana.jpg', 'Proteínas, 20%', 'Carbohidratos, 20%', 'Energías, 20%', 'Calorías, 20%', 'Sales, 20%', '', '', 'Allam commodo leo a scelerisque imperdiet Integer elementum suscipit tellus, at porttitor.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit Nullam commodo leo a scelerisqueellus, at porttitor.\r\nMpsum dolor sit amet, consectetur adi imperdiet Integer elementum suscipit tellus, at porttitor.', 'https://www.google.com.pe/,\r\nhttps://www.facebook.com/,\r\nhttp://es.wikipedia.org/wiki/Wikipedia:Portada', '', '', 0, 1, '2014-04-13 23:15:16', '2014-04-14 05:13:39');

-- --------------------------------------------------------

--
-- Table structure for table `pedidos`
--

CREATE TABLE IF NOT EXISTS `pedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `ensalada_id` varchar(255) DEFAULT NULL,
  `ensalada_nombre` varchar(255) DEFAULT NULL,
  `ensalada_precio` varchar(255) DEFAULT NULL,
  `orden` int(11) DEFAULT '0',
  `visible` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `referencia` varchar(255) DEFAULT NULL,
  `mensaje` varchar(255) DEFAULT NULL,
  `tipo_de_pago` varchar(255) DEFAULT NULL,
  `monto` varchar(255) DEFAULT NULL,
  `tipo_tarjeta` varchar(255) DEFAULT NULL,
  `pago` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT 'Pendiente',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `pedidos`
--

INSERT INTO `pedidos` (`id`, `nombre`, `telefono`, `ensalada_id`, `ensalada_nombre`, `ensalada_precio`, `orden`, `visible`, `created_at`, `updated_at`, `apellido`, `email`, `direccion`, `referencia`, `mensaje`, `tipo_de_pago`, `monto`, `tipo_tarjeta`, `pago`, `estado`) VALUES
(1, 'roly', '95959', NULL, NULL, NULL, 0, 1, '2014-04-19 00:54:48', '2014-04-19 00:54:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pendiente'),
(17, 'erick', '1231313213', '6', 'Ensalada Rusa', 'S/.10.30', 0, 1, '2014-05-02 19:52:44', '2014-05-02 19:52:44', 'rodri', 'aa@aa.cc', 'sdf f ds', 'f sd dsf ', 's fdsf ', 'efectivo', '20', 'visa', 'soles 20', 'Pendiente'),
(18, 'daniela', '123123213', '6', 'Ensalada Rusa', 'S/.10.30', 0, 1, '2014-05-02 20:20:03', '2014-05-02 20:20:03', 'chia', 'ass@sdfccc.cc', 'sfsdf', 'casa', 'cambi no se q', 'efectivo', '50.00', 'visa', 'soles 50.00', 'Pendiente'),
(19, 'saaa', '2112323232', '6', 'Ensalada Rusa', 'S/.10.30', 0, 1, '2014-05-02 20:21:06', '2014-05-02 20:21:06', 'aa', 'hugui8427@hotmail.com', 'ccd', 'casa', 'cascs sd fds fsdfds', 'efectivo', '50', 'visa', 'soles 50', 'Pendiente'),
(20, 'Marco', '112312312321', 'null', 'Lechuga(2), Platano(1), Carne(1)', '18.60', 0, 1, '2014-05-19 19:41:01', '2014-05-19 19:41:01', 'Ordones', 'sdf@sdfcc.cc', 'sdfsd f', 's dfsd ', 'fsf sdf ', 'efectivo', '20.00', 'visa', 'soles 20.00', 'Pendiente'),
(21, 'gggg', '234234324', 'null', 'Lechuga(2), Platano(1), Carne(1)', '18.60', 0, 1, '2014-05-19 19:43:01', '2014-05-19 19:43:01', 'dfgd f', 'rodrigzer@gmail.com', 'sdfsdfdsf', 'sdf sd', 'f sdf', 'efectivo', '25.00', 'visa', 'soles 25.00', 'Pendiente'),
(22, 'sdfd', '213131312321', 'null', 'Lechuga(2), Platano(1), Carne(1)', '18.60', 0, 1, '2014-05-19 19:43:42', '2014-05-19 19:43:42', 'sdf ds', 'rodrigzer@gmail.com', 'sdfdsf', 'sdf ds', 'fsd ', 'efectivo', '20', 'visa', 'soles 20', 'Pendiente'),
(23, 'ggg', '3242343', 'null', 'Ensalada Personalizada: naranja(3),apio(2),carne(1),', '17.40', 0, 1, '2014-05-19 19:49:51', '2014-05-19 19:49:51', 'aaa', 'rodrigzer@gmail.com', 'sdfds', 'dfsdf', 'sdf', 'efectivo', '25', 'visa', 'soles 25', 'Pendiente'),
(24, 'as', '341231312321', '1', 'Del cesar', 'S/.15.30', 0, 1, '2014-05-19 20:20:57', '2014-05-19 20:20:57', 'asdd', 'rodrigzer@gmail.com', 'sdf dsf', 'd fdsf', ' sdf', 'efectivo', '25', 'visa', 'soles 25', 'Pendiente'),
(25, 'asd', '12312312321', '1', 'Del cesar', 'S/.15.30', 0, 1, '2014-05-19 20:25:08', '2014-05-19 20:25:08', 'asd', 'rodrigzer@gmail.com', 'asd as', 'dsa dsad', ' asd ', 'efectivo', '00.00', 'visa', 'soles 00.00', 'Pendiente'),
(26, 'sdf', '123312312321', '1', 'Del cesar', 'S/.15.30', 0, 1, '2014-05-19 20:29:41', '2014-05-19 20:29:41', 'sdf', 'rodrigzer@gmail.com', '213', '213', '123', 'efectivo', '00.00', 'visa', 'soles 00.00', 'Pendiente'),
(27, 'sdf', '234234423423', '1', 'Del cesar', 'S/.15.30', 0, 1, '2014-05-19 20:30:13', '2014-05-19 20:30:13', 'sdf', 'hugui8427@hotmail.com', 'sdfsdfds', 'fsdfsdf', 'sdfsdf', 'efectivo', '00.00', 'visa', 'soles 00.00', 'Pendiente'),
(28, 'sdf', '231432143', '1', 'Del cesar', 'S/.15.30', 0, 1, '2014-05-19 20:31:07', '2014-05-19 20:31:07', 'sdf', 'rodrigzer@gmail.com', '234234', '34234234234', '2342343242', 'efectivo', '00.00', 'visa', 'soles 00.00', 'Pendiente'),
(29, 'effsdf', '1231231231', '1', 'Del cesar', 'S/.15.30', 0, 1, '2014-05-19 20:31:50', '2014-05-19 20:31:50', 'fsdf', 'asdf@hotmail.com', '2312312', '1231312', '32132121', 'efectivo', '25', 'visa', 'soles 25', 'Pendiente'),
(30, 'dsaf', '32143124', '1', 'Del cesar', 'S/.15.30', 0, 1, '2014-05-19 20:34:22', '2014-05-19 20:34:22', 'dsf', 'hugui8427@hotmail.com', '4234', '234324', '234234', 'efectivo', '00.00', 'visa', 'soles 00.00', 'Pendiente'),
(31, 'aaabbb', '23423423', '1', 'Del cesar', 'S/.15.30', 0, 1, '2014-05-19 20:36:22', '2014-05-19 20:36:22', 'sdfsdf', 'rodrigzer@gmail.com', 'sdfd', 'aaaaaaaaa', 'aaaaaaaaaaaaaaaa', 'efectivo', '00.00', 'visa', 'soles 00.00', 'Pendiente');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20140403011601'),
('20140403011616'),
('20140403011617'),
('20140407194836'),
('20140408193816'),
('20140409012327'),
('20140410044028'),
('20140411015021'),
('20140411023003'),
('20140411025159'),
('20140413223436'),
('20140415185656'),
('20140415185803'),
('20140415190117'),
('20140415191911'),
('20140415191935'),
('20140415193720'),
('20140415193746'),
('20140416005047'),
('20140416011314'),
('20140416012923'),
('20140417201320'),
('20140418222035'),
('20140502163619'),
('20140513032112'),
('20140513172546'),
('20140513172637'),
('20140513172745'),
('20140513174552'),
('20140519200753');

-- --------------------------------------------------------

--
-- Table structure for table `seccions`
--

CREATE TABLE IF NOT EXISTS `seccions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `parrafo` text,
  `txt_adicional_1` text,
  `txt_adicional_2` text,
  `visible` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `seccions`
--

INSERT INTO `seccions` (`id`, `titulo`, `parrafo`, `txt_adicional_1`, `txt_adicional_2`, `visible`, `created_at`, `updated_at`) VALUES
(1, 'null', 'Queremos invitarte a descubrir un nuevo estilo de vida. Comer sano es facil, rápido y delicioso.', '', '', 1, '2014-04-08 19:50:09', '2014-04-08 19:50:09');

-- --------------------------------------------------------

--
-- Table structure for table `site_infos`
--

CREATE TABLE IF NOT EXISTS `site_infos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_title` varchar(255) DEFAULT NULL,
  `facebook_link` varchar(255) DEFAULT NULL,
  `twitter_link` varchar(255) DEFAULT NULL,
  `email_link` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `site_title` varchar(255) DEFAULT NULL,
  `site_desc` varchar(255) DEFAULT NULL,
  `site_keywords` varchar(255) DEFAULT NULL,
  `og_title` varchar(255) DEFAULT NULL,
  `og_desc` varchar(255) DEFAULT NULL,
  `og_url` varchar(255) DEFAULT NULL,
  `og_image` varchar(255) DEFAULT NULL,
  `og_site_name` varchar(255) DEFAULT NULL,
  `texto_adicional_1` varchar(255) DEFAULT NULL,
  `texto_adicional_2` varchar(255) DEFAULT NULL,
  `texto_adicional_3` varchar(255) DEFAULT NULL,
  `texto_adicional_4` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `site_infos`
--

INSERT INTO `site_infos` (`id`, `doc_title`, `facebook_link`, `twitter_link`, `email_link`, `telefono`, `site_title`, `site_desc`, `site_keywords`, `og_title`, `og_desc`, `og_url`, `og_image`, `og_site_name`, `texto_adicional_1`, `texto_adicional_2`, `texto_adicional_3`, `texto_adicional_4`, `created_at`, `updated_at`) VALUES
(1, 'Oliva y Tomato', 'https://www.facebook.com/', 'https://twitter.com/', 'https://mail.google.com/', '987987987', 'Oliva y Tomato', 'Prepara tus ensaladas muy ricas', 'ensaladas preparadas, menu de ensaladas, ensaladas', 'Oliva y Tomato', 'Prepara tus ensaladas muy ricas', 'http://ol.bot-ga.com/', 'face.jpg', 'Oliva y Tomato', '', '', '', '', '2014-04-10 04:51:33', '2014-04-10 05:07:15');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
