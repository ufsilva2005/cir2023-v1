-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 04-Set-2024 às 12:37
-- Versão do servidor: 10.6.18-MariaDB-0ubuntu0.22.04.1
-- versão do PHP: 8.1.2-1ubuntu2.18

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
-- Estrutura da tabela `divisao`
--

CREATE TABLE `divisao` (
  `idDivisao` int(11) NOT NULL,
  `divisao` varchar(10) DEFAULT NULL,
  `nomeDivisao` varchar(50) DEFAULT NULL,
  `siglaSei` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Extraindo dados da tabela `divisao`
--

INSERT INTO `divisao` (`idDivisao`, `divisao`, `nomeDivisao`, `siglaSei`) VALUES
(1, 'CIR', NULL, NULL),
(2, 'DAA', NULL, NULL),
(3, 'DAG', NULL, NULL),
(4, 'DEG', NULL, NULL),
(5, 'DEN', NULL, NULL),
(6, 'DFN', NULL, NULL),
(7, 'DG', NULL, NULL),
(8, 'DMD', NULL, NULL),
(9, 'DRH', NULL, NULL),
(10, 'DSC', NULL, NULL),
(11, 'CAE', NULL, NULL),
(12, 'FM', NULL, NULL),
(13, 'IDT', NULL, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `divisao`
--
ALTER TABLE `divisao`
  ADD PRIMARY KEY (`idDivisao`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `divisao`
--
ALTER TABLE `divisao`
  MODIFY `idDivisao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
