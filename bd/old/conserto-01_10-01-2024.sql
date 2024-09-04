-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 10/01/2024 às 14:58
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
-- Estrutura para tabela `empresaMaterial`
--

CREATE TABLE `empresaMaterial` (
  `idEmpresa` int(11) NOT NULL,
  `nomeEmpresa` varchar(255) DEFAULT NULL,
  `cnpj` date DEFAULT NULL,
  `numNota` varchar(255) DEFAULT NULL,
  `numProcesso` varchar(50) DEFAULT NULL,    
  `numEmpenho` varchar(50) DEFAULT NULL,
  `obs` varchar(255) DEFAULT NULL,  
  `idEntMat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `empresaMaterial`
--
ALTER TABLE `empresaMaterial`
  ADD PRIMARY KEY (`idEmpresa`),
  ADD KEY `idEntMat` (`idEntMat`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `empresaMaterial`
--
ALTER TABLE `empresaMaterial`
  MODIFY `idEmpresa` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `empresaMaterial`
--
ALTER TABLE `empresaMaterial`
  ADD CONSTRAINT `empresaMaterial_ibfk_3` FOREIGN KEY (`idEntMat`) REFERENCES `entraMaterial` (`idEntMat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
