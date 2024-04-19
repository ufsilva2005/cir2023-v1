-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 18-Abr-2024 às 15:58
-- Versão do servidor: 10.5.15-MariaDB-0+deb11u1
-- versão do PHP: 8.2.0RC7

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
-- Estrutura da tabela `tipoAcesso`
--

CREATE TABLE `tipoAcesso` (
  `idAcesso` int(11) NOT NULL,
  `gerenFuncionarios` varchar(3) DEFAULT NULL,
  `gerenCargos` varchar(3) DEFAULT NULL,
  `gerenEntMaterial` varchar(3) DEFAULT NULL,
  `gerenSaiMaterial` varchar(3) DEFAULT NULL,
  `gerenRelaMaterial` varchar(3) DEFAULT NULL,
  `gerenComputador` varchar(3) DEFAULT NULL,
  `gerenImpressora` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipoAcesso`
--

INSERT INTO `tipoAcesso` (`idAcesso`, `gerenFuncionarios`, `gerenCargos`, `gerenEntMaterial`, `gerenSaiMaterial`, `gerenRelaMaterial`, `gerenComputador`, `gerenImpressora`) VALUES
(1, 'sim', 'sim', 'não', 'não', 'não', 'não', 'não'),
(2, 'sim', 'sim', 'sim', 'não', 'não', 'não', 'não'),
(3, 'não', 'não', 'não', 'sim', 'sim', 'sim', 'sim'),
(4, 'não', 'não', 'não', 'não', 'sim', 'sim', 'sim'),
(5, 'sim', 'sim', 'sim', 'sim', 'não', 'não', 'não'),
(6, 'sim', 'sim', 'sim', 'sim', 'sim', 'sim', 'sim'),
(7, 'não', 'não', 'não', 'não', 'não', 'não', 'não'),
(8, 'sim', 'não', 'sim', 'sim', 'sim', 'sim', 'sim'),
(9, 'não', 'não', 'sim', 'sim', 'não', 'sim', 'sim');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tipoAcesso`
--
ALTER TABLE `tipoAcesso`
  ADD PRIMARY KEY (`idAcesso`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tipoAcesso`
--
ALTER TABLE `tipoAcesso`
  MODIFY `idAcesso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
