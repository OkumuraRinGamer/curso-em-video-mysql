-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 07-Jan-2021 às 21:22
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cadastro`
--
CREATE DATABASE IF NOT EXISTS `cadastro` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `cadastro`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

CREATE TABLE IF NOT EXISTS `cursos` (
  `idcurso` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `descricao` text DEFAULT NULL,
  `carga` int(10) UNSIGNED DEFAULT NULL,
  `totaulas` int(10) UNSIGNED DEFAULT NULL,
  `ano` year(4) DEFAULT 2020,
  PRIMARY KEY (`idcurso`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`idcurso`, `nome`, `descricao`, `carga`, `totaulas`, `ano`) VALUES
(1, 'HTML5', 'Curso de HTML5', 40, 37, 2014),
(2, 'Algoritmos', 'Lógica de Programação', 20, 15, 2014),
(3, 'Photoshop', 'Dicas de Photoshop CC', 10, 8, 2014),
(4, 'PHP', 'Cursos de PHP para iniciantes', 40, 20, 2015),
(5, 'Java', 'Intradução à Linguagem Java', 40, 29, 2015),
(6, 'MySQL', 'Banco de Dados MySQL', 30, 15, 2016),
(7, 'Word', 'Curso completo de Word', 40, 30, 2016);

-- --------------------------------------------------------

--
-- Estrutura da tabela `gafanhotos`
--

CREATE TABLE IF NOT EXISTS `gafanhotos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `prof` varchar(20) DEFAULT ' ',
  `nascimento` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `altura` decimal(3,2) DEFAULT NULL,
  `nacionalidade` varchar(20) DEFAULT 'Brasil',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `gafanhotos`
--

