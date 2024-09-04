-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 04-Set-2024 às 14:59
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
  `nomeDivisao` varchar(100) DEFAULT NULL,
  `siglaSei` varchar(100) DEFAULT NULL
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
(13, 'IDT', NULL, NULL),
(14, 'DGC', 'Divisão de Gestão do Cuidado', 'DGC/GAS1/SUPEX1/SUPEG/COLEX/CH-UFRJ'),
(15, 'DENF1', 'Divisão de Enfermagem 1', 'DENF1/GAS1/SUPEX1/SUPEG/COLEX/CH-UFRJ'),
(16, 'DENF2', 'Divisão de Enfermagem 2', 'DENF2/GAS2/SUPEX2/SUPEG/COLEX/CH-UFRJ'),
(17, 'DENF3', 'Divisão de Enfermagem 3', 'DENF3/GAS3/SUPEX3/SUPEG/COLEX/CH-UFRJ'),
(18, 'DADT', 'Divisão Apoio Diagnóstico e Terapêutico', 'DADT/GAS1/SUPEX1/SUPEG/COLEX/CH-UFRJ'),
(19, 'DCDT1', 'Divisão de Gestão do Cuidado e Apoio Diagnóstico e Terapêutico 1', 'DCDT1/GAS2/SUPEX2/SUPEG/COLEX/CH-UFRJ'),
(20, 'DCDT2', 'Divisão de Gestão do Cuidado e Apoio Diagnóstico e Terapêutico 2', 'DCDT2/GAS3/SUPEX3/SUPEG/COLEX/CH-UFRJ'),
(21, 'DAF', 'Divisão de Administração e Finanças', 'DAF/SUPAD/SUPEG/COLEX/CH-UFRJ'),
(22, 'DLIH', 'Divisão de Logística e Infraestrutura Hospitalar', 'DLIH/SUPAD/SUPEG/COLEX/CH-UFRJ'),
(23, 'DIVGP', 'Divisão de Gestão de Pessoas', 'DIVGP/SUPAD/SUPEG/COLEX/CH-UFRJ'),
(24, 'SUPEP', 'Superintendência de Ensino e Pesquisa', 'SUPEP/SUPEG/COLEX/CH-UFRJ'),
(25, 'SUPEX1', 'Superintendência-Executiva 1', 'SUPEX1/SUPEG/COLEX/CH-UFRJ'),
(26, 'SUPEX2', 'Superintendência-Executiva 2', 'SUPEX2/SUPEG/COLEX/CH-UFRJ'),
(27, 'SUPEX3', 'Superintendência-Executiva 3', 'SUPEX3/SUPEG/COLEX/CH-UFRJ');

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
  MODIFY `idDivisao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
