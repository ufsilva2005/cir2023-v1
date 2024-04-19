-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 25-Mar-2024 às 15:22
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
-- Estrutura da tabela `notebook`
--

CREATE TABLE `notebook` (
  `idNotebook` int(11) NOT NULL,
  `numCir` int(6) DEFAULT NULL,
  `numPatrimonio` int(11) DEFAULT NULL,
  `numPatReitoria` int(11) DEFAULT NULL,
  `nomenotebook` varchar(20) DEFAULT NULL,
  `dataCadastro` date DEFAULT NULL,
  `respCadastro` varchar(30) DEFAULT NULL,
  `dataAltCadastro` date DEFAULT NULL,
  `respAltCadastro` varchar(30) DEFAULT NULL,
  `sistemaOpera` varchar(21) DEFAULT NULL,
  `modelMaquina` varchar(50) DEFAULT NULL,
  `memoria` varchar(10) DEFAULT NULL,
  `numIp` varchar(15) DEFAULT NULL,
  `numMac` varchar(17) DEFAULT NULL,
  `tipoHD` varchar(255) DEFAULT NULL,
  `nomeUsuario` varchar(50) DEFAULT NULL,
  `statusComp` varchar(7) DEFAULT NULL,
  `obs` varchar(255) DEFAULT NULL,
  `idFuncionario` int(11) DEFAULT NULL,
  `idSetor` int(11) DEFAULT NULL,
  `idTipoProcessador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Extraindo dados da tabela `notebook`
--


--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `notebook`
--
ALTER TABLE `notebook`
  ADD PRIMARY KEY (`idNotebook`),
  ADD KEY `idFuncionario` (`idFuncionario`),
  ADD KEY `idSetor` (`idSetor`),
  ADD KEY `idTipoProcessador` (`idTipoProcessador`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `notebook`
--
ALTER TABLE `notebook`
  MODIFY `idNotebook` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `notebook`
--
ALTER TABLE `notebook`
  ADD CONSTRAINT `notebook_ibfk_1` FOREIGN KEY (`idFuncionario`) REFERENCES `funcionario` (`idFuncionario`),
  ADD CONSTRAINT `notebook_ibfk_2` FOREIGN KEY (`idSetor`) REFERENCES `setor` (`idSetor`),
  ADD CONSTRAINT `notebook_ibfk_3` FOREIGN KEY (`idTipoProcessador`) REFERENCES `tipoProcessadores` (`idTipoProcessador`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
