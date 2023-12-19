-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 19/12/2023 às 12:06
-- Versão do servidor: 10.6.12-MariaDB-0ubuntu0.22.04.1
-- Versão do PHP: 8.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `controleCir`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `hdTipos`
--

CREATE TABLE `hdTipos` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `hdTipos`
--

INSERT INTO `hdTipos` (`id`, `descricao`) VALUES
(1, '120GB-SSD_2.5'),
(2, '128GB-SSD_2.5'),
(3, '240GB-SSD_2.5'),
(4, '250GB-SSD_2.5'),
(5, '256GB-SSD_2.5'),
(6, '480GB-SSD_2.5'),
(7, '512GB-SSD_2.5'),
(8, '960GB-SSD_2.5'),
(9, '1TB-SSD_2.5'),
(10, '2TB-SSD_2.5'),
(11, '120GB-SSD_M2'),
(12, '128GB-SSD_M2'),
(13, '240GB-SSD_M2'),
(14, '250GB-SSD_M2'),
(15, '256GB-SSD_M2'),
(16, '480GB-SSD_M2'),
(17, '512GB-SSD_M2'),
(18, '960GB -S SD M2'),
(19, '1TB-SSD_M2'),
(20, '2TB-SSD_M2'),
(21, '120GB-SSD_mSATA'),
(22, '128GB-SSD_mSATA'),
(23, '240GB-SSD_mSATA'),
(24, '250GB-SSD_mSATA'),
(25, '256GB-SSD_mSATA'),
(26, '480GB-SSD_mSATA'),
(27, '512GB-SSD_mSATA'),
(28, '960GB-SSD_mSATA'),
(29, '1TB-SSD_mSATA'),
(30, '2TB-SSD_mSATA'),
(31, '120GB-SSD_U2'),
(32, '128GB-SSD_U2'),
(33, '240GB-SSD_U2'),
(34, '250GB-SSD_U2'),
(35, '256GB-SSD_U2'),
(36, '480GB-SSD_U2'),
(37, '512GB-SSD_U2'),
(38, '960GB-SSD_U2'),
(39, '1TB-SSD_U2'),
(40, '2TB-SSD_U2'),
(41, '10GB-HD_SATA'),
(42, '20GB-HD_SATA'),
(43, '40GB-HD_SATA'),
(44, '80GB-HD_SATA'),
(45, '120GB-HD_SATA'),
(46, '160GB-HD_SATA'),
(47, '250GB-HD_SATA'),
(48, '320GB-HD_SATA'),
(49, '500GB-HD_SATA'),
(50, '680GB-HD_SATA'),
(51, '750GB-HD_SATA'),
(52, '1TB-HD_SATA'),
(53, '1.5TB-HD_SATA'),
(54, '2TB-HD_SATA'),
(55, '2.5TB-HD_SATA'),
(56, '3TB-HD_SATA');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `hdTipos`
--
ALTER TABLE `hdTipos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `hdTipos`
--
ALTER TABLE `hdTipos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