INSERT INTO `gafanhotos` (`id`, `nome`, `prof`, `nascimento`, `sexo`, `peso`, `altura`, `nacionalidade`) VALUES
(1, 'Godofredo', NULL, '1984-01-02', 'M', '78.50', '1.83', 'Brasil'),
(12, 'Mari', NULL, '1984-01-02', 'M', '78.50', '1.83', 'Brasil'),
(23, 'Bernard', NULL, '2020-12-22', 'M', '50.00', '1.00', 'United States'),
(24, 'Clark', NULL, '2021-08-02', 'M', '87.00', '2.00', 'United States'),
(25, 'Lewis', NULL, '2020-08-10', 'M', '81.00', '2.00', 'United States'),
(26, 'Ryder', NULL, '2020-03-12', 'M', '79.00', '1.00', 'United States'),
(27, 'Bevis', NULL, '2021-06-01', 'M', '75.00', '2.00', 'United States'),
(28, 'Herman', NULL, '2020-03-15', 'M', '99.00', '1.00', 'United States'),
(29, 'Lucius', NULL, '2021-06-30', 'M', '57.00', '2.00', 'United States'),
(30, 'Kermit', NULL, '2021-07-28', 'M', '105.00', '1.00', 'United States'),
(31, 'Abel', NULL, '2021-11-13', 'M', '149.00', '2.00', 'United States'),
(32, 'Herman', NULL, '2021-12-04', 'M', '121.00', '1.00', 'United States'),
(33, 'Declan', NULL, '2020-09-10', 'M', '87.00', '1.00', 'United States'),
(34, 'Lewis', NULL, '2020-09-09', 'M', '61.00', '2.00', 'United States'),
(35, 'Chaim', NULL, '2021-11-14', 'M', '113.00', '1.00', 'United States'),
(36, 'Tanek', NULL, '2020-07-25', 'M', '66.00', '2.00', 'United States'),
(37, 'Tiger', NULL, '2020-09-05', 'M', '91.00', '1.00', 'United States'),
(38, 'Tarik', NULL, '2020-08-07', 'M', '112.00', '1.00', 'United States'),
(39, 'Mannix', NULL, '2020-06-24', 'M', '84.00', '1.00', 'United States'),
(40, 'Travis', NULL, '2021-11-26', 'M', '123.00', '2.00', 'United States'),
(41, 'Elliott', NULL, '2020-01-23', 'M', '90.00', '1.00', 'United States'),
(42, 'Isaac', NULL, '2021-05-22', 'M', '122.00', '2.00', 'United States'),
(43, 'Cooper', NULL, '2020-06-23', 'M', '108.00', '1.00', 'United States'),
(44, 'Uriah', NULL, '2021-10-23', 'M', '119.00', '2.00', 'United States'),
(45, 'Conan', NULL, '2020-04-19', 'M', '147.00', '2.00', 'United States'),
(46, 'Castor', NULL, '2021-09-08', 'M', '111.00', '1.00', 'United States'),
(47, 'Alexander', NULL, '2020-01-27', 'M', '133.00', '1.00', 'United States'),
(48, 'Brody', NULL, '2020-03-07', 'M', '114.00', '2.00', 'United States'),
(49, 'Armando', NULL, '2020-02-10', 'M', '125.00', '1.00', 'United States'),
(50, 'Kibo', NULL, '2021-05-16', 'M', '138.00', '1.00', 'United States'),
(51, 'Prescott', NULL, '2021-01-10', 'M', '142.00', '2.00', 'United States'),
(52, 'Lars', NULL, '2020-01-13', 'M', '99.00', '1.00', 'United States'),
(53, 'Timothy', NULL, '2021-09-07', 'M', '66.00', '2.00', 'United States'),
(54, 'Levi', NULL, '2020-12-29', 'M', '125.00', '2.00', 'United States'),
(55, 'Ralph', NULL, '2020-09-05', 'M', '98.00', '2.00', 'United States'),
(56, 'Cedric', NULL, '2020-09-22', 'M', '50.00', '2.00', 'United States'),
(57, 'Matthew', NULL, '2020-01-17', 'M', '122.00', '1.00', 'United States'),
(58, 'Price', NULL, '2020-10-21', 'M', '86.00', '2.00', 'United States'),
(59, 'Camden', NULL, '2020-07-26', 'M', '101.00', '2.00', 'United States'),
(60, 'Vaughan', NULL, '2020-05-11', 'M', '110.00', '1.00', 'United States'),
(61, 'Hyatt', NULL, '2020-04-09', 'M', '80.00', '2.00', 'United States'),
(62, 'Lawrence', NULL, '2020-01-16', 'M', '145.00', '1.00', 'United States'),
(63, 'Kamal', NULL, '2021-03-28', 'M', '135.00', '2.00', 'United States'),
(64, 'Kato', NULL, '2020-11-11', 'M', '106.00', '1.00', 'United States'),
(65, 'Ryan', NULL, '2021-06-10', 'M', '119.00', '2.00', 'United States'),
(66, 'Stone', NULL, '2020-07-27', 'M', '62.00', '1.00', 'United States'),
(67, 'Jelani', NULL, '2020-08-16', 'M', '123.00', '2.00', 'United States'),
(68, 'Akeem', NULL, '2020-04-22', 'M', '75.00', '1.00', 'United States'),
(69, 'Troy', NULL, '2021-11-17', 'M', '129.00', '1.00', 'United States'),
(70, 'Cullen', NULL, '2021-02-07', 'M', '75.00', '2.00', 'United States'),
(71, 'Ronan', NULL, '2020-10-25', 'M', '76.00', '2.00', 'United States'),
(72, 'Colin', NULL, '2021-04-27', 'M', '50.00', '1.00', 'United States'),
(73, 'Omar', NULL, '2020-09-18', 'M', '61.00', '2.00', 'United States'),
(74, 'Daniel', NULL, '2021-10-29', 'M', '132.00', '2.00', 'United States'),
(75, 'Rogan', NULL, '2021-05-21', 'M', '117.00', '1.00', 'United States'),
(76, 'Victor', NULL, '2021-12-12', 'M', '134.00', '1.00', 'United States'),
(77, 'Rajah', NULL, '2021-08-06', 'M', '78.00', '2.00', 'United States'),
(78, 'Neville', NULL, '2021-05-30', 'M', '91.00', '1.00', 'United States'),
(79, 'Conan', NULL, '2021-02-16', 'M', '80.00', '2.00', 'United States'),
(80, 'Arsenio', NULL, '2021-04-29', 'M', '54.00', '1.00', 'United States'),
(81, 'Mark', NULL, '2020-08-04', 'M', '107.00', '2.00', 'United States'),
(82, 'Lionel', NULL, '2020-12-23', 'M', '88.00', '2.00', 'United States'),
(83, 'Ignatius', NULL, '2020-11-01', 'M', '75.00', '2.00', 'United States'),
(84, 'Lars', NULL, '2020-08-19', 'M', '82.00', '1.00', 'United States'),
(85, 'Brenden', NULL, '2020-05-12', 'M', '59.00', '2.00', 'United States'),
(86, 'James', NULL, '2020-04-23', 'M', '68.00', '2.00', 'United States'),
(87, 'Macon', NULL, '2020-03-08', 'M', '83.00', '2.00', 'United States'),
(88, 'Marshall', NULL, '2021-05-23', 'M', '147.00', '2.00', 'United States'),
(89, 'Hashim', NULL, '2020-09-13', 'M', '98.00', '2.00', 'United States'),
(90, 'Joseph', NULL, '2021-07-13', 'M', '63.00', '1.00', 'United States'),
(91, 'Patrick', NULL, '2021-11-20', 'M', '124.00', '2.00', 'United States'),
(92, 'Macaulay', NULL, '2020-07-06', 'M', '146.00', '1.00', 'United States'),
(93, 'Tad', NULL, '2020-11-28', 'M', '134.00', '2.00', 'United States'),
(94, 'Merrill', NULL, '2020-05-05', 'M', '106.00', '2.00', 'United States'),
(95, 'Griffin', NULL, '2020-06-10', 'M', '111.00', '1.00', 'United States'),
(96, 'Axel', NULL, '2020-05-29', 'M', '129.00', '1.00', 'United States'),
(97, 'Alden', NULL, '2020-07-20', 'M', '89.00', '1.00', 'United States'),
(98, 'Nathan', NULL, '2021-12-15', 'M', '70.00', '2.00', 'United States'),
(99, 'Fritz', NULL, '2020-07-02', 'M', '51.00', '2.00', 'United States'),
(100, 'Xavier', NULL, '2021-08-25', 'M', '122.00', '1.00', 'United States'),
(101, 'Martin', NULL, '2021-12-29', 'M', '65.00', '2.00', 'United States'),
(102, 'Kenyon', NULL, '2021-05-11', 'M', '108.00', '1.00', 'United States'),
(103, 'Edan', NULL, '2020-03-17', 'M', '56.00', '1.00', 'United States'),
(104, 'Dexter', NULL, '2020-12-07', 'M', '112.00', '2.00', 'United States'),
(105, 'Chaney', NULL, '2020-04-27', 'M', '112.00', '2.00', 'United States'),
(106, 'Kelly', NULL, '2021-11-24', 'M', '68.00', '1.00', 'United States'),
(107, 'Stone', NULL, '2021-10-21', 'M', '113.00', '1.00', 'United States'),
(108, 'Merritt', NULL, '2021-03-29', 'M', '100.00', '1.00', 'United States'),
(109, 'Jonah', NULL, '2021-12-31', 'M', '61.00', '2.00', 'United States'),
(110, 'Curran', NULL, '2021-10-05', 'M', '145.00', '2.00', 'United States'),
(111, 'Linus', NULL, '2020-04-25', 'M', '106.00', '2.00', 'United States'),
(112, 'Erich', NULL, '2021-05-01', 'M', '115.00', '2.00', 'United States'),
(113, 'Cairo', NULL, '2021-12-17', 'M', '72.00', '2.00', 'United States'),
(114, 'Avram', NULL, '2021-10-19', 'M', '112.00', '1.00', 'United States'),
(115, 'Damon', NULL, '2020-08-10', 'M', '85.00', '1.00', 'United States'),
(116, 'Austin', NULL, '2021-12-13', 'M', '55.00', '1.00', 'United States'),
(117, 'Caleb', NULL, '2020-08-04', 'M', '61.00', '2.00', 'United States'),
(118, 'Palmer', NULL, '2020-03-05', 'M', '75.00', '1.00', 'United States'),
(119, 'Asher', NULL, '2020-01-19', 'M', '91.00', '1.00', 'United States'),
(120, 'Ray', NULL, '2021-12-16', 'M', '91.00', '1.00', 'United States'),
(121, 'Jordan', NULL, '2021-12-25', 'M', '101.00', '1.00', 'United States'),
(122, 'Jackson', NULL, '2021-08-30', 'M', '110.00', '2.00', 'United States');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
