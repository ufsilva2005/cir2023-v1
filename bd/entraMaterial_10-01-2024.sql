-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 10/01/2024 às 15:08
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
-- Estrutura para tabela `entraMaterial`
--

CREATE TABLE `entraMaterial` (
  `idEntMat` int(11) NOT NULL,
  `dataEntrada` date DEFAULT NULL,
  `quantEntra` int(6) DEFAULT NULL,
  `idMaterial` int(11) DEFAULT NULL,
  `codigo` varchar(25) DEFAULT NULL,
  `idFuncionario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `entraMaterial`
--

INSERT INTO `entraMaterial` (`idEntMat`, `dataEntrada`, `quantEntra`, `idMaterial`, `codigo`, `idFuncionario`) VALUES
(1, '2024-01-08', 50, 3, 'C004723', 4),
(2, '2024-01-08', 50, 3, 'C004723', 4),
(3, '2024-01-08', 50, 3, 'C004723', 4),
(4, '2024-01-08', 100, 12, 'C013713', 4);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `entraMaterial`
--
ALTER TABLE `entraMaterial`
  ADD PRIMARY KEY (`idEntMat`),
  ADD KEY `idMaterial` (`idMaterial`),
  ADD KEY `idFuncionario` (`idFuncionario`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `entraMaterial`
--
ALTER TABLE `entraMaterial`
  MODIFY `idEntMat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `entraMaterial`
--
ALTER TABLE `entraMaterial`
  ADD CONSTRAINT `entraMaterial_ibfk_1` FOREIGN KEY (`idMaterial`) REFERENCES `material` (`idMaterial`),
  ADD CONSTRAINT `entraMaterial_ibfk_2` FOREIGN KEY (`idFuncionario`) REFERENCES `funcionario` (`idFuncionario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
