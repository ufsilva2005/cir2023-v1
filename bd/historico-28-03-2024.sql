-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 28-Mar-2024 às 14:32
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
-- Estrutura da tabela `historico`
--

CREATE TABLE `historico` (
  `idHistorico` int(11) NOT NULL,
  `nomeAlteracoes` varchar(255) DEFAULT NULL,
  `dataAltera` date DEFAULT NULL,
  `respAlteracoes` varchar(30) DEFAULT NULL,
  `idComputador` int(11) DEFAULT NULL,
  `idNotebook` int(11) DEFAULT NULL,
  `idImpressora` int(11) DEFAULT NULL,
  `idFuncionario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Extraindo dados da tabela `historico`
--



--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `historico`
--
ALTER TABLE `historico`
  ADD PRIMARY KEY (`idHistorico`),
  ADD KEY `idComputador` (`idComputador`),
  ADD KEY `idNotebook`   (`idNotebook`),
  ADD KEY `idImpressora` (`idImpressora`),
  ADD KEY `idFuncionario` (`idFuncionario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `historico`
--
ALTER TABLE `historico`
  MODIFY `idHistorico` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `historico`
--
ALTER TABLE `historico`
  ADD CONSTRAINT `historico_ibfk_1` FOREIGN KEY (`idComputador`) REFERENCES `computador` (`idComputador`),
  ADD CONSTRAINT `historico_ibfk_2` FOREIGN KEY (`idNotebook`) REFERENCES `notebook` (`idNotebook`),
  ADD CONSTRAINT `historico_ibfk_3` FOREIGN KEY (`idImpressora`) REFERENCES `impressoras` (`idImpressora`),
  ADD CONSTRAINT `historico_ibfk_4` FOREIGN KEY (`idFuncionario`) REFERENCES `funcionario` (`idFuncionario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
