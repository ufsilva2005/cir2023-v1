-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 08-Fev-2024 às 15:18
-- Versão do servidor: 10.6.16-MariaDB-0ubuntu0.22.04.1
-- versão do PHP: 8.1.2-1ubuntu2.14

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
-- Estrutura da tabela `conserto`
--

CREATE TABLE `conserto` (
  `idConserto` int(11) NOT NULL,
  `obsConserto` varchar(255) DEFAULT NULL,
  `dataConserto` date DEFAULT NULL,
  `idFuncionario` int(11) DEFAULT NULL,
  `idHistorico` int(11) DEFAULT NULL,
  `idComputador` int(11) DEFAULT NULL,
  `idImpressora` int(11) DEFAULT NULL,
  `idSaiMat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `conserto`
--
ALTER TABLE `conserto`
  ADD PRIMARY KEY (`idConserto`),
  ADD KEY `idFuncionario` (`idFuncionario`),
  ADD KEY `idComputador` (`idComputador`),
  ADD KEY `idImpressora` (`idImpressora`),
  ADD KEY `idSaiMat` (`idSaiMat`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `conserto`
--
ALTER TABLE `conserto`
  MODIFY `idConserto` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `conserto`
--
ALTER TABLE `conserto`
  ADD CONSTRAINT `conserto_ibfk_1` FOREIGN KEY (`idFuncionario`) REFERENCES `funcionario` (`idFuncionario`),
  ADD CONSTRAINT `conserto_ibfk_2` FOREIGN KEY (`idComputador`) REFERENCES `computador` (`idComputador`),
  ADD CONSTRAINT `conserto_ibfk_3` FOREIGN KEY (`idImpressora`) REFERENCES `impressoras` (`idImpressora`),
  ADD CONSTRAINT `conserto_ibfk_4` FOREIGN KEY (`idSaiMat`) REFERENCES `saiMaterial` (`idSaiMat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
