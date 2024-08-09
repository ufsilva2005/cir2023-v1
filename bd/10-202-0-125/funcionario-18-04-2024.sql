-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 18-Abr-2024 às 15:54
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
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `idFuncionario` int(11) NOT NULL,
  `nomeFuncionario` varchar(60) DEFAULT NULL,
  `statusFuncionario` varchar(7) DEFAULT NULL,
  `login` varchar(25) DEFAULT NULL,
  `senha` varchar(250) DEFAULT NULL,
  `dataCadastro` date DEFAULT NULL,
  `dataAltCadastro` date DEFAULT NULL,
  `idCargo` int(11) DEFAULT NULL,
  `idAcesso` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`idFuncionario`, `nomeFuncionario`, `statusFuncionario`, `login`, `senha`, `dataCadastro`, `dataAltCadastro`, `idCargo`, `idAcesso`) VALUES
(1, 'admin', 'ativo', 'admin', '$2y$12$sJncQ.u7TDLQpSe4e3Ri5eETmFmQOmJuD4G6EUk90/qHfna8ozKBW', '2020-06-29', '2020-07-07', 1, 1),
(2, 'SUZANA COSTA VIRGINIO DE SOUZA', 'ativo', 'virginio', '$2y$12$FBxcEMHWOq2ZD0jyzLvwnuGX59zOlozoMFOeKA46MpEY6Rnf6hNpG', '2023-05-22', '0000-00-00', 4, 6),
(3, 'DAVID DA SILVA ALCÂNTARA', 'ativo', 'davidalcantara', '$2y$12$xAEMTfiCcv5DV9otk6h3Ve3Vq2DyYM7Tw8cFCyRd7TptBlLjCx22e', '2023-05-22', '0000-00-00', 2, 3),
(4, 'ULISSES FERREIRA DA SILVA', 'ativo', 'ufs', '$2y$12$wjebX3mADnU33tCmsD5q3e00yiPIwEuS/TBm2hmF6TVx6RO027Mf.', '2023-05-22', '0000-00-00', 3, 8),
(5, 'SALOMÃO HENRIQUE MARQUES', 'ativo', 'salomaohenrique', '$2y$12$ta2oFIo/GUkqh6YrXcJw5ObdKJDvzXs1BwUlbaGdMR/84zgkZW9B.', '2023-06-14', '0000-00-00', 2, 4),
(6, 'RENATO PEREIRA JANUÁRIO', 'ativo', 'renatopj', '$2y$12$l5XjoWm7a/P1oyzKQDgwOuSlOzu5SjzM1WrH49Jig5EpC18nwIFFq', '2023-10-03', '0000-00-00', 2, 4),
(7, 'PAULO OTÁVIO', 'ativo', 'paulootavio', '$2y$12$c.qYqQzenaVeey8MbKpKtuzSOmyoYMOa9nTEmAuxpQNzTfhLixw7i', '2024-04-18', '0000-00-00', 2, 9),
(8, 'THIAGO SANTOS', 'ativo', 'thiagosantos', '$2y$12$oHUx1GLPLfhbVZug5vHEr.tI2ilDsQk21HK8prRCWJKnfYtwx73kK', '2024-04-18', '0000-00-00', 2, 9);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`idFuncionario`),
  ADD KEY `idCargo` (`idCargo`),
  ADD KEY `idAcesso` (`idAcesso`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `idFuncionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`idCargo`) REFERENCES `cargo` (`idCargo`),
  ADD CONSTRAINT `funcionario_ibfk_2` FOREIGN KEY (`idAcesso`) REFERENCES `tipoAcesso` (`idAcesso`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
