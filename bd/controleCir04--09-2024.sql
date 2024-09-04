-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 04-Set-2024 às 14:00
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
-- Estrutura da tabela `cargo`
--

CREATE TABLE `cargo` (
  `idCargo` int(11) NOT NULL,
  `statusCargos` varchar(8) DEFAULT NULL,
  `nomeCargos` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Extraindo dados da tabela `cargo`
--

INSERT INTO `cargo` (`idCargo`, `statusCargos`, `nomeCargos`) VALUES
(1, 'ativo', 'ADMINISTRADOR'),
(2, 'ativo', 'TÉCNICO EM INFORMÁTICA'),
(3, 'ativo', 'TÉCNICO EM ELETRÔNICA'),
(4, 'ativo', 'SECRETÁRIA'),
(5, 'ativo', 'CHEFE DE SESSÃO'),
(6, 'ativo', 'COORDENADOR'),
(7, 'ativo', 'ANALISTA DE SISTEMA');

-- --------------------------------------------------------

--
-- Estrutura da tabela `computador`
--

CREATE TABLE `computador` (
  `idComputador` int(11) NOT NULL,
  `numCir` int(6) DEFAULT NULL,
  `numPatrimonio` int(11) DEFAULT NULL,
  `numPatReitoria` int(11) DEFAULT NULL,
  `nomeComputador` varchar(20) DEFAULT NULL,
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
-- Extraindo dados da tabela `computador`
--

INSERT INTO `computador` (`idComputador`, `numCir`, `numPatrimonio`, `numPatReitoria`, `nomeComputador`, `dataCadastro`, `respCadastro`, `dataAltCadastro`, `respAltCadastro`, `sistemaOpera`, `modelMaquina`, `memoria`, `numIp`, `numMac`, `tipoHD`, `nomeUsuario`, `statusComp`, `obs`, `idFuncionario`, `idSetor`, `idTipoProcessador`) VALUES
(1, 3558, NULL, 2018009015, 'cir-suzana', '2023-09-13', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', 'WINDOWS 10', 'ASUS', '16 Gb', '10.13.151.244', '2C:FD:A1:C8:52:AB', 'a:1:{i:0;s:2:\"52\";}', 'SUZANA', 'ativo', 'TESTE SALVAR COMPUTADOR', 2, 1, 161),
(2, 1989, 34268, NULL, 'cir-ufs', '2023-09-13', 'ULISSES FERREIRA DA SILVA', '0000-00-00', '', 'LINUX', 'MSI', '16 Gb', '10.13.151.245', '4C:CC:6A:31:71:F6', 'a:1:{i:0;s:2:\"52\";}', 'ULISSES', 'ativo', 'CADASTRO TESTE', 4, 1, 640),
(3, 4471, 0, 0, 'hu4471', '2023-09-20', 'ULISSES FERREIRA DA SILVA', '0000-00-00', '', 'WINDOWS 10', 'ASUS TOP GAMING', '16 Gb', '10.13.151.4', '50:EB:F6:37:AE:49', 'a:1:{i:0;s:1:\"5\";}', 'ULISSES', 'ativo', 'SUBSTITUI A MAQUINA CIR-UFSWIN', 4, 1, 727),
(4, 4466, NULL, NULL, 'hu4466', '2023-10-03', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', 'WINDOWS 11', 'GIGABYTE H510', '16 Gb', '10.13.151.4', '74:56:3C:01:87:82', 'a:2:{i:0;s:1:\"3\";i:1;s:2:\"13\";}', 'PAULO', 'ativo', '', 2, 1, 653),
(5, 3304, NULL, NULL, 'hu3304', '2023-10-03', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', 'WINDOWS 10', '', '8 Gb', '10.201.1.89', 'D8:5E:D3:77:9A:CA', 'a:1:{i:0;s:2:\"17\";}', 'ESTEPHAN', 'ativo', '', 2, 76, 728),
(6, 3403, 39397, 2017002939, 'hu3403', '2023-10-03', 'RENATO PEREIRA JANUÁRIO', '0000-00-00', '', 'WINDOWS 10', 'MSI', '8 Gb', '10.13.151.249', '4C:CC:6A:0D:09:FB', 'a:1:{i:0;s:1:\"3\";}', 'RENATO', 'ativo', '', 6, 1, 640),
(7, 2030, NULL, NULL, 'hu2030', '2024-05-21', 'ULISSES FERREIRA DA SILVA', '0000-00-00', '', 'WINDOWS 10', 'MSI', '8 Gb', '10.13.150.103', '4C:CC:6A:31:72:D3', 'a:1:{i:0;s:1:\"3\";}', 'JCARLOS', 'ativo', '', 4, 158, 640),
(8, 4244, 542021, 2021006263, 'hu4244', '2024-05-21', 'MARCOS HENRIQUE SUZANO PEREIRA', '0000-00-00', '', 'WINDOWS 10', 'DELL', '16 Gb', '10.13.150.30', 'D0:94:66:CA:D5:7F', 'a:1:{i:0;s:2:\"13\";}', 'SUZANO', 'ativo', '', 9, 1, 597),
(9, 4022, NULL, NULL, 'hu4022', '2024-05-21', 'JOSÉ CARLOS TIBURCIO DE SOUZA', '0000-00-00', '', 'WINDOWS 11', 'NTC', '8 Gb', '10.13.150.127', 'D8:5E:D3:A9:08:C1', 'a:1:{i:0;s:2:\"17\";}', 'JOSECARLOST', 'ativo', '', 10, 1, 728);

-- --------------------------------------------------------

--
-- Estrutura da tabela `conserto`
--

CREATE TABLE `conserto` (
  `idConserto` int(11) NOT NULL,
  `obs` varchar(255) DEFAULT NULL,
  `dataConserto` date DEFAULT NULL,
  `conserto` varchar(255) DEFAULT NULL,
  `respConserto` varchar(30) DEFAULT NULL,
  `emailImpressora` varchar(255) DEFAULT NULL,
  `idComputador` int(11) DEFAULT NULL,
  `idFuncionario` int(11) DEFAULT NULL,
  `idImpressora` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

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

-- --------------------------------------------------------

--
-- Estrutura da tabela `entraMaterial`
--

CREATE TABLE `entraMaterial` (
  `idEntMat` int(11) NOT NULL,
  `dataEntrada` date DEFAULT NULL,
  `quantEntra` int(6) DEFAULT NULL,
  `idMaterial` int(11) DEFAULT NULL,
  `codigo` varchar(25) DEFAULT NULL,
  `idFuncionario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`idFuncionario`, `nomeFuncionario`, `statusFuncionario`, `login`, `senha`, `dataCadastro`, `dataAltCadastro`, `idCargo`, `idAcesso`) VALUES
(1, 'admin', 'ativo', 'admin', '$2y$12$sJncQ.u7TDLQpSe4e3Ri5eETmFmQOmJuD4G6EUk90/qHfna8ozKBW', '2020-06-29', '2020-07-07', 1, 1),
(2, 'SUZANA COSTA VIRGINIO DE SOUZA', 'ativo', 'virginio', '$2y$12$FBxcEMHWOq2ZD0jyzLvwnuGX59zOlozoMFOeKA46MpEY6Rnf6hNpG', '2023-05-22', '0000-00-00', 4, 6),
(3, 'DAVID DA SILVA ALCÂNTARA', 'ativo', 'davidalcantara', '$2y$12$xAEMTfiCcv5DV9otk6h3Ve3Vq2DyYM7Tw8cFCyRd7TptBlLjCx22e', '2023-05-22', '0000-00-00', 2, 3),
(4, 'ULISSES FERREIRA DA SILVA', 'ativo', 'ufs', '$2y$12$wjebX3mADnU33tCmsD5q3e00yiPIwEuS/TBm2hmF6TVx6RO027Mf.', '2023-05-22', '0000-00-00', 3, 8),
(5, 'SALOMÃO HENRIQUE MARQUES', 'inativo', 'salomaohenrique', '$2y$12$5U0ayJ04fYPyTfUiJ0QUh.EAYGJsI4UxFjq5tCzTvqzYOGgR1LHKq', '2023-06-14', '0000-00-00', 2, 4),
(6, 'RENATO PEREIRA JANUÁRIO', 'ativo', 'renatopj', '$2y$12$l5XjoWm7a/P1oyzKQDgwOuSlOzu5SjzM1WrH49Jig5EpC18nwIFFq', '2023-10-03', '0000-00-00', 2, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `hdTipos`
--

CREATE TABLE `hdTipos` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Extraindo dados da tabela `hdTipos`
--

INSERT INTO `hdTipos` (`id`, `descricao`) VALUES
(1, '120 GB - SSD 2.5'),
(2, '128 GB - SSD 2.5'),
(3, '240 GB - SSD 2.5'),
(4, '250 GB - SSD 2.5'),
(5, '256 GB - SSD 2.5'),
(6, '480 GB - SSD 2.5'),
(7, '512 GB - SSD 2.5'),
(8, '960 GB - SSD 2.5'),
(9, '1 TB - SSD 2.5'),
(10, '2 TB - SSD 2.5'),
(11, '120 GB - SSD M2'),
(12, '128 GB - SSD M2'),
(13, '240 GB - SSD M2'),
(14, '250 GB - SSD M2'),
(15, '256 GB - SSD M2'),
(16, '480 GB - SSD M2'),
(17, '512 GB - SSD M2'),
(18, '960 GB -S SD M2'),
(19, '1 TB - SSD M2'),
(20, '2 TB - SSD M2'),
(21, '120 GB - SSD mSATA'),
(22, '128 GB - SSD mSATA'),
(23, '240 GB - SSD mSATA'),
(24, '250 GB - SSD mSATA'),
(25, '256 GB - SSD mSATA'),
(26, '480 GB - SSD mSATA'),
(27, '512 GB - SSD mSATA'),
(28, '960 GB - SSD mSATA'),
(29, '1 TB - SSD mSATA'),
(30, '2 TB - SSD mSATA'),
(31, '120 GB - SSD U2'),
(32, '128 GB - SSD U2'),
(33, '240 GB - SSD U2'),
(34, '250 GB - SSD U2'),
(35, '256 GB - SSD U2'),
(36, '480 GB - SSD U2'),
(37, '512 GB - SSD U2'),
(38, '960 GB - SSD U2'),
(39, '1 TB - SSD U2'),
(40, '2 TB - SSD U2'),
(41, '10 GB - HD SATA'),
(42, '20 GB - HD SATA'),
(43, '40 GB - HD SATA'),
(44, '80 GB - HD SATA'),
(45, '120 GB - HD SATA'),
(46, '160 GB - HD SATA'),
(47, '250 GB - HD SATA'),
(48, '320 GB - HD SATA'),
(49, '500 GB - HD SATA'),
(50, '680 GB - HD SATA'),
(51, '750 GB - HD SATA'),
(52, '1 TB - HD SATA'),
(53, '1.5 TB - HD SATA'),
(54, '2 TB - HD SATA'),
(55, '2.5 TB - HD SATA'),
(56, '3 TB - HD SATA');

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

INSERT INTO `historico` (`idHistorico`, `nomeAlteracoes`, `dataAltera`, `respAlteracoes`, `idComputador`, `idNotebook`, `idImpressora`, `idFuncionario`) VALUES
(1, '../historico/hist-Imp1D20240408h141720F4.txt', '2024-04-08', 'ULISSES FERREIRA DA SILVA', NULL, NULL, 1, 4),
(2, '../historico/hist-Imp22D20240408h174019F2.txt', '2024-04-08', 'SUZANA COSTA VIRGINIO DE SOUZA', NULL, NULL, 22, 2),
(3, '../historico/hist-Imp1D20240411h131643F4.txt', '2024-04-11', 'ULISSES FERREIRA DA SILVA', NULL, NULL, 1, 4),
(4, '../historico/hist-Imp1D20240411h131723F4.txt', '2024-04-11', 'ULISSES FERREIRA DA SILVA', NULL, NULL, 1, 4),
(5, '../historico/hist-Imp3D20240425h123222F4.txt', '2024-04-25', 'ULISSES FERREIRA DA SILVA', NULL, NULL, 3, 4),
(6, '../historico/hist-Imp3D20240425h123419F4.txt', '2024-04-25', 'ULISSES FERREIRA DA SILVA', NULL, NULL, 3, 4),
(7, '../historico/hist-Imp3D20240425h123456F4.txt', '2024-04-25', 'ULISSES FERREIRA DA SILVA', NULL, NULL, 3, 4),
(8, '../historico/hist-Imp3D20240425h123745F4.txt', '2024-04-25', 'ULISSES FERREIRA DA SILVA', NULL, NULL, 3, 4),
(9, '../historico/hist-Imp2D20240425h123811F4.txt', '2024-04-25', 'ULISSES FERREIRA DA SILVA', NULL, NULL, 2, 4),
(10, '../historico/hist-Imp2D20240425h123819F4.txt', '2024-04-25', 'ULISSES FERREIRA DA SILVA', NULL, NULL, 2, 4),
(11, '../historico/hist-Imp3D20240425h123828F4.txt', '2024-04-25', 'ULISSES FERREIRA DA SILVA', NULL, NULL, 3, 4),
(12, '../historico/hist-Imp3D20240425h123829F4.txt', '2024-04-25', 'ULISSES FERREIRA DA SILVA', NULL, NULL, 3, 4),
(13, '../historico/hist-Imp3D20240425h124444F2.txt', '2024-04-25', 'SUZANA COSTA VIRGINIO DE SOUZA', NULL, NULL, 3, 2),
(14, '../historico/hist-Imp3D20240425h125704F4.txt', '2024-04-25', 'ULISSES FERREIRA DA SILVA', NULL, NULL, 3, 4),
(15, '../historico/hist-Imp3D20240425h131802F4.txt', '2024-04-25', 'ULISSES FERREIRA DA SILVA', NULL, NULL, 3, 4),
(16, '../historico/hist-Imp1D20240510h161441F4.txt', '2024-05-10', 'ULISSES FERREIRA DA SILVA', NULL, NULL, 1, 4),
(17, '../historico/hist-Imp1D20240510h161504F4.txt', '2024-05-10', 'ULISSES FERREIRA DA SILVA', NULL, NULL, 1, 4),
(18, '../historico/hist-Imp1D20240510h161610F4.txt', '2024-05-10', 'ULISSES FERREIRA DA SILVA', NULL, NULL, 1, 4),
(19, '../historico/hist-Imp1D20240510h161621F4.txt', '2024-05-10', 'ULISSES FERREIRA DA SILVA', NULL, NULL, 1, 4),
(20, '../historico/hist-Imp1D20240517h164214F4.txt', '2024-05-17', 'ULISSES FERREIRA DA SILVA', NULL, NULL, 1, 4),
(21, '../historico/hist-Imp1D20240517h164320F4.txt', '2024-05-17', 'ULISSES FERREIRA DA SILVA', NULL, NULL, 1, 4),
(22, '../historico/hist-Imp1D20240517h165657F4.txt', '2024-05-17', 'ULISSES FERREIRA DA SILVA', NULL, NULL, 1, 4),
(23, '../historico/hist-Imp1D20240517h170101F4.txt', '2024-05-17', 'ULISSES FERREIRA DA SILVA', NULL, NULL, 1, 4),
(24, '../historico/hist-Imp1D20240517h170154F4.txt', '2024-05-17', 'ULISSES FERREIRA DA SILVA', NULL, NULL, 1, 4),
(25, '../historico/hist-Imp17D20240805h120521F4.txt', '2024-08-05', 'ULISSES FERREIRA DA SILVA', NULL, NULL, 17, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `impressoras`
--

CREATE TABLE `impressoras` (
  `idImpressora` int(11) NOT NULL,
  `nomeImpressora` varchar(20) DEFAULT NULL,
  `numSerie` varchar(50) DEFAULT NULL,
  `ipImpressora` varchar(15) DEFAULT NULL,
  `macImpressora` varchar(20) DEFAULT NULL,
  `tipoToner` varchar(255) DEFAULT NULL,
  `colorida` varchar(3) DEFAULT NULL,
  `statusImpressora` varchar(7) DEFAULT NULL,
  `conexaoImp` varchar(5) DEFAULT 'Rede',
  `modeloImpressora` int(11) DEFAULT NULL,
  `dataCadastro` date DEFAULT NULL,
  `respCadastro` varchar(30) DEFAULT NULL,
  `dataAltCadastro` date DEFAULT NULL,
  `respAltCadastro` varchar(30) DEFAULT NULL,
  `obsImpressora` varchar(255) DEFAULT NULL,
  `idFuncionario` int(11) DEFAULT NULL,
  `idSetor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Extraindo dados da tabela `impressoras`
--

INSERT INTO `impressoras` (`idImpressora`, `nomeImpressora`, `numSerie`, `ipImpressora`, `macImpressora`, `tipoToner`, `colorida`, `statusImpressora`, `conexaoImp`, `modeloImpressora`, `dataCadastro`, `respCadastro`, `dataAltCadastro`, `respAltCadastro`, `obsImpressora`, `idFuncionario`, `idSetor`) VALUES
(1, 'PRNMANUT', 'R4P2X12492', '10.13.10.33', '00:17:C8:E7:FC:23', 'a:1:{i:0;s:2:\"28\";}', 'não', 'ativo', 'Rede', 1, '2023-05-31', 'SUZANA COSTA VIRGINIO DE SOUZA', '2023-07-28', 'SUZANA COSTA VIRGINIO DE SOUZA', 'TESTE', 2, 1),
(2, 'PRNALMOX', 'R4P2X12499', '10.3.0.21', '00:17:C8:E7:FC:77', 'a:1:{i:0;s:2:\"28\";}', 'não', 'ativo', 'Rede', 1, '2023-05-31', 'SUZANA COSTA VIRGINIO DE SOUZA', '2023-07-28', 'SUZANA COSTA VIRGINIO DE SOUZA', 'TESTE', 2, 105),
(3, '', 'R4P2X12489', '', '', 'a:1:{i:0;s:2:\"28\";}', 'não', 'inativo', 'Rede', 1, '2023-05-31', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 123),
(4, '', 'R4P8917950', '', '', 'a:1:{i:0;s:2:\"28\";}', 'não', 'inativo', 'Rede', 1, '2023-05-31', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 160),
(5, '', 'R4P2X12491', '', '', 'a:1:{i:0;s:2:\"28\";}', 'não', 'inativo', 'Rede', 1, '2023-05-31', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 209),
(6, '', 'R4P2X12501', '10.50.50.26', '00:17:C8:E7:FC:58', 'a:1:{i:0;i:28;}', 'não', 'ativo', 'Rede', 1, '2023-05-31', 'SUZANA COSTA VIRGINIO DE SOUZA', '2024-05-13', 'ULISSES FERREIRA DA SILVA', 'ACERTO DO CADASTRO', 4, 243),
(7, 'prnnir', 'R4P9429137', '10.20.20.22', '', 'a:1:{i:0;i:28;}', 'não', 'ativo', 'Rede', 1, '2023-05-31', 'SUZANA COSTA VIRGINIO DE SOUZA', '2024-05-16', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ATUALIZAÇÃO DE DADOS', 2, 341),
(8, '', 'X3BK007496', '', '9C:AE:D3:B4:3C:27', 'a:1:{i:0;i:29;}', 'não', 'ativo', 'Rede', 6, '2023-05-31', 'SUZANA COSTA VIRGINIO DE SOUZA', '2024-05-17', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ATUALIZAÇÃO DE DADOS', 2, 236),
(9, 'prn08f', 'AK43006907A0', '10.81.80.22', '00:25:36:36:D0:79', 'a:1:{i:0;i:31;}', 'não', 'ativo', 'Rede', 5, '2023-06-14', NULL, '2024-04-26', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ATUALIZAÇÃO DE DADOS', 2, 86),
(10, '', 'AK57067942B0', '', '', 'a:1:{i:0;s:2:\"31\";}', 'não', 'inativo', 'Rede', 7, '2023-06-14', NULL, '0000-00-00', '', '', 2, 46),
(11, 'PRNURO', 'AK5C039356B0', '10.110.110.25', '00:80:91:B0:41:A2', 'a:1:{i:0;i:31;}', 'não', 'ativo', 'Rede', 7, '2023-06-14', NULL, '2024-04-26', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ATUALIZAÇÃO DE DADOS', 2, 277),
(12, '', 'AK89033050B0', '', '', 'a:1:{i:0;s:2:\"31\";}', 'não', 'inativo', 'Rede', 7, '2023-07-06', NULL, '0000-00-00', '', '', 2, 332),
(13, 'prncseat', 'AK89033325A0', '10.12.10.26', '00:25:36:11:FA:D5', 'a:1:{i:0;s:2:\"31\";}', 'não', 'ativo', 'Rede', 5, '2023-07-06', NULL, '2024-06-04', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ATUALIZAÇÃO DE DADOS', 2, 287),
(14, '', 'AK5C008782A0', NULL, '00:25:36:EE:C4:68', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Usb', 4, '2023-07-06', NULL, '2024-05-21', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ATUALIZAÇÃO DE DADOS', 2, 316),
(15, 'anatsl15', 'AK5C008603A0', '', '00:25:36:11:B2:D7', 'a:1:{i:0;i:30;}', 'não', 'ativo', 'Rede', 4, '2023-07-07', NULL, '2024-05-07', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ATUALIZAÇÃO DE DADOS', 2, 144),
(16, 'PRNBIO', 'AK5C008469A0', '10.30.30.28', '00:25:36:EE:78:D9', 'a:1:{i:0;i:30;}', 'não', 'ativo', 'Rede', 4, '2023-07-17', NULL, '2024-04-26', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ATUALIZAÇÃO DE DADOS', 2, 199),
(17, 'prnchefamb', 'AK47042821A0', '10.11.10.34', '00:80:91:AB:7E:94', 'a:1:{i:0;i:31;}', 'não', 'inativo', 'Rede', 7, '2023-07-24', 'SUZANA COSTA VIRGINIO DE SOUZA', '2024-04-25', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ATUALIZAÇÃO DE DADOS', 2, 304),
(18, '', 'AK8B014323', NULL, '00:25:36:91:06:F9', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Usb', 4, '2023-07-24', 'SUZANA COSTA VIRGINIO DE SOUZA', '2024-05-21', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ATUALIZAÇÃO DE DADOS', 2, 26),
(19, 'prn06f', 'AK86043236A0', '10.61.60.22', '00:25:36:61:23:74', 'a:1:{i:0;i:31;}', 'não', 'ativo', 'Rede', 5, '2023-07-24', 'SUZANA COSTA VIRGINIO DE SOUZA', '2024-05-14', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ATUALIZAÇÃO DE DADOS', 2, 212),
(20, 'prndayclinic', 'AK8B015135C0', NULL, '00:25:36:91:1A:40', 'a:1:{i:0;i:30;}', 'não', 'ativo', 'Usb', 4, '2023-07-24', NULL, '2024-04-30', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ATUALIZAÇÃO DE DADOS', 2, 86),
(21, '', 'AK5C008704A0', '', '', 'a:1:{i:0;s:2:\"30\";}', 'não', 'inativo', 'Rede', 4, '2023-07-25', NULL, '0000-00-00', '', '', 2, 27),
(22, 'PRNCIR', 'AK89003100B0', '10.13.10.23', '00:80:91:BA:C7:16', 'a:1:{i:0;s:2:\"31\";}', 'não', 'ativo', 'Rede', 7, '2023-07-25', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 4),
(23, '', 'AK5C008522A0', NULL, '00:25:36:EE:78:73', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Usb', 4, '2023-07-25', 'SUZANA COSTA VIRGINIO DE SOUZA', '2024-06-05', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ATUALIZAÇÃO DE DADOS', 2, 32),
(24, '', 'AK5B046536A0', '', '00:25:36:EE:10:C0', 'a:1:{i:0;s:2:\"30\";}', 'não', 'inativo', 'Rede', 4, '2023-07-25', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 48),
(25, 'PRNZELADORIA2', 'AK4A021496A0', '10.3.0.25', '00:80:91:AC:68:9D', 'a:1:{i:0;s:2:\"31\";}', 'não', 'ativo', 'Rede', 7, '2023-07-25', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 49),
(26, 'prnpatrimonio', 'AK5B010770B0', '10.3.0.22', '00:80:91:B0:3B:A0', 'a:1:{i:0;i:31;}', 'não', 'ativo', 'Rede', 7, '2023-07-27', 'SUZANA COSTA VIRGINIO DE SOUZA', '2024-04-30', 'ULISSES FERREIRA DA SILVA', 'ACERTO DO CADASTRO', 4, 47),
(27, '', 'AK5C034726A0', NULL, '00:25:36:EE:11:E0', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Usb', 4, '2023-07-28', NULL, '2024-06-05', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ATUALIZAÇÃO DE DADOS', 2, 57),
(28, '', 'AK5C008494A0', NULL, '00:25:36:EE:78:2D', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Usb', 4, '2023-07-28', NULL, '2024-06-05', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ATUALIZAÇÃO DE DADOS', 2, 58),
(29, 'PRNSPL', 'AK48020473A0', '10.2.0.22', '00:25:36:76:B9:07', 'a:1:{i:0;s:2:\"31\";}', 'não', 'ativo', 'Rede', 5, '2023-07-28', NULL, '2024-06-05', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ATUALIZAÇÃO DE DADOS', 2, 54),
(30, 'PRNDEG2', 'AK56023010A0', '10.2.0.25', '00:25:36:2E:1C:AE', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Rede', 4, '2023-07-28', NULL, '2024-06-05', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ATUALIZAÇÃO DE DADOS', 2, 56),
(31, 'prndegsecret', 'AK4B026374A0', '10.2.0.21', '00:80:91:AC:F6:82', 'a:1:{i:0;i:31;}', 'não', 'ativo', 'Rede', 7, '2023-07-31', NULL, '2024-04-26', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ATUALIZAÇÃO DE DADOS', 2, 374),
(32, 'PRNANAT', 'AK86043246A0', '10.0.0.21', '00:25:36:61:23:1C', 'a:1:{i:0;s:2:\"31\";}', 'não', 'ativo', 'Rede', 5, '2023-07-31', NULL, '0000-00-00', '', '', 2, 143),
(33, 'PRNDEGSEB2', 'AK88030514B0', '10.2.0.27', '00:80:91:BA:C7:34', 'a:1:{i:0;i:31;}', 'não', 'ativo', 'Rede', 7, '2023-07-31', NULL, '2024-04-26', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ATUALIZAÇÃO DE DADOS', 2, 55),
(34, 'PRNRESIDUOS', 'AK8B014256CO', NULL, '00:25:36:91:06:7E', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Usb', 4, '2023-08-01', 'ULISSES FERREIRA DA SILVA', '0000-00-00', '', '', 4, 40),
(35, 'PRNCOLORCIR', 'AK48010667B0', '10.201.10.21', '00:25:36:76:25:C7', 'a:4:{i:0;i:44;i:1;i:45;i:2;i:46;i:3;i:47;}', 'sim', 'ativo', 'Rede', 14, '2024-04-08', 'SUZANA COSTA VIRGINIO DE SOUZA', '2024-04-25', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ATUALIZAÇÃO DE DADOS', 2, 2),
(36, '', 'AK5B046542A0', NULL, '00:25:36:EE:10:50', 'a:1:{i:0;i:30;}', 'não', 'ativo', 'Usb', 4, '2024-04-08', 'SUZANA COSTA VIRGINIO DE SOUZA', '2024-05-06', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ATUALIZAÇÃO DE DADOS', 2, 15),
(37, 'prnsdm', 'AK48047983', '10.13.10.36', '00:80:91:B8:29:D2', 'a:1:{i:0;i:31;}', 'não', 'ativo', 'Rede', 7, '2024-04-08', 'SUZANA COSTA VIRGINIO DE SOUZA', '2024-04-30', 'ULISSES FERREIRA DA SILVA', 'ACERTO DO CADASTRO', 4, 18),
(38, '', 'AK5C008745A0', NULL, '00:25:36:EE:44:67', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Usb', 4, '2024-04-08', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 17),
(39, 'prnsaachef', 'AK5B049931A0', NULL, '00:25:36:EE:20:0C', 'a:1:{i:0;i:30;}', 'não', 'ativo', 'Usb', 3, '2024-04-08', 'SUZANA COSTA VIRGINIO DE SOUZA', '2024-05-06', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ATUALIZAÇÃO DE DADOS', 2, 14),
(40, 'PRNSAA10', 'AK48020471A0', '10.13.10.37', '00:25:36:76:B9:DB', 'a:1:{i:0;s:2:\"31\";}', 'não', 'ativo', 'Rede', 5, '2024-04-08', 'SUZANA COSTA VIRGINIO DE SOUZA', '2024-06-05', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ATUALIZAÇÃO DE DADOS', 2, 337),
(41, 'MFPAF8A80', 'AK89003102B0', NULL, '00:80:91:AF:8A:80', 'a:1:{i:0;s:2:\"31\";}', 'não', 'ativo', 'Usb', 7, '2024-04-08', 'SUZANA COSTA VIRGINIO DE SOUZA', '2024-06-04', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ATUALIZAÇÃO DE DADOS', 2, 46),
(42, 'prnprot', 'AK5C008595A0', '10.13.10.25', '00:25:36:EE:F8:58', 'a:1:{i:0;i:30;}', 'não', 'ativo', 'Rede', 4, '2024-04-08', 'SUZANA COSTA VIRGINIO DE SOUZA', '2024-05-06', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ATUALIZAÇÃO DE DADOS', 2, 46),
(43, 'prntelefonia', 'AK8B014329C0', '10.13.10.30', '00:25:36:91:06:A5', 'a:1:{i:0;i:30;}', 'não', 'ativo', 'Rede', 4, '2024-04-08', 'SUZANA COSTA VIRGINIO DE SOUZA', '2024-05-06', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ATUALIZAÇÃO DE DADOS', 2, 61),
(44, 'PRNDAG', 'AK4B026373A0', '10.13.10.24', '00:80:91:AC:F6:77', 'a:1:{i:0;i:31;}', 'não', 'ativo', 'Rede', 7, '2024-04-08', 'SUZANA COSTA VIRGINIO DE SOUZA', '2024-05-06', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ATUALIZAÇÃO DE DADOS', 2, 41),
(45, '', '09J180300304', '', '', 'a:1:{i:0;s:2:\"22\";}', 'não', 'ativo', 'Rede', 18, '2024-04-08', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 11),
(46, 'PRNOUVIDORIA', 'AK5C026204B0', '10.10.10.25', '00:80:91:B0:AD:40', 'a:1:{i:0;s:2:\"31\";}', 'não', 'ativo', 'Rede', 7, '2024-04-25', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 129),
(47, 'PRNBRIGADA', 'AK89003099B0', '10.50.50.25', '00:80:91:BA:C7:CA', 'a:1:{i:0;s:2:\"31\";}', 'não', 'ativo', 'Rede', 7, '2024-04-26', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 108),
(48, 'USB-HEMOTERAPIA', 'AK5C008725A0', NULL, '00:25:36:EE:44:6F', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Usb', 4, '2024-04-26', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 175),
(49, 'PRNREHEMO', 'AK48020550A0', '10.30.30.36', '00:25:36:76:79:0A', 'a:1:{i:0;s:2:\"31\";}', 'não', 'ativo', 'Rede', 5, '2024-04-26', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 176),
(50, 'PRNBIOMOL', 'AK45066730A0', '10.30.30.32', '00:25:36:B6:CA:6E', 'a:1:{i:0;s:2:\"31\";}', 'não', 'ativo', 'Rede', 5, '2024-04-26', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 198),
(51, 'USB - VIROLOGIA', 'AK5B046532', NULL, '00:25:36:EE:10:00', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Usb', 4, '2024-04-26', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 208),
(52, 'PRNLABDIP', 'AK43006873A0', '10.43.40.22', '00:25:36:36:D0:43', 'a:1:{i:0;s:2:\"31\";}', 'não', 'ativo', 'Rede', 5, '2024-04-26', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 122),
(53, 'PRN08F1', 'AK5C008747A0', '10.81.80.27', '00:25:36:EE:44:97', 'a:1:{i:0;i:30;}', 'não', 'ativo', 'Rede', 4, '2024-04-30', 'SUZANA COSTA VIRGINIO DE SOUZA', '2024-04-30', 'ULISSES FERREIRA DA SILVA', 'ACERTO DO CADASTRO', 4, 83),
(54, 'PRNCARDIO', 'AK5C008601A0', '10.80.80.27', '00:25:36:EE:21:21', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Rede', 4, '2024-04-30', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 233),
(55, 'PRNSEAV', 'AK5C008738A0', '10.50.50.30', '00:25:36:EE:44:FB', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Rede', 4, '2024-04-30', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 131),
(56, 'PRNSERVSOCIAL', 'AK88037452B0', '10.50.50.23', '00:80:91:BA:C7:AD', 'a:1:{i:0;s:2:\"31\";}', 'não', 'ativo', 'Rede', 7, '2024-04-30', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 24),
(57, 'PRNNSP', 'AK5C008583A0', '10.50.50.33', '00:25:36:EE:F8:70', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Rede', 4, '2024-04-30', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 69),
(58, 'PRNGRISCO', 'AK45013696A0', '10.50.50.34', '00:80:91:76:D1:5C', 'a:1:{i:0;s:2:\"31\";}', 'não', 'ativo', 'Rede', 7, '2024-04-30', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 126),
(59, 'PRNHEPATO5C', 'AK47068111A0', '10.50.50.31', '00:25:36:76:3A:02', 'a:1:{i:0;s:2:\"31\";}', 'não', 'ativo', 'Rede', 5, '2024-04-30', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 284),
(60, 'PRNDIP', 'AK49025467A0', '10.50.50.22', '00:80:91:78:BB:57', 'a:1:{i:0;s:2:\"31\";}', 'não', 'ativo', 'Rede', 7, '2024-04-30', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 168),
(61, 'PRN5D', 'AK5C034729A0', NULL, '00:25:36:EE:11:F2', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Usb', 4, '2024-04-30', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 75),
(62, 'PRN5DILHA', 'AK5C008490A0', '10.50.50.28', '00:25:36:EE:78:0D', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Rede', 4, '2024-04-30', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 76),
(63, 'PRNSIND', 'AK5C008591', NULL, '00:25:36:EE:F8:E8', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Usb', 4, '2024-05-03', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 300),
(64, 'PRNENDOCRINO', 'AK5C039368B0', '10.92.90.21', '00:80:91:B0:B6:24', 'a:1:{i:0;i:31;}', 'não', 'inativo', 'Rede', 7, '2024-05-03', 'SUZANA COSTA VIRGINIO DE SOUZA', '2024-05-07', 'SUZANA COSTA VIRGINIO DE SOUZA', 'IMPRESSORA RETIRADA PELA EMPRESA.', 2, 244),
(65, 'PRNCPL', 'AK88056562B0', '10.10.10.32', '00:80:91:BA:C4:E2', 'a:1:{i:0;s:2:\"31\";}', 'não', 'ativo', 'Rede', 7, '2024-05-03', 'SUZANA COSTA VIRGINIO DE SOUZA', '2024-06-05', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ATUALIZAÇÃO DE DADOS', 2, 139),
(66, 'PRNENDOCRI', 'AK5C025553A0', '10.92.90.21', '00:25:36:EE:BA:B1', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Rede', 3, '2024-05-07', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 244),
(67, 'PROCIBA', 'AK5C008523A0', NULL, '00:25:36:EE:78:13', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Usb', 4, '2024-05-07', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 150),
(68, 'PRNCMR', 'AK49050905A0', '10.10.20.22', '00:80:91:AC:68:47', 'a:1:{i:0;s:2:\"31\";}', 'não', 'ativo', 'Rede', 7, '2024-05-07', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 151),
(69, 'FISIATRIA', 'AK5C008776', '10.10.20.21', '00:25:36:EE:C4:F0', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Rede', 4, '2024-05-07', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 187),
(70, 'FISIOTERAPIA1', 'AK88017587B0', '10.11.20.23', '00:25:36:E1:1E:56', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Rede', 3, '2024-05-07', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 245),
(71, 'FISIOSEC', 'AK5B046535A0', '10.11.20.22', '00:25:36:6E:48:AA', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Rede', 4, '2024-05-07', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 246),
(72, 'ANATSL19', 'AK5C008657A0', NULL, '00:25:36:EE:44:C5', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Usb', 4, '2024-05-07', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 145),
(73, 'ANATSECRET', 'AK5C008705A0', NULL, '00:25:36:EE:44:73', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Usb', 4, '2024-05-07', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 147),
(74, 'EMERG1', 'AK5C008740A0', NULL, '00:25:36:B1:18:40', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Usb', 4, '2024-05-07', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 339),
(75, 'EMERGSECRET', 'AK5C008653A0', NULL, '00:25:36:EE:44:79', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Usb', 4, '2024-05-07', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 340),
(76, 'PRNADMEMERG', 'AK71012509B0', '10.10.0.26', '00:80:91:B3:E6:96', 'a:1:{i:0;s:2:\"31\";}', 'não', 'ativo', 'Rede', 7, '2024-05-07', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 338),
(77, 'CAESECRET', 'AK88017600B0', '10.130.120.24', '00:25:36:E1:1E:BA', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Rede', 3, '2024-05-07', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 356),
(78, 'PRNCAERES', 'AK88056589B0', '10.130.120.25', '00:80:91:BA:C4:9E', 'a:1:{i:0;s:2:\"31\";}', 'não', 'ativo', 'Rede', 7, '2024-05-07', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 355),
(79, 'PRNDAA', 'AK88017552B0', '10.40.50.26', '00:25:36:E1:1E:BC', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Rede', 3, '2024-05-13', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 10),
(80, 'PRNCOEP', 'AK88017540B0', '10.40.50.23', '00:25:36:E1:1E:E2', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Rede', 3, '2024-05-13', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 65),
(81, 'PRNCPT', 'AK49025376A0', '10.60.60.23', '00:80:91:AC:26:E4', 'a:1:{i:0;s:2:\"31\";}', 'não', 'ativo', 'Rede', 7, '2024-05-13', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 116),
(82, 'PRNPCTH', 'AK5C008737A0', '10.60.60.25', '00:25:36:EE:44:07', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Rede', 4, '2024-05-13', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 116),
(83, 'PRNPSICOMED', 'AK49025502', '10.61.60.23', '00:80:91:AC:26:8E', 'a:1:{i:0;s:2:\"31\";}', 'não', 'ativo', 'Rede', 7, '2024-05-14', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 274),
(84, '', 'AK86043235A0', '10.80.80.23', '00:25:36:61:23:B4', 'a:1:{i:0;s:2:\"31\";}', 'não', 'ativo', 'Rede', 5, '2024-05-14', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 109),
(85, 'CENTRO CIRúRGICO', 'AK5C008528A0', NULL, '00:25:36:EE:78:6B', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Usb', 4, '2024-05-16', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 64),
(86, 'PRNSERVICOSOCIAL', 'AK5C008463A0', NULL, '00:25:36:EE:78:C9', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Usb', 4, '2024-05-16', 'ULISSES FERREIRA DA SILVA', '0000-00-00', '', '', 4, 29),
(87, 'PRNSEME', 'AK8B014332C0', NULL, '00:25:36:91:06:95', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Usb', 4, '2024-05-16', 'ULISSES FERREIRA DA SILVA', '0000-00-00', '', '', 4, 92),
(88, 'SEMECHEFIA', 'AK6B061468', NULL, '00:25:36:BE:E0:D1', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Usb', 4, '2024-05-16', 'ULISSES FERREIRA DA SILVA', '0000-00-00', '', '', 4, 90),
(89, 'SERV-OFTALMO', 'XBJZ007664', '10.110.90.31', 'A4:D7:3C:6E:A4:7C', 'a:4:{i:0;s:2:\"40\";i:1;s:2:\"41\";i:2;s:2:\"43\";i:3;s:2:\"42\";}', 'sim', 'ativo', 'Rede', 16, '2024-05-16', 'ULISSES FERREIRA DA SILVA', '0000-00-00', '', '', 4, 268),
(90, 'CENTRO-CIRURGICO', 'AKC008463A0A0', '10.111.120.21', '00:25:36:11:0E:BF', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Rede', 4, '2024-05-16', 'ULISSES FERREIRA DA SILVA', '0000-00-00', '', '', 4, 64),
(91, 'AMB-QUIMIOTERAPIA', 'AK5C008582A0', NULL, '00:25:36:2E:1C:84', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Usb', 4, '2024-05-16', 'ULISSES FERREIRA DA SILVA', '0000-00-00', '', '', 4, 8),
(92, 'PRNAMBULATORIO208', 'AK5C008493A0', NULL, '00:25:36:EE:78:75', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Usb', 4, '2024-05-16', 'ULISSES FERREIRA DA SILVA', '0000-00-00', '', '', 4, 7),
(93, 'PRNPLASTICA', 'AK5C008598A0', '10.110.110.22', '00:25:36:EE:F8:38', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Rede', 4, '2024-05-16', 'ULISSES FERREIRA DA SILVA', '0000-00-00', '', '', 4, 242),
(94, 'PRNMAMOGRAFIA', 'AK47068060A0', '10.11.0.28', '00:25:36:76:DA:F7', 'a:1:{i:0;s:2:\"31\";}', 'não', 'ativo', 'Rede', 5, '2024-05-17', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 220),
(95, '', 'AK8B014333C0', NULL, '00:25:36:91:06:E5', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Usb', 4, '2024-05-17', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 221),
(96, '', 'AK5C034359A0', NULL, '00:25:36:EE:21:EA', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Usb', 4, '2024-05-17', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 192),
(97, '', 'AK48058362A0', '10.1.10.21', '00:80:91:AC:23:AB', 'a:1:{i:0;s:2:\"31\";}', 'não', 'ativo', 'Rede', 7, '2024-05-17', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 227),
(98, '', 'AK5C008495', NULL, '00:25:36:EE:78:B5', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Usb', 4, '2024-05-17', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 268),
(99, '', 'AK5C008741A0', NULL, '00:25:36:EE:44:C7', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Usb', 4, '2024-05-17', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 271),
(100, 'PRNRADIOTERAP', 'AK84012479B0', '10.1.10.22', '00:25:36:A1:E2:81', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Rede', 3, '2024-05-17', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 276),
(101, '', 'AK8B014321C0', NULL, '00:25:36:91:06:79', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Usb', 4, '2024-05-17', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 188),
(102, '', 'AK5C008661A0', '10.1.0.27', '00:25:36:EE:44:25', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Rede', 4, '2024-05-17', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 190),
(103, '', 'AK5C008736A0', '10.1.0.29', '00:25:36:EE:C4:80', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Rede', 4, '2024-05-17', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 191),
(104, 'PRNTOMO', 'AK88056596B0', '10.1.0.23', '00:80:91:BA:C4:9B', 'a:1:{i:0;s:2:\"31\";}', 'não', 'ativo', 'Rede', 7, '2024-05-17', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 215),
(105, '', 'AK5C008772A0', NULL, '00:25:36:EE:C4:28', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Usb', 4, '2024-05-17', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 220),
(106, 'PRNRAIOX', 'AK88017554B0', '10.1.0.28', '', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Rede', 3, '2024-05-17', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 286),
(107, 'PRNHEMOD', 'AK5C008662A0', '10.11.10.35', '00:25:36:EE:44:65', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Rede', 4, '2024-05-17', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 229),
(108, '', 'AK8C030298DO', NULL, '00:25:36:51:B0:81', 'a:4:{i:0;s:2:\"52\";i:1;s:2:\"49\";i:2;s:2:\"50\";i:3;s:2:\"51\";}', 'sim', 'ativo', 'Usb', 17, '2024-05-17', 'ULISSES FERREIRA DA SILVA', '0000-00-00', '', '', 4, 226),
(109, 'PRNSLENF10B', 'AK47068125A0', '10.100.100.22', '00:25:36:76:3A:4C', 'a:1:{i:0;s:2:\"31\";}', 'não', 'ativo', 'Rede', 5, '2024-05-21', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 73),
(110, '', 'AK49050925A0', '10.110.90.27', '00:80:91:AC:63:ED', 'a:1:{i:0;s:2:\"31\";}', 'não', 'ativo', 'Rede', 7, '2024-05-21', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 254),
(111, 'PRNIMUNO9', 'AK46055809A0', '10.110.90.29', '00:80:91:78:FA:05', 'a:1:{i:0;s:2:\"31\";}', 'não', 'ativo', 'Rede', 7, '2024-05-21', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 255),
(112, 'PRNSESSAT', 'AK49008865A0', '10.113.101.21', '00:80:91:AC:26:4B', 'a:1:{i:0;s:2:\"31\";}', 'não', 'ativo', 'Rede', 7, '2024-05-21', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 294),
(113, '', 'AK5C008599', NULL, '00:25:36:EE:F8:84', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Usb', 4, '2024-05-21', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 293),
(114, 'PRNNEUROC', 'AK45066727A0', '10.110.100.26', '00:25:36:B6:CA:01', 'a:1:{i:0;s:2:\"31\";}', 'não', 'ativo', 'Rede', 5, '2024-05-21', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 262),
(115, 'PRNORTOPEDIA', 'AK47068038A0', '10.110.100.30', '00:25:36:96:AC:C6', 'a:1:{i:0;s:2:\"31\";}', 'não', 'ativo', 'Rede', 5, '2024-05-21', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 270),
(116, 'PRNPROCTO', 'AK48020549', '10.110.100.29', '00:25:36:76:79:CA', 'a:1:{i:0;s:2:\"31\";}', 'não', 'ativo', 'Rede', 5, '2024-05-21', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 272),
(117, '', 'AK47023956A0', '10.14.150.153', '00:25:36:76:E0:F5', 'a:1:{i:0;s:2:\"31\";}', 'não', 'ativo', 'Rede', 5, '2024-05-21', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 305),
(118, 'PRNPATCLIN2', 'AK88017604B0', '10.30.30.22', '00:25:36:E1:1E:6A', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Rede', 3, '2024-05-21', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 206),
(119, 'PRNHEMOTER', 'AK48030088A0', '10.30.30.26', '00:80:91:AB:D2:79', 'a:1:{i:0;s:2:\"31\";}', 'não', 'ativo', 'Rede', 7, '2024-05-21', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 252),
(120, '', 'AK5C008744A0', '10.14.151.130', '00:25:36:CE:B9:3C', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Rede', 4, '2024-05-21', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 256),
(121, '', 'AK5C008464A0', NULL, '00:25:36:EE:78:29', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Usb', 4, '2024-05-21', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 30),
(122, 'PRNNUTRI', 'AK89033068B0', '10.50.50.29', '00:80:91:BA:C4:09', 'a:1:{i:0;s:2:\"31\";}', 'não', 'ativo', 'Rede', 7, '2024-05-21', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 37),
(123, '', 'AK5B046534A0', NULL, '00:25:36:EE:E0:CF', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Usb', 4, '2024-05-21', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 31),
(124, 'PRNNEFRORECEP', 'AK5C008526', '10.70.70.22', '00:25:36:EE:70:01', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Rede', 4, '2024-05-21', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 96),
(125, 'PRNHEMODIALISE', 'AK45066731', '10.70.70.24', '00:25:36:B6:CA:5D', 'a:1:{i:0;s:2:\"31\";}', 'não', 'ativo', 'Rede', 5, '2024-05-21', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 135),
(126, '', 'AK5C008484', NULL, '00:25:36:EE:78:95', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Usb', 4, '2024-05-21', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 134),
(127, '', 'AK5C008470A0', NULL, '00:25:36:EE:78:E9', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Usb', 4, '2024-05-21', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 93),
(128, '', 'AK5C008658A0', NULL, '00:25:36:EE:44:05', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Usb', 4, '2024-05-21', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 94),
(129, 'PRNCORADM', 'AK47068065A0', '10.80.80.32', '00:25:36:2E:82:29', 'a:1:{i:0;s:2:\"31\";}', 'não', 'ativo', 'Rede', 5, '2024-05-21', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 157),
(130, 'PRNCORONARIA', 'AK43006905A0', '10.80.80.29', '00:25:36:36:D0:F9', 'a:1:{i:0;s:2:\"31\";}', 'não', 'ativo', 'Rede', 5, '2024-05-21', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 159),
(131, 'PRNCOMEIP', 'AK5C008466A0', '10.80.80.25', '00:25:36:EE:78:A9', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Rede', 4, '2024-05-21', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 66),
(132, 'PRNCARDIO', 'AK88017588B0', '10.81.80.26', '00:25:36:E1:1E:26', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Rede', 3, '2024-05-21', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 233),
(133, 'PRNCARDIACA', 'AK88017584B0', '10.80.80.31', '00:25:36:E1:1E:16', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Rede', 3, '2024-05-21', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 240),
(134, '', 'AK8B014255C0', NULL, '00:25:36:91:06:3E', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Usb', 4, '2024-05-21', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 77),
(135, '', 'AK8B008060C0', NULL, '00:25:36:EE:61:26', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Usb', 4, '2024-05-21', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 113),
(136, '', 'AK56022975A0', NULL, '00:25:36:2E:1C:B4', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Usb', 4, '2024-05-21', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 82),
(137, '', 'AK5C008487A0', NULL, '00:25:36:EE:78:35', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Usb', 4, '2024-05-21', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 6),
(138, '', 'AK8B014443C0', NULL, '00:25:36:EE:C4:20', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Usb', 4, '2024-05-21', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 5),
(139, '', 'AK5C008729A0', NULL, '00:25:36:EE:44:DF', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Usb', 4, '2024-05-21', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 99),
(140, 'PRNDFN', 'AK88017566B0', '10.12.10.30', '00:25:36:E1:1E:0C', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Rede', 3, '2024-05-21', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 100),
(141, 'PRNDFNORC', 'AK84028957B0', '10.12.10.31', '00:80:91:B9:C8:F1', 'a:1:{i:0;s:2:\"31\";}', 'não', 'ativo', 'Rede', 7, '2024-05-21', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 102),
(142, 'PRNDFNFAT', 'AK48030090A0', '10.13.10.32', '00:80:91:AB:CF:FA', 'a:1:{i:0;s:2:\"31\";}', 'não', 'ativo', 'Rede', 7, '2024-05-21', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 101),
(143, '', 'AK5C008743A0', NULL, '00:25:36:EE:44:A7', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Usb', 4, '2024-06-03', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 376),
(144, 'PRNSMELAUDOS', 'AK5C008486A0', '10.42.30.29', '00:25:36:EE:78:15', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Rede', 4, '2024-06-03', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 377),
(145, '', 'AK5C008594A0', NULL, '00:25:36:EE:F8:18', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Usb', 4, '2024-06-03', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 378),
(146, '', 'AK5C008731A0', NULL, '00:25:36:EE:44:7F', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Usb', 4, '2024-06-03', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 379),
(147, 'PRNCOPEM', 'AK88037439B0', '10.12.10.28', '00:80:91:BA:C8:05', 'a:1:{i:0;s:2:\"31\";}', 'não', 'ativo', 'Rede', 7, '2024-06-03', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 115),
(148, '', 'AK57067902B0', '10.10.10.29', '00:80:91:AF:45:5D', 'a:1:{i:0;s:2:\"31\";}', 'não', 'ativo', 'Rede', 7, '2024-06-03', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 112),
(149, 'PRNSRC', 'AK48058259A0', '10.12.10.25', '00:80:91:AC:B9:E5', 'a:1:{i:0;s:2:\"31\";}', 'não', 'ativo', 'Rede', 7, '2024-06-04', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 380),
(150, 'PRNCOLORDRH', 'AK48010680B0', '10.12.10.27', '00:25:36:76:25:0B', 'a:1:{i:0;s:2:\"44\";}', 'não', 'ativo', 'Rede', 14, '2024-06-05', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 288),
(151, 'PRNSEOP', 'AK5C008703A0', '10.12.10.24', '00:25:36:EE:44:CB', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Rede', 4, '2024-06-05', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 288),
(152, 'PRNFARMAMB', 'AK5C008733A0', '10.10.10.30', '00:25:36:EE:44:FF', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Rede', 4, '2024-06-05', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 12),
(153, 'PRNLICITACAO', 'AK88056554B0', '10.10.10.31', '00:80:91:BA:C5:8A', 'a:1:{i:0;s:2:\"31\";}', 'não', 'ativo', 'Rede', 7, '2024-06-05', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 140),
(154, '', 'AK42027419A0', '10.10.10.34', '00:80:91:AF:4C:3B', 'a:1:{i:0;s:2:\"31\";}', 'não', 'ativo', 'Rede', 7, '2024-06-05', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 107),
(155, '', 'AK5C008781A0', NULL, '00:25:36:EE:44:57', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Usb', 4, '2024-06-05', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 45),
(156, 'PRNCTI02', 'AK48020324A0', '10.131.131.24', '00:25:36:76:39:6B', 'a:1:{i:0;s:2:\"31\";}', 'não', 'ativo', 'Rede', 5, '2024-06-05', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 381),
(157, 'PRNCTI03', 'AK86043238A0', '10.131.131.23', '00:25:36:61:23:4C', 'a:1:{i:0;s:2:\"31\";}', 'não', 'ativo', 'Rede', 5, '2024-06-05', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 382),
(158, 'PRNCTI13ROUND', 'AK86043269A0', '10.131.131.21', '00:25:36:36:D0:83', 'a:1:{i:0;s:2:\"31\";}', 'não', 'ativo', 'Rede', 5, '2024-06-05', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 383),
(159, 'SME-UROLOGIA', 'AK56023011AO', '10.40.30.21', '00:25:36:2E:1C:2E', 'a:1:{i:0;s:2:\"30\";}', 'não', 'ativo', 'Rede', 4, '2024-08-05', 'ULISSES FERREIRA DA SILVA', '0000-00-00', '', 'cadastro novo', 4, 281);

-- --------------------------------------------------------

--
-- Estrutura da tabela `material`
--

CREATE TABLE `material` (
  `idMaterial` int(11) NOT NULL,
  `codigo` varchar(25) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `numSerie` varchar(50) DEFAULT NULL,
  `unidade` varchar(20) DEFAULT NULL,
  `quantidade` int(6) DEFAULT NULL,
  `statusMat` varchar(8) DEFAULT 'ativo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Extraindo dados da tabela `material`
--

INSERT INTO `material` (`idMaterial`, `codigo`, `descricao`, `numSerie`, `unidade`, `quantidade`, `statusMat`) VALUES
(1, 'C000384', 'TECLADO USB ABNT2', '0', '0', 0, 'ativo'),
(2, 'C000955', 'HD SSD DE 120GB', '0', '0', 0, 'ativo'),
(3, 'C004723', 'TONER 12A', '0', '0', 0, 'inativo'),
(4, 'C005446', 'TONER Q5949X', '0', '0', 0, 'inativo'),
(5, 'C009062', 'FONTE DE ALIMENTAÇÃO ATX  600W', '0', '0', 0, 'ativo'),
(6, 'C011472', 'FONTE DE ALIMENTAÇÃO ATX DE 400W', '0', '0', 0, 'ativo'),
(7, 'C011684', 'TONER Q7553A', '0', '0', 0, 'inativo'),
(8, 'C011784', 'TONER CC530A – PRETO', '0', '0', 0, 'inativo'),
(9, 'C011786', 'TONER CC532A – AMARELO', '0', '0', 0, 'inativo'),
(10, 'C011787', 'TONER CC533A – MAGENTA', '0', '0', 0, 'inativo'),
(11, 'C013659', 'MEMÓRIA 2GB – DDR2', '0', '0', 0, 'ativo'),
(12, 'C013713', 'MOUSE ÓPTICO USB', '0', '0', 0, 'ativo'),
(13, 'C013947', 'PEN DRIVER 16GB', '0', '0', 0, 'ativo'),
(14, 'C015223', 'TONER Q6000 – PRETO', '0', '0', 0, 'ativo'),
(15, 'C015224', 'TONER Q6001 – CIANO', '0', '0', 0, 'ativo'),
(16, 'C015225', 'TONER Q6002 – AMARELO', '0', '0', 0, 'ativo'),
(17, 'C015226', 'TONER Q6003 – MAGENTA', '0', '0', 0, 'ativo'),
(18, 'C015606', 'CABO SATA', '0', '0', 0, 'ativo'),
(19, 'C016756', 'MOUSEPAD', '0', '0', 0, 'ativo'),
(20, 'C017056', 'MEMÓRIA 4GB – DDR3 – 1.333MHZ', '0', '0', 0, 'ativo'),
(21, 'C017497', 'FILTRO DE LINHA 6 TOMADAS PADRAO NBR14136', '0', 'UN', 0, 'ativo'),
(22, 'C017546', 'PULSEIRA DE IDENTIFICAÇÃO ADULTO', '0', 'UN', 0, 'ativo'),
(23, 'C017564', 'HD SSD DE 480GB', '0', '0', 0, 'ativo'),
(24, 'C017573', 'GABINETE 4 BAIAS PADRAO ATX PRETO', '0', '0', 0, 'ativo'),
(25, 'P008162', 'MEMÓRIA 8GB – DDR4 – 2.400MHZ', '0', '0', 0, 'ativo'),
(26, 'P016897', 'MONITOR DE COMPUTADOR ATE  22 POLEGADAS', '0', '0', 0, 'ativo'),
(27, 'P017002', 'COMPUTADOR', '0', '0', 0, 'ativo'),
(28, 'CIR-001', 'TONER TK3182', '0', 'UN', 0, 'ativo'),
(29, 'CIR-002', 'TONER - BOLSA DE TINTA', '0', 'UN', 0, 'ativo'),
(30, 'CIR-003', 'TONER ES5112', '0', '0', 0, 'ativo'),
(31, 'CIR-004', 'TONER MPS5501', '0', '0', 0, 'ativo'),
(32, 'CIR-005', 'TONER K32', '0', '0', 0, 'ativo'),
(33, 'CIR-006', 'TONER Y31', '0', '0', 0, 'ativo'),
(34, 'CIR-007', 'TONER C32', '0', '0', 0, 'ativo'),
(35, 'CIR-008', 'TONER M32', '0', '0', 0, 'ativo'),
(36, 'CIR-009', 'CARTUCHO DE TINTA R04X - PRETO', '0', '0', 0, 'ativo'),
(37, 'CIR-010', 'CARTUCHO DE TINTA R04L - MAGENTA', '0', '0', 0, 'ativo'),
(38, 'CIR-011', 'CARTUCHO DE TINTA R04L - CIANO', '0', '0', 0, 'ativo'),
(39, 'CIR-012', 'CARTUCHO DE TINTA R04L - AMARELO', '0', '0', 0, 'ativo'),
(40, 'CIR-013', 'CARTUCHO DE TINTA T11B1 - PRETO', '0', '0', 0, 'ativo'),
(41, 'CIR-014', 'CARTUCHO DE TINTA T11A2 - CIANO', '0', '0', 0, 'ativo'),
(42, 'CIR-015', 'CARTUCHO DE TINTA T11A4 - AMARELO', '0', '0', 0, 'ativo'),
(43, 'CIR-016', 'CARTUCHO DE TINTA T11A3 - MAGENTA', '0', '0', 0, 'ativo'),
(44, 'CIR-017', 'TONER ES6405 MAGENTA', '0', 'UN', 0, 'ativo'),
(45, 'CIR-018', 'TONER ES6405 PRETO', '0', 'UN', 0, 'ativo'),
(46, 'CIR-019', 'TONER ES6405 CIANO', '0', 'UN', 0, 'ativo'),
(47, 'CIR-020', 'TONER ES6405 AMARELO', '0', 'UN', 0, 'ativo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `modeloImpressora`
--

CREATE TABLE `modeloImpressora` (
  `idModelo` int(11) NOT NULL,
  `statusModelo` varchar(8) DEFAULT NULL,
  `modeloImpressora` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Extraindo dados da tabela `modeloImpressora`
--

INSERT INTO `modeloImpressora` (`idModelo`, `statusModelo`, `modeloImpressora`) VALUES
(1, 'ativo', 'KYOCERA ECOSYS M3655-IDN'),
(2, 'ativo', 'OKI C831'),
(3, 'ativo', 'OKI ES 4172 LP MFP'),
(4, 'ativo', 'OKI ES 5112'),
(5, 'ativo', 'OKI MPS 5501B'),
(6, 'ativo', 'EPSON WF M5799'),
(7, 'ativo', 'OKI MPS 5502 MB'),
(8, 'inativo', 'RICOH AFICIO MP7502'),
(9, 'inativo', 'RICOH AFICIO MP171'),
(10, 'inativo', 'RICOH AFICIO MPC2051STA'),
(11, 'ativo', 'XEROX WORKCENTRE-7855'),
(12, 'ativo', 'ZEBRA S4M'),
(13, 'ativo', 'ZEBRA GC420T'),
(14, 'ativo', 'OKI ES 6405'),
(15, 'ativo', 'EPSON WF - C5790'),
(16, 'ativo', 'EPSON WF - C5890'),
(17, 'ativo', 'OKI C711'),
(18, 'ativo', 'ZEBRA HC100');

-- --------------------------------------------------------

--
-- Estrutura da tabela `monitor`
--

CREATE TABLE `monitor` (
  `idMonitor` int(11) NOT NULL,
  `modeloMonitor` varchar(25) DEFAULT NULL,
  `numPatMonitor` varchar(11) DEFAULT NULL,
  `numPatReitMonitor` varchar(11) DEFAULT NULL,
  `obsMonitor` varchar(255) DEFAULT NULL,
  `statusMonitor` varchar(7) DEFAULT NULL,
  `idComputador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

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

-- --------------------------------------------------------

--
-- Estrutura da tabela `saiMaterial`
--

CREATE TABLE `saiMaterial` (
  `idSaiMat` int(11) NOT NULL,
  `dataSaida` date DEFAULT NULL,
  `quantSai` int(6) DEFAULT NULL,
  `idMaterial` int(11) DEFAULT NULL,
  `idConserto` int(11) DEFAULT NULL,
  `idSetor` int(11) DEFAULT NULL,
  `idFuncionario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `setor`
--

CREATE TABLE `setor` (
  `idSetor` int(11) NOT NULL,
  `idDivisao` int(11) DEFAULT NULL,
  `localizacao` varchar(10) DEFAULT NULL,
  `ramal` varchar(20) DEFAULT NULL,
  `respSetor` varchar(30) DEFAULT NULL,
  `nomeLocal` varchar(150) DEFAULT NULL,
  `siglaUnidade` varchar(10) DEFAULT NULL,
  `siglaSei` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Extraindo dados da tabela `setor`
--

INSERT INTO `setor` (`idSetor`, `idDivisao`, `localizacao`, `ramal`, `respSetor`, `nomeLocal`, `siglaUnidade`, `siglaSei`) VALUES
(1, 1, '1° andar', '2895', 'EVANDRO VIEIRA', 'SALA DA MANUTENÇÃO', NULL, NULL),
(2, 1, '1° andar', '2292', '', 'SALA DA REDE', NULL, NULL),
(3, 1, '1° andar', '6024', 'JOSÉ CARLOS', 'SALA DO SERVIDOR', NULL, NULL),
(4, 1, '1° andar', '6024', 'JOSÉ CARLOS', 'SALA DOS ANALISTAS', NULL, NULL),
(5, 2, '2° andar', '2713', '', 'AMBULATÓRIO - IMUNOLOGIA - SALA 238', NULL, NULL),
(6, 2, '1° andar', '2713', '', 'AMBULATÓRIO - NUTRIÇÃO - SALA 142', NULL, NULL),
(7, 2, '2° andar', '2713', '', 'AMBULATÓRIO - SALA 208', NULL, NULL),
(8, 2, '2° andar', '2713', '', 'AMBULATÓRIO DE QUIMIOTERAPIA', NULL, NULL),
(9, 2, '4° andar', '2416', '', 'CAF - SERVIÇO DE FARMÁCIA', NULL, NULL),
(10, 2, '5° andar', '2739', '', 'DAA - GABINETE', NULL, NULL),
(11, 2, '1° andar', '2250', '', 'DAA - RECEPÇÃO', NULL, NULL),
(12, 2, '1° andar', '2385', '', 'FARMÁCIA - AMBULATORIAL', NULL, NULL),
(13, 2, '4° andar', '', '', 'FARMÁCIA - FARMACO VIGILÂNCIA', NULL, NULL),
(14, 10, '1° andar', '2250', '', 'SAA - CHEFIA', NULL, NULL),
(15, 2, '1° andar', '2352', '', 'SDM - ABERTURA DE PRONTUÁRIO', NULL, NULL),
(16, 2, '1° andar', '2250', '', 'SDM - CHEFIA', NULL, NULL),
(17, 2, '1° andar', '2256', '', 'SDM - SAM', NULL, NULL),
(18, 2, '1° andar', '2230', '', 'SDM - SECRETARIA', NULL, NULL),
(19, 2, '4° andar', '2254', '', 'SERVIÇO DE FARMÁCIA - CLÍNICA', NULL, NULL),
(20, 2, '4° andar', '2416', '', 'SERVIÇO DE FARMÁCIA - DISPENSAÇÃO', NULL, NULL),
(21, 2, '4° andar', '2409', '', 'SERVIÇO DE FARMÁCIA - MANIPULAÇÃO', NULL, NULL),
(22, 2, '2° andar', '2184', '', 'SERVIÇO DE FISIOTERAPIA', NULL, NULL),
(23, 2, '3° andar', '2190', '', 'SERVIÇO DE FONOAUDIOLOGIA', NULL, NULL),
(24, 2, '5° andar', '2567', '', 'SERVIÇO SOCIAL', NULL, NULL),
(25, 2, '9° andar', '2483', '', 'SERVIÇO SOCIAL', NULL, NULL),
(26, 2, '8° andar', '2317', '', 'SERVIÇO SOCIAL', NULL, NULL),
(27, 2, '10° andar', '2567', '', 'SERVIÇO SOCIAL', NULL, NULL),
(28, 2, '11° andar', '', '', 'SERVIÇO SOCIAL', NULL, NULL),
(29, 2, '1° andar', '', '', 'SERVIÇO SOCIAL', NULL, NULL),
(30, 2, '7° andar', '2327', '', 'SERVIÇO SOCIAL', NULL, NULL),
(31, 2, '5° andar', '2525', '', 'SND - SERVIÇO DE NUTRIÇÃO E DIETÉTICA - COPA', NULL, NULL),
(32, 2, 'subsolo', '2525', '', 'SND - SERVIÇO DE NUTRIÇÃO E DIETÉTICA - COZINHA', NULL, NULL),
(33, 2, '10° andar', '', '', 'SND - SERVIÇO DE NUTRIÇÃO E DIETÉTICA', NULL, NULL),
(34, 2, '11° andar', '2525', '', 'SND - SERVIÇO DE NUTRIÇÃO E DIETÉTICA', NULL, NULL),
(35, 2, '1° andar', '', '', 'SND - SERVIÇO DE NUTRIÇÃO E DIETÉTICA', NULL, NULL),
(36, 2, '9° andar', '', '', 'SND - SERVIÇO DE NUTRIÇÃO E DIETÉTICA', NULL, NULL),
(37, 2, '5° andar', '2525', '', 'SND - SERVIÇO DE NUTRIÇÃO E DIETÉTICA', NULL, NULL),
(38, 2, '2° andar', '', '', 'SND - SERVIÇO DE NUTRIÇÃO E DIETÉTICA', NULL, NULL),
(39, 2, '8° andar', '', '', 'SND - SERVIÇO DE NUTRIÇÃO E DIETÉTICA', NULL, NULL),
(40, 3, 'subsolo', '', '', 'COMISSÃO DE RESÍDUOS', NULL, NULL),
(41, 3, '1° andar', '2796', '', 'DAG - GABINETE', NULL, NULL),
(42, 3, '1° andar', '', '', 'GABINETE CRACHÁ', NULL, NULL),
(43, 3, '1° andar', '', '', 'GRÁFICA', NULL, NULL),
(44, 3, 'subsolo', '', '', 'HALL DOS ELEVADORES', NULL, NULL),
(45, 3, 'subsolo', '', '', 'ROUPARIA', NULL, NULL),
(46, 3, '1° andar', '2225', '', 'SEÇÃO DE ARQUIVO E PROTOCOLO', NULL, NULL),
(47, 3, 'subsolo', '2316', '', 'SEÇÃO DE PATRIMÔNIO', NULL, NULL),
(48, 3, 'subsolo', '2255', '', 'SEÇÃO DE VIGILÂNCIA', NULL, NULL),
(49, 3, 'subsolo', '2796', 'GEREMIAS', 'SERVIÇOS GERAIS', NULL, NULL),
(50, 3, 'subsolo', '', '', 'TRANSPORTE', NULL, NULL),
(51, 3, 'subsolo', '2470', '', 'ZELADORIA', NULL, NULL),
(52, 4, 'subsolo', '', '', 'DEG - DIREÇÃO', NULL, NULL),
(53, 4, 'subsolo', '2751', '', 'DEG - SECRETARIA', NULL, NULL),
(54, 4, 'subsolo', '2280', '', 'GASES', NULL, NULL),
(55, 4, 'subsolo', '', '', 'SEB - SERVIÇO DE ELETRÔNICA E BIOMÉDICA', NULL, NULL),
(56, 4, 'subsolo', '2757', '', 'SEÇÃO DE CONSERVAÇÃO DE EDIFÍCIO', NULL, NULL),
(57, 4, 'subsolo', '2850', '', 'SEÇÃO DE EQUIPAMENTOS E INSTALAÇÕES', NULL, NULL),
(58, 4, 'subsolo', '', '', 'SEÇÃO DE REFRIGERAÇÃO', NULL, NULL),
(59, 4, 'subsolo', '', '', 'SERVIÇO DE PLANOS E PROJETOS (SPP)', NULL, NULL),
(60, 4, 'subsolo', '6001', '', 'SOM - SERVIÇO DE OPERAÇÃO E MANUTENÇÃO', NULL, NULL),
(61, 4, '1° andar', '', '', 'TELEFONIA', NULL, NULL),
(62, 5, '12° andar', '2716', '', 'CENTRO CIRÚRGICO - CHEFIA', NULL, NULL),
(63, 5, '12° andar', '', '', 'CENTRO CIRÚRGICO - ILHA', NULL, NULL),
(64, 5, '12° andar', '', '', 'CENTRO CIRÚRGICO', NULL, NULL),
(65, 5, '5° andar', '2543', '', 'COEP - COORDENAÇÃO DE EDUCAÇÃO PERMANENTE', NULL, NULL),
(66, 5, '8° andar', '6244', '', 'COMEIP', NULL, NULL),
(67, 5, '5° andar', '', '', 'LABORATÓRIO DE ENFERMAGEM', NULL, NULL),
(68, 5, '5° andar', '', '', 'NÚCLEO ADMINISTRATIVO', NULL, NULL),
(69, 5, '5° andar', '2732', '', 'NÚCLEO DE SEGURANÇA DO PACIENTE', NULL, NULL),
(70, 5, '10° andar', '', '', 'POSTO DE ENFERMAGEM 10A', NULL, NULL),
(71, 5, '10° andar', '', '', 'POSTO DE ENFERMAGEM 10B - CHEFIA', NULL, NULL),
(72, 5, '10° andar', '', '', 'POSTO DE ENFERMAGEM 10B ILHA', NULL, NULL),
(73, 5, '10° andar', '2243', '', 'POSTO DE ENFERMAGEM 10B', NULL, NULL),
(74, 5, '10° andar', '', '', 'POSTO DE ENFERMAGEM 10C ILHA', NULL, NULL),
(75, 5, '5° andar', '2763', '', 'POSTO DE ENFERMAGEM 5D - CHEFIA', NULL, NULL),
(76, 5, '5° andar', '2763', '', 'POSTO DE ENFERMAGEM 5D ILHA', NULL, NULL),
(77, 5, '7° andar', '2835', '', 'POSTO DE ENFERMAGEM 7A ILHA', NULL, NULL),
(78, 5, '8° andar', '2516', '', 'POSTO DE ENFERMAGEM 8C', NULL, NULL),
(79, 5, '8° andar', '', '', 'POSTO DE ENFERMAGEM 8C CHEFIA', NULL, NULL),
(80, 5, '8° andar', '', '', 'POSTO DE ENFERMAGEM 8C ILHA', NULL, NULL),
(81, 5, '8° andar', '', '', 'POSTO DE ENFERMAGEM 8D/1 RPA', NULL, NULL),
(82, 5, '8° andar', '2516', '', 'POSTO DE ENFERMAGEM 8F - CHEFIA', NULL, NULL),
(83, 5, '8° andar', '2516', '', 'POSTO DE ENFERMAGEM 8F - DAY CLINIC', NULL, NULL),
(84, 5, '8° andar', '', '', 'POSTO DE ENFERMAGEM 8F - RECEPÇÃO', NULL, NULL),
(85, 5, '8° andar', '2516', '', 'POSTO DE ENFERMAGEM 8F', NULL, NULL),
(86, 5, '8° andar', '2516', '', 'POSTO DE ENFERMAGEM 8F2 - DAY CLINIC', NULL, NULL),
(87, 5, '8° andar', '2173', '', 'POSTO DE ENFERMAGEM 8F2 ILHA', NULL, NULL),
(88, 5, '9° andar', '', '', 'POSTO DE ENFERMAGEM 9C - BALCAO', NULL, NULL),
(89, 5, '9° andar', '', '', 'POSTO DE ENFERMAGEM 9C ILHA', NULL, NULL),
(90, 5, '12° andar', '2823', '', 'SEME - SERVIÇO DE MATERIAL ESTERELIZADO - CHEFIA', NULL, NULL),
(91, 5, '12° andar', '', '', 'SEME - SERVIÇO DE MATERIAL ESTERELIZADO ALMOXARIFADO', NULL, NULL),
(92, 5, '12° andar', '2823', '', 'SEME - SERVIÇO DE MATERIAL ESTERELIZADO', NULL, NULL),
(93, 5, '7° andar', '2464', '', 'SERVIÇO DE DENSITOMETRIA ÓSSEA - SALA DE LAUDOS', NULL, NULL),
(94, 5, '7° andar', '2464', '', 'SERVIÇO DE DENSITOMETRIA ÓSSEA', NULL, NULL),
(95, 5, '4° andar', '', '', 'SERVIÇO DE GASTRO - SECRETARIA', NULL, NULL),
(96, 5, '7° andar', '2644', '', 'SERVIÇO DE NEFROLOGIA - RECEPÇÃO', NULL, NULL),
(97, 5, '7° andar', '', '', 'SERVIÇO DE NEFROLOGIA POSTO 7A', NULL, NULL),
(98, 5, '5° andar', '', '', 'SUPERVISÃO ENFERMAGEM', NULL, NULL),
(99, 6, '1° andar', '6039', '', 'DFN - CHEFIA', NULL, NULL),
(100, 6, '1° andar', '2612', '', 'DFN - CONTABILIDADE', NULL, NULL),
(101, 6, '1° andar', '2379', '', 'DFN - FATURAMENTO', NULL, NULL),
(102, 6, '1° andar', '2243', '', 'DFN - ORÇAMENTO', NULL, NULL),
(103, 6, '1° andar', '', '', 'DFN - RECEPÇÃO', NULL, NULL),
(104, 6, '1° andar', '', '', 'DFN - TESOURARIA', NULL, NULL),
(105, 7, 'subsolo', '2248', '', 'ALMOXARIFADO CENTRAL', NULL, NULL),
(106, 7, '1° andar', '', '', 'ASSESSORIA DE IMPRENSA', NULL, NULL),
(107, 7, '1° andar', '', '', 'ASSESSORIA TÉCNICA', NULL, NULL),
(108, 7, '5° andar', '', '', 'BRIGADA', NULL, NULL),
(109, 7, '8° andar', '2693', '', 'CCIH - COORDENAÇÃO DE CONTROLE DE INFECÇÃO HOSPITALAR', NULL, NULL),
(110, 7, '4° andar', '', '', 'CEPEDIP', NULL, NULL),
(111, 7, 'subsolo', '', '', 'COMPLEXO HOSPITALAR', NULL, NULL),
(112, 7, '1° andar', '', '', 'CONTROLE INTERNO', NULL, NULL),
(113, 7, '8° andar', '2223', '', 'COORDENAÇÃO DE CURSOS DE GRADUAÇÃO EM FISIOTERAPIA', NULL, NULL),
(114, 7, 'subsolo', '', '', 'COORDENAÇÃO DE POLÍTICAS', NULL, NULL),
(115, 7, '1° andar', '', '', 'COPEM', NULL, NULL),
(116, 7, '6° andar', '2426', '', 'CPT - CENTRO DE PESQUISA EM TUBERCULOSE', NULL, NULL),
(117, 7, '6° andar', '', '', 'CPT - DIVISÃO DE PESQUISA', NULL, NULL),
(118, 7, '4° andar', '', '', 'CPT - LABORATÓRIO CEPEDIP', NULL, NULL),
(119, 7, '4° andar', '', '', 'CPT - LABORATÓRIO DE BACTERIOLOGIA', NULL, NULL),
(120, 7, '4° andar', '', '', 'CPT - LABORATÓRIO', NULL, NULL),
(121, 7, '1° andar', '', '', 'DG - SALA DE REUNÃO', NULL, NULL),
(122, 7, '4° andar', '2950', '', 'DIP - IMUNOLOGIA', NULL, NULL),
(123, 7, '1° andar', '6004', '', 'DIREÇÃO GERAL - GABINETE', NULL, NULL),
(124, 7, '1° andar', '', '', 'DIREÇÃO GERAL', NULL, NULL),
(125, 7, '1° andar', '', '', 'DIREITO PACIENTE', NULL, NULL),
(126, 7, '5° andar', '2732', '', 'GERÊNCIA DE RISCO', NULL, NULL),
(127, 7, '4° andar', '', '', 'LABORATÓRIO DE TECIDO CONJUNTIVO', NULL, NULL),
(128, 7, 'subsolo', '', '', 'NÚCLEO DE ORIENTAÇÃO', NULL, NULL),
(129, 7, '1° andar', '6005', '', 'OUVIDORIA', NULL, NULL),
(130, 7, 'subsolo', '', '', 'PADI - SALA DE REUNIÃO', NULL, NULL),
(131, 7, '5° andar', '2734', '', 'SEAV', NULL, NULL),
(132, 7, '8° andar', '6225', '', 'SERVIÇO DE CARDIOLOGIA - ICES', NULL, NULL),
(133, 7, '7° andar', '2314', '', 'SERVIÇO DE HEMODIÁLISE - RECEPÇÃO', NULL, NULL),
(134, 7, '7° andar', '2314', '', 'SERVIÇO DE NEFROLOGIA - HEMODIÁLISE - CHEFIA', NULL, NULL),
(135, 7, '7° andar', '2314', '', 'SERVIÇO DE NEFROLOGIA - HEMODIÁLISE - RECEPÇÃO', NULL, NULL),
(136, 7, '7° andar', '', '', 'SERVIÇO DE NEFROLOGIA - HEMODIÁLISE', NULL, NULL),
(137, 7, '8° andar', '', '', 'SERVIÇO DE NEFROLOGIA -ENFERMARIA', NULL, NULL),
(138, 7, '1° andar', '', '', 'SLC - ESTIMATIVA', NULL, NULL),
(139, 7, '1° andar', '2763', '', 'SLC - PREGÃO', NULL, NULL),
(140, 7, '1° andar', '', '', 'SLC - LICITAÇÃO', NULL, NULL),
(141, 7, '1° andar', '', '', 'SLC - SECRETARIA', NULL, NULL),
(142, 7, 'subsolo', '', '', 'SOLUÇÕES - EMPRESA', NULL, NULL),
(143, 8, 'subsolo', '2284', '', 'ANATOMIA PATOLÓGICA - RECEPÇÃO', NULL, NULL),
(144, 8, 'subsolo', '2283', '', 'ANATOMIA PATOLÓGICA - SALA 15', NULL, NULL),
(145, 8, 'subsolo', '2283', '', 'ANATOMIA PATOLÓGICA - SALA 19', NULL, NULL),
(146, 8, 'subsolo', '2283', '', 'ANATOMIA PATOLÓGICA - SALA DOS RESIDENTES', NULL, NULL),
(147, 8, 'subsolo', '2283', '', 'ANATOMIA PATOLÓGICA - SECRETARIA', NULL, NULL),
(148, 8, 'subsolo', '', '', 'ANATOMIA PATOLÓGICA -SALA 24', NULL, NULL),
(149, 8, 'subsolo', '2283', '', 'ANATOMIA PATOLÓGICA', NULL, NULL),
(150, 8, '2° andar', '2213', '', 'CENTRO MULTIPROFISSIONAL - PROCIBA SECRETARIA', NULL, NULL),
(151, 8, '2° andar', '2213', '', 'CENTRO MULTIPROFISSIONAL REABILITAÇÃO', NULL, NULL),
(152, 8, '4° andar', '', '', 'CEPEDIP - PESQUISA DIP SALA 2', NULL, NULL),
(153, 8, '5° andar', '', '', 'CHEFIA DA DIVISÃO MEDICA', NULL, NULL),
(154, 8, '3° andar', '', '', 'CLINICA VIRAL', NULL, NULL),
(155, 8, '5° andar', '', '', 'COORDENAÇÃO DE TRANSPLANTE', NULL, NULL),
(156, 8, 'subsolo', '', '', 'CORTARX', NULL, NULL),
(157, 8, '8° andar', '2871', '', 'CTI - 8D - ADMINISTRATIVO', NULL, NULL),
(158, 8, '8° andar', '', '', 'CTI - 8D - CHEFIA', NULL, NULL),
(159, 8, '8° andar', '2871', '', 'CTI - 8D/2', NULL, NULL),
(160, 8, '13° andar', '', '', 'CTI - GERAL', NULL, NULL),
(161, 8, '13° andar', '', '', 'CTI - INALOTERAPIA', NULL, NULL),
(162, 8, '8° andar', '', '', 'CTI - POSTO 8D - ADMINISTRAÇÃO', NULL, NULL),
(163, 8, '8° andar', '', '', 'CTI - POSTO 8D - BALCÃO', NULL, NULL),
(164, 8, '8° andar', '', '', 'CTI - POSTO 8D - RECEPÇÃO', NULL, NULL),
(165, 8, '8° andar', '', '', 'CTI - POSTO 8D/1 RECEPÇÃO', NULL, NULL),
(166, 8, 'subsolo', '', '', 'DEPARTAMENTO DE RADIOLOGIA', NULL, NULL),
(167, 8, '5° andar', '', '', 'DIP - PÓS GRADUAÇÃO', NULL, NULL),
(168, 8, '5° andar', '2526', '', 'DIP - SECRETARIA', NULL, NULL),
(169, 8, '4° andar', '', '', 'DIP', NULL, NULL),
(170, 8, '5° andar', '2526', '', 'DIP', NULL, NULL),
(171, 8, 'subsolo', '', '', 'EMERGÊNCIA - ILHA', NULL, NULL),
(172, 8, 'subsolo', '', '', 'EMERGÊNCIA - RECEPÇÃO', NULL, NULL),
(173, 8, 'subsolo', '', '', 'EMERGÊNCIA - SALA DE MEDICAÇÃO', NULL, NULL),
(174, 8, 'subsolo', '', '', 'EMERGÊNCIA', NULL, NULL),
(175, 8, '3° andar', '2706', '', 'HEMOTERAPIA - CHEFIA', NULL, NULL),
(176, 8, '3° andar', '2706', '', 'HEMOTERAPIA - RECEPÇÃO', NULL, NULL),
(177, 8, '3° andar', '', '', 'HEMOTERAPIA', NULL, NULL),
(178, 8, '4° andar', '', '', 'LABORATÓRIO 4A01', NULL, NULL),
(179, 8, '3° andar', '', '', 'LABORATÓRIO DE CARGA VIRAL', NULL, NULL),
(180, 8, '4° andar', '', '', 'LABORATÓRIO DE HEMATOLOGIA', NULL, NULL),
(181, 8, '3° andar', '', '', 'LABORATÓRIO DE HEPATOLOGIA', NULL, NULL),
(182, 8, '3° andar', '', '', 'LABORATÓRIO DE HORMONIO BOX', NULL, NULL),
(183, 8, '4° andar', '', '', 'LABORATÓRIO DE IMUNOLOGIA', NULL, NULL),
(184, 8, '3° andar', '', '', 'LABORATÓRIO DE MICOLOGIA', NULL, NULL),
(185, 8, 'subsolo', '', '', 'LABORATÓRIO MULTIDISCIPLINAR', NULL, NULL),
(186, 8, '4° andar', '', '', 'LABORATÓRIO TRANSPLANTE MEDULA', NULL, NULL),
(187, 8, '2° andar', '2213', '', 'MEDICINA FÍSICA FISIATRIA', NULL, NULL),
(188, 8, 'subsolo', '2339', '', 'MEDICINA NUCLEAR - ADMINISTRAÇÃO', NULL, NULL),
(189, 8, 'subsolo', '', '', 'MEDICINA NUCLEAR - FÍSICA', NULL, NULL),
(190, 8, 'subsolo', '2339', '', 'MEDICINA NUCLEAR - LABORATÓRIO DE MARCAÇÃO DE CÉLULAS E MOLÉCULAS', NULL, NULL),
(191, 8, 'subsolo', '', '', 'MEDICINA NUCLEAR - LABORATÓRIO DE MONITORIZAÇÃO', NULL, NULL),
(192, 8, 'subsolo', '2339', '', 'MEDICINA NUCLEAR - MARCAÇÃO CINTILOGRAFIA', NULL, NULL),
(193, 8, 'subsolo', '', '', 'MEDICINA NUCLEAR - RADIO FARMÁCIA', NULL, NULL),
(194, 8, '9° andar', '', '', 'NEUROENDOCRINOLOGIA', NULL, NULL),
(195, 8, '10° andar', '', '', 'NEUROLOGIA', NULL, NULL),
(196, 8, '3° andar', '', '', 'PATOLOGIA CLÍNICA - ALMOXARIFAD0', NULL, NULL),
(197, 8, '3° andar', '', '', 'PATOLOGIA CLÍNICA - BACTERIOLOGIA', NULL, NULL),
(198, 8, '3° andar', '2661', '', 'PATOLOGIA CLÍNICA - BIOLOGIA MOLECULAR', NULL, NULL),
(199, 8, '3° andar', '2672', '', 'PATOLOGIA CLÍNICA - BIOQUÍMICA', NULL, NULL),
(200, 8, '3° andar', '', '', 'PATOLOGIA CLÍNICA - CHEFIA', NULL, NULL),
(201, 8, '1° andar', '', '', 'PATOLOGIA CLÍNICA - COLETA', NULL, NULL),
(202, 8, '3° andar', '', '', 'PATOLOGIA CLÍNICA - HEMATOLOGIA', NULL, NULL),
(203, 8, '3° andar', '', '', 'PATOLOGIA CLÍNICA - MICOLOGIA', NULL, NULL),
(204, 8, '3° andar', '2672', '', 'PATOLOGIA CLÍNICA - QUÍMICA CLÍNICA', NULL, NULL),
(205, 8, '3° andar', '', '', 'PATOLOGIA CLÍNICA - RECEPÇÃO', NULL, NULL),
(206, 8, '3° andar', '2303', '', 'PATOLOGIA CLÍNICA - SECRETARIA', NULL, NULL),
(207, 8, '3° andar', '', '', 'PATOLOGIA CLÍNICA - SOROLOGIA', NULL, NULL),
(208, 8, '3° andar', '2674', '', 'PATOLOGIA CLÍNICA - VIROLOGIA', NULL, NULL),
(209, 8, '3° andar', '', '', 'PATOLOGIA CLÍNICA', NULL, NULL),
(210, 8, '3° andar', '', '', 'PNEUMOLOGIA', NULL, NULL),
(211, 8, '8° andar', '', '', 'POSTO 8D/1 RPA', NULL, NULL),
(212, 8, '6° andar', '2117', '', 'POSTO DE ENFERMAGEM 6F', NULL, NULL),
(213, 8, '11° andar', '', '', 'PROHART - POLISSONOGRAFIA', NULL, NULL),
(214, 8, '3° andar', '', '', 'PROHART', NULL, NULL),
(215, 8, 'subsolo', '2399', '', 'RADIODIAGNÓSTICO - ADMINISTRAÇÃO', NULL, NULL),
(216, 8, 'subsolo', '', '', 'RADIODIAGNÓSTICO', NULL, NULL),
(217, 8, 'subsolo', '', '', 'RADIOLOGIA - ADMINISTRAÇÃO', NULL, NULL),
(218, 8, 'subsolo', '', '', 'RADIOLOGIA - COORDENAÇÃO', NULL, NULL),
(219, 8, 'subsolo', '', '', 'RADIOLOGIA - HEMODINÂMICA', NULL, NULL),
(220, 8, 'subsolo', '2503', '', 'RADIOLOGIA - MAMOGRAFIA - SALA DE LAUDOS', NULL, NULL),
(221, 8, 'subsolo', '', '', 'RADIOLOGIA - MAMOGRAFIA', NULL, NULL),
(222, 8, 'subsolo', '', '', 'RADIOLOGIA - RECEPÇÃO', NULL, NULL),
(223, 8, 'subsolo', '', '', 'RADIOLOGIA - SALA DE LAUDOS ULTRASSOM', NULL, NULL),
(224, 8, 'subsolo', '', '', 'RADIOLOGIA - ULTRASSOM', NULL, NULL),
(225, 8, 'subsolo', '', '', 'RADIOLOGIA', NULL, NULL),
(226, 8, 'subsolo', '2159', '', 'RADIOTERAPIA - FÍSICA', NULL, NULL),
(227, 8, 'subsolo', '2160', '', 'RADIOTERAPIA - RECEPÇÃO', NULL, NULL),
(228, 8, '1° andar', '', '', 'RADIOTERAPIA', NULL, NULL),
(229, 8, 'subsolo', '2572', '', 'RESSONÂNCIA MAGNÉTICA', NULL, NULL),
(230, 8, '11° andar', '', '', 'SECRETARIA DE CIRURGIA GERAL', NULL, NULL),
(231, 8, '11° andar', '', '', 'SERVIÇO ANESTESIOLOGIA', NULL, NULL),
(232, 8, '8° andar', '', '', 'SERVIÇO DE CARDIOLOGIA - PÓS', NULL, NULL),
(233, 8, '8° andar', '', '', 'SERVIÇO DE CARDIOLOGIA', NULL, NULL),
(234, 8, '8° andar', '', '', 'SERVIÇO outros', NULL, NULL),
(235, 8, '10° andar', '', '', 'SERVIÇO CIRURGIA GERAL 10A', NULL, NULL),
(236, 8, '11° andar', '', '', 'SERVIÇO CIRURGIA GERAL', NULL, NULL),
(237, 8, '10° andar', '', '', 'SERVIÇO CIRURGIA VASCULAR', NULL, NULL),
(238, 8, '9° andar', '', '', 'SERVIÇO CLÍNICA MÉDICA - QUARTO', NULL, NULL),
(239, 8, '9° andar', '', '', 'SERVIÇO CLÍNICA MÉDICA', NULL, NULL),
(240, 8, '8° andar', '2629', '', 'SERVIÇO DE CIRURGIA CARDÍACA', NULL, NULL),
(241, 8, '11° andar', '2803', '', 'SERVIÇO DE CIRURGIA GERAL', NULL, NULL),
(242, 8, '11° andar', '2822', '', 'SERVIÇO DE CIRURGIA PLÁSTICA', NULL, NULL),
(243, 8, '5° andar', '2580', '', 'SERVIÇO DE DERMATOLOGIA', NULL, NULL),
(244, 8, '9° andar', '2748', '', 'SERVIÇO DE ENDOCRINOLOGIA', NULL, NULL),
(245, 8, '2° andar', '2213', '', 'SERVIÇO DE FISIOTERAPIA - CHEFIA', NULL, NULL),
(246, 8, '2° andar', '2213', '', 'SERVIÇO DE FISIOTERAPIA - SECRETARIA', NULL, NULL),
(247, 8, '4° andar', '', '', 'SERVIÇO DE GASTRO - LABORATÓRIO', NULL, NULL),
(248, 8, '4° andar', '', '', 'SERVIÇO DE GASTRO - RX', NULL, NULL),
(249, 8, '4° andar', '', '', 'SERVIÇO DE GASTRO - SALÃO', NULL, NULL),
(250, 8, '4° andar', '', '', 'SERVIÇO DE GASTROENTEROLOGIA', NULL, NULL),
(251, 8, '4° andar', '', '', 'SERVIÇO DE GINECOLOGIA', NULL, NULL),
(252, 8, '3° andar', '2305', '', 'SERVIÇO DE HEMOTERAPIA - FRACIONAMENTO', NULL, NULL),
(253, 8, '3° andar', '', '', 'SERVIÇO DE HEMOTERAPIA', NULL, NULL),
(254, 8, '9° andar', '2731', '', 'SERVIÇO DE HEPATOLOGIA', NULL, NULL),
(255, 8, '9° andar', '2626', '', 'SERVIÇO DE IMUNOLOGIA', NULL, NULL),
(256, 8, '7° andar', '2836', '', 'SERVIÇO DE NEFROLOGIA - COORDENAÇÃO DE TRANSPLANTE RENAL', NULL, NULL),
(257, 8, '7° andar', '', '', 'SERVIÇO DE NEFROLOGIA - DESCANSO', NULL, NULL),
(258, 8, '8° andar', '', '', 'SERVIÇO DE NEFROLOGIA - RECEPÇÃO', NULL, NULL),
(259, 8, '7° andar', '', '', 'SERVIÇO DE NEFROLOGIA CHEFIA', NULL, NULL),
(260, 8, '7° andar', '', '', 'SERVIÇO DE NEFROLOGIA DPI', NULL, NULL),
(261, 8, '7° andar', '', '', 'SERVIÇO DE NEFROLOGIA', NULL, NULL),
(262, 8, '10° andar', '2826', '', 'SERVIÇO DE NEUROCIRURGIA', NULL, NULL),
(263, 8, '10° andar', '', '', 'SERVIÇO DE NEUROLOGIA - SESAT', NULL, NULL),
(264, 8, '8° andar', '', '', 'SERVIÇO DE NEUROLOGIA EEG', NULL, NULL),
(265, 8, '10° andar', '', '', 'SERVIÇO DE NEUROLOGIA SALA DE PESQUISA', NULL, NULL),
(266, 8, '10° andar', '', '', 'SERVIÇO DE NEUROLOGIA', NULL, NULL),
(267, 8, '9° andar', '', '', 'SERVIÇO DE NUTROLOGIA', NULL, NULL),
(268, 8, '11° andar', '2841', '', 'SERVIÇO DE OFTALMOLOGIA', NULL, NULL),
(269, 8, '11° andar', '', '', 'SERVIÇO DE ONCOLOGIA', NULL, NULL),
(270, 8, '10° andar', '2838', '', 'SERVIÇO DE ORTOPEDIA', NULL, NULL),
(271, 8, '11° andar', '2285', '', 'SERVIÇO DE OTORRINOLARINGOLOGIA', NULL, NULL),
(272, 8, '10° andar', '2719', '', 'SERVIÇO DE PROCTOLOGIA', NULL, NULL),
(273, 8, '2° andar', '', '', 'SERVIÇO DE PSICOLOGIA MÉDICA', NULL, NULL),
(274, 8, '6° andar', '2601', '', 'SERVIÇO DE PSIQUIATRIA E PSICOLOGIA MÉDICA', NULL, NULL),
(275, 8, '1° andar', '', '', 'SERVIÇO DE RADIOTERAPIA - SALA', NULL, NULL),
(276, 8, 'subsolo', '2159', '', 'SERVIÇO DE RADIOTERAPIA', NULL, NULL),
(277, 8, '11° andar', '', '', 'SERVIÇO DE UROLOGIA', NULL, NULL),
(278, 8, '3° andar', '', '', 'SME - CARDIOLOGIA - SALA DE ECO', NULL, NULL),
(279, 8, '3° andar', '', '', 'SME - CARDIOLOGIA - SALA DE LAUDOS', NULL, NULL),
(280, 8, '3° andar', '', '', 'SME - RECEPÇÃO', NULL, NULL),
(281, 8, '3° andar', '', '', 'SME - UROLOGIA', NULL, NULL),
(282, 8, '2° andar', '', '', 'SMFR', NULL, NULL),
(283, 8, '2° andar', '', '', 'TERAPIA OCUPACIONAL', NULL, NULL),
(284, 8, '5° andar', '2660', '', 'TERAPIA OCUPACIONAL', NULL, NULL),
(285, 8, 'subsolo', '', '', 'TOMOGRAFIA - SALA DO COMANDO', NULL, NULL),
(286, 8, 'subsolo', '2572', '', 'TOMOGRAFIA COMPUTADORIZADA - RECEPÇÃO', NULL, NULL),
(287, 9, '1° andar', '2589', '', 'DRH - ATENDIMENTO', NULL, NULL),
(288, 9, '1° andar', '', '', 'DRH - GABINETE', NULL, NULL),
(289, 9, '1° andar', '', '', 'DRH - PROCESSAMENTO', NULL, NULL),
(290, 9, '1° andar', '', '', 'DRH - SEPAG', NULL, NULL),
(291, 9, '1° andar', '', '', 'DRH', NULL, NULL),
(292, 9, '1° andar', '', '', 'SAP', NULL, NULL),
(293, 9, '10° andar', '6253', '', 'SESAT - CHEFIA', NULL, NULL),
(294, 9, '10° andar', '2350', '', 'SESAT', NULL, NULL),
(295, 9, '10° andar', '', '', 'SESSAT - CONSULTÓRIO', NULL, NULL),
(296, 9, '10° andar', '', '', 'SESSAT - SALA DE DOSIMETRO', NULL, NULL),
(297, 9, '10° andar', '', '', 'SESSAT – CHEFIA SUBSTITUTA', NULL, NULL),
(298, 9, '10° andar', '', '', 'SESSAT – RECEPÇÃO', NULL, NULL),
(299, 9, '10° andar', '', '', 'SESSAT – SERVIÇO SOCIAL', NULL, NULL),
(300, 9, '1° andar', '', '', 'SINDICÂNCIA', NULL, NULL),
(301, 9, '1° andar', '', '', 'SRC', NULL, NULL),
(302, 9, '10° andar', '', '', 'STD - SALA DE AULA', NULL, NULL),
(303, 9, '1° andar', '', '', 'STD', NULL, NULL),
(304, 10, '1° andar', '2713', '', 'AMBULATÓRIO - CHEFIA', NULL, NULL),
(305, 10, '1° andar', '2713', '', 'AMBULATÓRIO - DERMATOLOGIA - SALA 114', NULL, NULL),
(306, 10, '1° andar', '', '', 'AMBULATÓRIO - ODONTOLOGIA', NULL, NULL),
(307, 10, '2° andar', '', '', 'AMBULATÓRIO - QUIMIOTERAPIA', NULL, NULL),
(308, 10, '1° andar', '', '', 'AMBULATÓRIO - SALA 101', NULL, NULL),
(309, 10, '1° andar', '', '', 'AMBULATÓRIO - SALA 105', NULL, NULL),
(310, 10, '1° andar', '', '', 'AMBULATÓRIO - SALA 109', NULL, NULL),
(311, 10, '1° andar', '', '', 'AMBULATÓRIO - SALA 115', NULL, NULL),
(312, 10, '1° andar', '', '', 'AMBULATÓRIO - SALA 122', NULL, NULL),
(313, 10, '1° andar', '', '', 'AMBULATÓRIO - SALA 129', NULL, NULL),
(314, 10, '1° andar', '', '', 'AMBULATÓRIO - SALA 131', NULL, NULL),
(315, 10, '1° andar', '', '', 'AMBULATÓRIO - SALA 131', NULL, NULL),
(316, 10, '1° andar', '2713', '', 'AMBULATÓRIO - SALA 132', NULL, NULL),
(317, 10, '1° andar', '', '', 'AMBULATÓRIO - SALA 137', NULL, NULL),
(318, 10, '1° andar', '', '', 'AMBULATÓRIO - SALA 150', NULL, NULL),
(319, 10, '1° andar', '', '', 'AMBULATÓRIO - SALA 151', NULL, NULL),
(320, 10, '1° andar', '', '', 'AMBULATÓRIO - SALA 154', NULL, NULL),
(321, 10, '1° andar', '', '', 'AMBULATÓRIO - SALA 156', NULL, NULL),
(322, 10, '1° andar', '', '', 'AMBULATÓRIO - SALA 220', NULL, NULL),
(323, 10, '2° andar', '', '', 'AMBULATÓRIO - SALA 231', NULL, NULL),
(324, 10, '2° andar', '', '', 'AMBULATÓRIO - SALA 233', NULL, NULL),
(325, 10, '1° andar', '', '', 'AMBULATÓRIO - SALA 235', NULL, NULL),
(326, 10, '2° andar', '', '', 'AMBULATÓRIO - SALA 243', NULL, NULL),
(327, 10, '1° andar', '', '', 'AMBULATÓRIO - SALA 244', NULL, NULL),
(328, 10, '1° andar', '', '', 'AMBULATÓRIO - SALA 246', NULL, NULL),
(329, 10, '2° andar', '', '', 'AMBULATÓRIO - SALA 248', NULL, NULL),
(330, 10, '1° andar', '', '', 'AMBULATÓRIO - SALA 250', NULL, NULL),
(331, 10, '1° andar', '', '', 'AMBULATÓRIO - SERVIÇO SOCIAL', NULL, NULL),
(332, 10, '1° andar', '2350', '', 'CENTRAL DE MARCAÇÃO DE CONSULTAS', NULL, NULL),
(333, 10, '2° andar', '', '', 'CHEFIA DE AMBULATÓRIO', NULL, NULL),
(334, 10, '1° andar', '', '', 'CHEFIA DE AMBULATÓRIO', NULL, NULL),
(335, 10, '1° andar', '', '', 'DSC NIR - MARCAÇÃO DE CONSULTA', NULL, NULL),
(336, 10, '1° andar', '', '', 'SAA - NIR', NULL, NULL),
(337, 10, '1° andar', '', '', 'SAA - RECEPÇÃO', NULL, NULL),
(338, 10, 'subsolo', '2550', '', 'EMERGÊNCIA - CHEFIA', NULL, NULL),
(339, 10, 'subsolo', '2550', '', 'EMERGÊNCIA - CONSULTÓRIO 1', NULL, NULL),
(340, 10, 'subsolo', '2283', '', 'EMERGÊNCIA - SECRETARIA', NULL, NULL),
(341, 10, '2° andar', '2288', '', 'NIR - NúCLEO INTERNO DE REGULAÇÃO', NULL, NULL),
(342, 10, '1° andar', '2241', '', 'SAA', NULL, NULL),
(343, 10, '1° andar', '2859 - 2860', '', 'TRIAGEM', NULL, NULL),
(344, 11, '8° andar', '2859 - 2860', '', 'CAE - AUDITORIO HALLEY PACHECO', NULL, NULL),
(345, 11, '13° andar', '2827', '', 'CAE - BIBLIOTECA SALA DE CURSOS', NULL, NULL),
(346, 11, '13° andar', '2859 - 2860', '', 'CAE - BIBLIOTECA', NULL, NULL),
(347, 11, '12° andar', '2859 - 2860', '', 'CAE - GABINETE', NULL, NULL),
(348, 11, '12° andar', '2859 - 2860', '', 'CAE - RECEPÇÃO', NULL, NULL),
(349, 11, '12° andar', '2861', '', 'CAE - RESIDÊNCIA MULTIPROFISSIONAL', NULL, NULL),
(350, 11, '12° andar', '2860', '', 'CAE - SALA COORDENAÇÃO DA RESIDÊNCIA MULTIPROFISSIONAL', NULL, NULL),
(351, 11, '12° andar', '2859 - 2860', '', 'CAE - SALA DA RESIDENCIA', NULL, NULL),
(352, 11, '12° andar', '2859 - 2860', '', 'CAE - SALA DE CURSOS', NULL, NULL),
(353, 11, '12° andar', '2859 - 2860', '', 'CAE - SALA DO CONCURSO', NULL, NULL),
(354, 11, '12° andar', '2859 - 2860', '', 'CAE - SALA DO COORDENADOR', NULL, NULL),
(355, 11, '12° andar', '2859 - 2860', '', 'CAE - SECRETARIA - RESIDÊNCIA MÉDICA', NULL, NULL),
(356, 11, '12° andar', '2860', '', 'CAE - SECRETARIA', NULL, NULL),
(357, 11, '12° andar', '2859 - 2860', '', 'SALA DE AULA', NULL, NULL),
(358, 12, '11° andar', '', '', 'FM - FACULDADE DE MEDICINA - PÓS', NULL, NULL),
(359, 13, '3° andar', '', '', 'IDT - CIT CENTRO DE INFORMAÇÕES', NULL, NULL),
(360, 13, '1° andar', '', '', 'IDT - DIREÇÃO GERAL', NULL, NULL),
(361, 13, '1° andar', '', '', 'IDT - GABINETE', NULL, NULL),
(362, 13, '6° andar', '', '', 'IDT - LABORATÓRIO DE PESQUISA CLÍNICA', NULL, NULL),
(363, 13, '3° andar', '', '', 'IDT - NÚCLEO DE ESTUDOS', NULL, NULL),
(364, 13, '6° andar', '', '', 'IDT - PCTH - PROGRAMA DE CONTROLE', NULL, NULL),
(365, 13, '3° andar', '', '', 'IDT - PNEUMOLOGIA', NULL, NULL),
(366, 13, '6° andar', '', '', 'IDT - SALA DE PESQUISA CLINICA', NULL, NULL),
(367, 13, '10° andar', '', '', 'IDT - SERVIÇO DE CIRURGIA TORÁXICA', NULL, NULL),
(368, 13, '3° andar', '', '', 'IDT - SERVIÇO DE PNEUMOLOGIA', NULL, NULL),
(369, 13, '3° andar', '', '', 'IDT - SETOR DE COMPRAS', NULL, NULL),
(370, 13, '10° andar', '', '', 'IDT - TELEMEDICINA', NULL, NULL),
(371, 13, '6° andar', '', '', 'IDT', NULL, NULL),
(372, 13, '6° andar', '2402', '', 'PCTH - PROGRAMA DE CONTROLE EM TUBERCULOSE', NULL, NULL),
(373, NULL, 'subsolo', '', '', 'SINTUFRJ', NULL, NULL),
(374, 4, 'subsolo', '', '', 'SERVIÇO DE PLANOS E PROJETOS - SECRETARIA', NULL, NULL),
(375, 5, '12° andar', '2663', '', 'CENTRO CIRÚRGICO - ANESTESIA', NULL, NULL),
(376, 8, '3° andar', '', '', 'SME - CARDIOLOGIA - SALA DO HOLTER', NULL, NULL),
(377, 8, '3° andar', '', '', 'SME - CARDIOLOGIA - SALA DE ECOCARDIOGRAMA', NULL, NULL),
(378, 8, '3° andar', '', '', 'SME - NEUROLOGIA - SALA DE ELETROENCEFALOGRAMA', NULL, NULL),
(379, 8, '3° andar', '', '', 'RADIOLOGIA - ULTRASSOM - RECEPÇÃO', NULL, NULL),
(380, 9, '1° andar', '2589', '', 'DRH - SRC', NULL, NULL),
(381, 8, '13° andar', '', '', 'CTI - SALA 2', NULL, NULL),
(382, 8, '13° andar', '', '', 'CTI - SALA 3', NULL, NULL),
(383, 8, '13° andar', '', '', 'CTI - ILHA', NULL, NULL),
(384, 14, NULL, NULL, NULL, 'Setor de Farmácia Hospitalar 1', 'SFH1', NULL),
(385, 14, NULL, NULL, NULL, 'Unidade de Farmácia Clínica e Dispensação Farmacêutica 1', 'UFCD1', NULL),
(386, 14, NULL, NULL, NULL, 'Setor Multiprofissional 1', 'SMULTI1', NULL),
(387, 14, NULL, NULL, NULL, 'Unidade de Nutrição Clínica 1', 'UNUT1', NULL),
(388, 14, NULL, NULL, NULL, 'Unidade de Saúde Mental', 'USME', NULL),
(389, 14, NULL, NULL, NULL, 'Setor de Apoio à Gestão de Unidades', 'SAGUNI', NULL),
(390, 14, NULL, NULL, NULL, 'Unidade de Terapia Intensiva', 'UTI', NULL),
(391, 14, NULL, NULL, NULL, 'Unidade de Sistema Cardiovascular', 'USCV', NULL),
(392, 14, NULL, NULL, NULL, 'Unidade de Urgência e Emergência 1', 'UUE2', NULL),
(393, 14, NULL, NULL, NULL, 'Unidade de Cirurgia e Anestesia', 'UCAN', NULL),
(394, 14, NULL, NULL, NULL, 'Unidade de Clínica Médica', 'UCM', NULL),
(395, 14, NULL, NULL, NULL, 'Unidade do Sistema Respiratório', 'URES', NULL),
(396, 14, NULL, NULL, NULL, 'Unidade de Endocrinologia e Metabologia 1', 'UEM1', NULL),
(397, 14, NULL, NULL, NULL, 'Unidade do Sistema Músculo-Esquelético', 'UME', NULL),
(398, 14, NULL, NULL, NULL, 'Unidade de Oncologia', 'UONC', NULL),
(399, 14, NULL, NULL, NULL, 'Unidade de Doenças Infecciosas e Parasitárias', 'UDINFP', NULL),
(400, 14, NULL, NULL, NULL, 'Unidade de Clínica Cirúrgica 1', 'UCIR1', NULL),
(401, 14, NULL, NULL, NULL, 'Unidade de Hematologia e Hemoterapia', 'UHH', NULL),
(402, 14, NULL, NULL, NULL, 'Unidade do Sistema Digestivo 1', 'USD1', NULL),
(403, 14, NULL, NULL, NULL, 'Unidade do Sistema Nervoso', 'USN', NULL),
(404, 14, NULL, NULL, NULL, 'Unidade de Transplantes', 'UTX', NULL),
(405, 14, NULL, NULL, NULL, 'Unidade de Nefrologia', 'UNEF', NULL),
(406, 14, NULL, NULL, NULL, 'Unidade de Cabeça e Pescoço', 'UCAP', NULL),
(407, 14, NULL, NULL, NULL, 'Unidade de Bloco Cirúrgico e Processamento de Material Esterilizado 1', 'UBCME1', NULL),
(408, 14, NULL, NULL, NULL, 'Unidade de Ambulatório 1', 'UAMB1', NULL),
(409, 15, NULL, NULL, NULL, 'Unidade de Apoio à Gestão de Enfermagem 1', 'UAGENF1', NULL),
(410, 16, NULL, NULL, NULL, 'Unidade de Apoio à Gestão de Enfermagem 2', 'UAGENF2', NULL),
(411, 17, NULL, NULL, NULL, 'Unidade de Apoio à Gestão de Enfermagem 3', 'UAGENF3', NULL),
(412, 18, NULL, NULL, NULL, 'Setor de Apoio Diagnóstico e Terapêutico 1', 'STDT1', NULL),
(413, 18, NULL, NULL, NULL, 'Unidade de Laboratório de Análises Clínicas 1', 'ULAC1', NULL),
(414, 18, NULL, NULL, NULL, 'Unidade de Diagnóstico por Imagem', 'UDI', NULL),
(415, 18, NULL, NULL, NULL, 'Unidade de Anatomia Patológica 1', 'UAPAT1', NULL),
(416, 19, NULL, NULL, NULL, 'Setor de Farmácia Hospitalar 2', 'SFH2', NULL),
(417, 19, NULL, NULL, NULL, 'Unidade de Farmácia Clínica e Dispensação Farmacêutica 2', 'UFCD2', NULL),
(418, 19, NULL, NULL, NULL, 'Setor Multiprofissional 2', 'SMULTI2', NULL),
(419, 19, NULL, NULL, NULL, 'Unidade de Nutrição Clínica 2', 'UNUT2', NULL),
(420, 19, NULL, NULL, NULL, 'Setor de Apoio Diagnóstico e Terapêutico 2', 'STDT2', NULL),
(421, 19, NULL, NULL, NULL, 'Unidade de Diagnóstico por Imagem e Diagnósticos Especializados 1', 'UDIDE1', NULL),
(422, 19, NULL, NULL, NULL, 'Unidade de Urgência e Emergência 2', 'UUE2', NULL),
(423, 19, NULL, NULL, NULL, 'Unidade de Cuidados Paliativos', 'UCP', NULL),
(424, 19, NULL, NULL, NULL, 'Unidade de Ambulatório 2', 'UAMB2', NULL),
(425, 19, NULL, NULL, NULL, 'Unidade de Terapia Intensiva Pediátrica e Neonatal', 'UTIPN', NULL),
(426, 19, NULL, NULL, NULL, 'Unidade de Neurologia Nutrologia e Genética', 'UNNG', NULL),
(427, 19, NULL, NULL, NULL, 'Unidade do Sistema Cardiorrespiratório', 'USCR', NULL),
(428, 19, NULL, NULL, NULL, 'Unidade de Hematologia Hemoterapia e Oncologia', 'UHHO', NULL),
(429, 19, NULL, NULL, NULL, 'Unidade da Criança e do Adolescente 1', 'UCA1', NULL),
(430, 19, NULL, NULL, NULL, 'Unidade de Alergo - Imunologia Dermatologia Infectologia e Reumatologia', 'UAIDIR', NULL),
(431, 19, NULL, NULL, NULL, 'Unidade do Sistema Digestivo 2', 'USD2', NULL),
(432, 19, NULL, NULL, NULL, 'Unidade de Clínica Cirúrgica 2', 'UCIR2', NULL),
(433, 19, NULL, NULL, NULL, 'Unidade de Endocrinologia e Metabologia 2', 'UEM2', NULL),
(434, 19, NULL, NULL, NULL, 'Unidade de Sistema Urinário', 'USUR', NULL),
(435, 19, NULL, NULL, NULL, 'Unidade de Bloco Cirúrgico e Processamento de Material Esterilizado 2', 'UBCME2', NULL),
(436, 20, NULL, NULL, NULL, 'Setor de Farmácia Hospitalar 3', 'SFH3', NULL),
(437, 20, NULL, NULL, NULL, 'Unidade de Farmácia Clínica e Dispensação Farmacêutica 3', 'UFCD3', NULL),
(438, 20, NULL, NULL, NULL, 'Setor Multiprofissional 3', 'SMULTI3', NULL),
(439, 20, NULL, NULL, NULL, 'Unidade de Nutrição Clínica 3', 'UNUT3', NULL),
(440, 20, NULL, NULL, NULL, 'Unidade de Atenção Psicossocial', 'UAPSI', NULL),
(441, 20, NULL, NULL, NULL, 'Setor de Apoio Diagnóstico e Terapêutico 3', 'STDT3', NULL),
(442, 20, NULL, NULL, NULL, 'Unidade de Diagnóstico por Imagem e Diagnósticos Especializados 2', 'UDIDE2', NULL),
(443, 20, NULL, NULL, NULL, 'Unidade de Anatomia Patológica 2', 'UAPAT2', NULL),
(444, 20, NULL, NULL, NULL, 'Unidade de Laboratório de Análises Clínicas 2', 'ULAC2', NULL),
(445, 20, NULL, NULL, NULL, 'Unidade de Urgência e Emergência 3', 'UUE3', NULL),
(446, 20, NULL, NULL, NULL, 'Unidade de Saúde da Mulher', 'UMUL', NULL),
(447, 20, NULL, NULL, NULL, 'Unidade de Terapia Intensiva Neonatal', 'UTIN', NULL),
(448, 20, NULL, NULL, NULL, 'Unidade de Saúde da Criança e do Adolescente 2', 'UCA2', NULL),
(449, 20, NULL, NULL, NULL, 'Unidade de Cuidado Neonatal', 'UNEO', NULL),
(450, 20, NULL, NULL, NULL, 'Unidade de Obstetríca', 'UOBT', NULL),
(451, 20, NULL, NULL, NULL, 'Unidade de Especialidades Clínicas', 'UEC', NULL),
(452, 20, NULL, NULL, NULL, 'Unidade de Ambulatório 3', 'UAMB3', NULL),
(453, 20, NULL, NULL, NULL, 'Unidade de Hemoterapia', 'UHO', NULL),
(454, 20, NULL, NULL, NULL, 'Unidade de Centro Obstétrico e Processamento Material Esterilizado', 'UCOPM', NULL),
(455, 20, NULL, NULL, NULL, 'Unidade de Medicina Fetal', 'UMF', NULL),
(456, 21, NULL, NULL, NULL, 'Setor de Administração', 'SAD', 'SAD/DAF/SUPAD/SUPEG/COLEX/CH-UFRJ'),
(457, 21, NULL, NULL, NULL, 'Unidade de Licitações', 'UL', 'UL/SAD/DAF/SUPAD/SUPEG/COLEX/CH-UFRJ'),
(458, 21, NULL, NULL, NULL, 'Unidade de Contratos', 'UCONT', 'UCONT/SAD/DAF/SUPAD/SUPEG/COLEX/CH-UFRJ'),
(459, 21, NULL, NULL, NULL, 'Unidade de Fiscalização Administrativa de Contratos', 'UFAC', 'UFAC/SAD/DAF/SUPAD/SUPEG/COLEX/CH-UFRJ'),
(460, 21, NULL, NULL, NULL, 'Unidade de Planejamento de Compras', 'UPC', 'UPC/SAD/DAF/SUPAD/SUPEG/COLEX/CH-UFRJ'),
(461, 21, NULL, NULL, NULL, 'Unidade de Patrimônio 1', 'UPAT1', 'UPAT1/SAD/DAF/SUPAD/SUPEG/COLEX/CH-UFRJ'),
(462, 21, NULL, NULL, NULL, 'Unidade de Patrimônio 2', 'UPAT2', 'UPAT2/SAD/DAF/SUPAD/SUPEG/COLEX/CH-UFRJ'),
(463, 21, NULL, NULL, NULL, 'Unidade de Patrimônio 3', 'UPAT3', 'UPAT3/SAD/DAF/SUPAD/SUPEG/COLEX/CH-UFRJ'),
(464, 21, NULL, NULL, NULL, 'Setor de Contabilidade', 'SCONT', 'SCONT/DAF/SUPAD/SUPEG/COLEX/CH-UFRJ'),
(465, 21, NULL, NULL, NULL, 'Setor de Gestão Orçamentária e Financeira', 'SGOF', 'SGOF/DAF/SUPAD/SUPEG/COLEX/CH-UFRJ'),
(466, 21, NULL, NULL, NULL, 'Unidade de Execução Orçamentária e Financeira', 'UEOF', 'UEOF/SGOF/DAF/SUPAD/SUPEG/COLEX/CH-UFRJ'),
(467, 21, NULL, NULL, NULL, 'Unidade de Planejamento e Gestão Orçamentária', 'UPGO', 'UPGO/SGOF/DAF/SUPAD/SUPEG/COLEX/CH-UFRJ'),
(468, 22, NULL, NULL, NULL, 'Setor de Abastecimento Farmacêutico e Suprimentos', 'SAFS', 'SAFS/DLIH/SUPAD/SUPEG/COLEX/CH-UFRJ'),
(469, 22, NULL, NULL, NULL, 'Unidade de Planejamento e Dimensionamento de Estoques', 'UPDE ', 'UPDE/SAFS/DLIH/SUPAD/SUPEG/COLEX/CH-UFRJ'),
(470, 22, NULL, NULL, NULL, 'Unidade de Almoxarifado e Controle de Estoques 1', 'UACE1 ', 'UACE1/SAFS/DLIH/SUPAD/SUPEG/COLEX/CH-UFRJ'),
(471, 22, NULL, NULL, NULL, 'Unidade de Almoxarifado e Controle de Estoques 2', 'UACE2', 'UACE2/SAFS/DLIH/SUPAD/SUPEG/COLEX/CH-UFRJ'),
(472, 22, NULL, NULL, NULL, 'Unidade de Almoxarifado e Controle de Estoques 3', 'UACE3', 'UACE3/SAFS/DLIH/SUPAD/SUPEG/COLEX/CH-UFRJ'),
(473, 22, NULL, NULL, NULL, 'Unidade de Suporte Operacional 1', 'USOP1', 'USOP1/DLIH/SUPAD/SUPEG/COLEX/CH-UFRJ'),
(474, 22, NULL, NULL, NULL, 'Unidade de Suporte Operacional 2', 'USOP2', 'USOP2/DLIH/SUPAD/SUPEG/COLEX/CH-UFRJ'),
(475, 22, NULL, NULL, NULL, 'Unidade de Suporte Operacional 3', 'USOP3', 'USOP3/DLIH/SUPAD/SUPEG/COLEX/CH-UFRJ'),
(476, 22, NULL, NULL, NULL, 'Setor de Engenharia Clínica', 'STEC', 'STEC/DLIH/SUPAD/SUPEG/COLEX/CH-UFRJ'),
(477, 22, NULL, NULL, NULL, 'Setor de Infraestrutura Física', 'SIF', 'SIF/DLIH/SUPAD/SUPEG/COLEX/CH-UFRJ'),
(478, 22, NULL, NULL, NULL, 'Unidade de Manutenção Predial', 'UMP', 'UMP/SIF/DLIH/SUPAD/SUPEG/COLEX/CH-UFRJ'),
(479, 22, NULL, NULL, NULL, 'Unidade de Projetos e Obras', 'UPO', 'UPO/SIF/DLIH/SUPAD/SUPEG/COLEX/CH-UFRJ'),
(480, 22, NULL, NULL, NULL, 'Setor de Hotelaria Hospitalar', 'STHH', 'STHH/DLIH/SUPAD/SUPEG/COLEX/CH-UFRJ'),
(481, 22, NULL, NULL, NULL, 'Unidade de Hotelaria Hospitalar 1', 'UHH1', 'UHH1/STHH/DLIH/SUPAD/SUPEG/COLEX/CH-UFRJ'),
(482, 22, NULL, NULL, NULL, 'Unidade de Hotelaria Hospitalar 2', 'UHH2', 'UHH2/STHH/DLIH/SUPAD/SUPEG/COLEX/CH-UFRJ'),
(483, 22, NULL, NULL, NULL, 'Unidade de Hotelaria Hospitalar 3', 'UHH3', 'UHH3/STHH/DLIH/SUPAD/SUPEG/COLEX/CH-UFRJ'),
(484, 23, NULL, NULL, NULL, 'Setor de Desenvolvimento de Pessoal', 'SDP', 'SDP/DIVGP/SUPAD/SUPEG/COLEX/CH-UFRJ'),
(485, 23, NULL, NULL, NULL, 'Unidade de Administração de Pessoal 1', 'UAP1', 'UAP1/DIVGP/SUPAD/SUPEG/COLEX/CH-UFRJ'),
(486, 23, NULL, NULL, NULL, 'Unidade de Administração de Pessoal 2', 'UAP2', 'UAP2/DIVGP/SUPAD/SUPEG/COLEX/CH-UFRJ'),
(487, 23, NULL, NULL, NULL, 'Unidade de Administração de Pessoal 3', 'UAP3', 'UAP3/DIVGP/SUPAD/SUPEG/COLEX/CH-UFRJ'),
(488, 23, NULL, NULL, NULL, 'Unidade de Saúde Ocupacional e Segurança do Trabalho 1', 'USOST1', 'USOST1/DIVGP/SUPAD/SUPEG/COLEX/CH-UFRJ'),
(489, 23, NULL, NULL, NULL, 'Unidade de Saúde Ocupacional e Segurança do Trabalho 2', 'USOST2', 'USOST2/DIVGP/SUPAD/SUPEG/COLEX/CH-UFRJ'),
(490, 23, NULL, NULL, NULL, 'Unidade de Saúde Ocupacional e Segurança do Trabalho 3', 'USOST3', 'USOST3/DIVGP/SUPAD/SUPEG/COLEX/CH-UFRJ'),
(491, 24, NULL, NULL, NULL, 'Setor de Gestão do Ensino', 'SEGE', 'SEGE/SUPEP/SUPEG/COLEX/CH-UFRJ'),
(492, 24, NULL, NULL, NULL, 'Unidade de Gestão do Ensino 1', 'UGE1', 'UGE1/SEGE/SUPEP/SUPEG/COLEX/CH-UFRJ'),
(493, 24, NULL, NULL, NULL, 'Unidade de Gestão do Ensino 2', 'UGE2', 'UGE2/SEGE/SUPEP/SUPEG/COLEX/CH-UFRJ'),
(494, 24, NULL, NULL, NULL, 'Unidade de Gestão do Ensino 3', 'UGE3', 'UGE3/SEGE/SUPEP/SUPEG/COLEX/CH-UFRJ'),
(495, 24, NULL, NULL, NULL, 'Setor de Gestão da Pesquisa e da Inovação Tecnológica em Saúde', 'SGPITS', 'SGPITS/SUPEP/SUPEG/COLEX/CH-UFRJ'),
(496, 24, NULL, NULL, NULL, 'Unidade de Gestão da Pesquisa e da Inovação Tecnológica em Saúde 1', 'UGPITS1', 'UGPITS1/SGPITS/SUPEP/SUPEG/COLEX/CH-UFRJ'),
(497, 24, NULL, NULL, NULL, 'Unidade de Gestão da Pesquisa e da Inovação Tecnológica em Saúde 2', 'UGPITS2', 'UGPITS2/SGPITS/SUPEP/SUPEG/COLEX/CH-UFRJ'),
(498, 24, NULL, NULL, NULL, 'Unidade de Gestão da Pesquisa e da Inovação Tecnológica em Saúde 3', 'UGPITS3', 'UGPITS3/SGPITS/SUPEP/SUPEG/COLEX/CH-UFRJ'),
(499, 25, NULL, NULL, NULL, 'Gerência de Atenção à Saúde 1', 'GAS1', 'GAS1/SUPEX1/SUPEG/COLEX/CH-UFRJ'),
(500, 26, NULL, NULL, NULL, 'Gerência de Atenção à Saúde 2', 'GAS2', 'GAS2/SUPEX2/SUPEG/COLEX/CH-UFRJ'),
(501, 27, NULL, NULL, NULL, 'Gerência de Atenção à Saúde 3', 'GAS3', 'GAS3/SUPEX3/SUPEG/COLEX/CH-UFRJ');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

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
(8, 'sim', 'não', 'sim', 'sim', 'sim', 'sim', 'sim');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipoProcessadores`
--

CREATE TABLE `tipoProcessadores` (
  `idTipoProcessador` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `statusTipo` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Extraindo dados da tabela `tipoProcessadores`
--

INSERT INTO `tipoProcessadores` (`idTipoProcessador`, `descricao`, `statusTipo`) VALUES
(1, 'AMD 64 X2 DUAL CORE 4000+ - 2.11GHz', 'ativo'),
(2, 'AMD 9850 QUAD-CORE - 2.50GHz', 'ativo'),
(3, 'AMD A10 - 7860K RADEON R7 - 3.60GHz', 'ativo'),
(4, 'AMD A10 7860K - 3.60GHz', 'ativo'),
(5, 'AMD A4 - 3400 APU WITH RADEON HD GRAPHICS ', 'ativo'),
(6, 'AMD A4 - 4000 APU WITH RADEON HD GRAPHICS ', 'ativo'),
(7, 'AMD ATHLON - 1.0GHz', 'ativo'),
(8, 'AMD ATHLON - 1.49GHz', 'ativo'),
(9, 'AMD ATHLON - 1.4GHz', 'ativo'),
(10, 'AMD ATHLON - 1.6GHz', 'ativo'),
(11, 'AMD ATHLON - 2.0GHz', 'ativo'),
(12, 'AMD ATHLON - 2800+ - 1800', 'ativo'),
(13, 'AMD ATHLON - 3000+ - 1800', 'ativo'),
(14, 'AMD ATHLON - 3000+ - 2000', 'ativo'),
(15, 'AMD ATHLON - 3200+ - 2000', 'ativo'),
(16, 'AMD ATHLON - 3200+ - 2200', 'ativo'),
(17, 'AMD ATHLON - 3400+ - 2200', 'ativo'),
(18, 'AMD ATHLON - 3400+ - 2400', 'ativo'),
(19, 'AMD ATHLON - 3500+ - 2200', 'ativo'),
(20, 'AMD ATHLON - 3700+ - 2200', 'ativo'),
(21, 'AMD ATHLON - 3700+ - 2400', 'ativo'),
(22, 'AMD ATHLON - 3800+ - 2400', 'ativo'),
(23, 'AMD ATHLON - 4000+ - 2400', 'ativo'),
(24, 'AMD ATHLON - 4000+ - 2600', 'ativo'),
(25, 'AMD ATHLON 2200', 'ativo'),
(26, 'AMD ATHLON 64 - 2.8GHz', 'ativo'),
(27, 'AMD ATHLON 64 - 3.0GHz', 'ativo'),
(28, 'AMD ATHLON 64 - 3.2GHz', 'ativo'),
(29, 'AMD ATHLON 64 - 3.5GHz', 'ativo'),
(30, 'AMD ATHLON 64 - 4.2GHz', 'ativo'),
(31, 'AMD ATHLON 64 5200', 'ativo'),
(32, 'AMD ATHLON 64 X2 5200', 'ativo'),
(33, 'AMD ATHLON 64 X2 6000+ - 3.0GHz', 'ativo'),
(34, 'AMD ATHLON 64 X2 DUAL - 2.11GHz', 'ativo'),
(35, 'AMD ATHLON 64 X2 DUAL - 2.31GHz', 'ativo'),
(36, 'AMD ATHLON 64 X2 DUAL - 5.200GHz', 'ativo'),
(37, 'AMD ATHLON 64 X2 DUAL 2.11GHz', 'ativo'),
(38, 'AMD ATHLON 64 X2 DUAL 5200', 'ativo'),
(39, 'AMD ATHLON 64 X2 DUAL CORE 4000+', 'ativo'),
(40, 'AMD ATHLON 64 X2 DUAL CORE 4200+', 'ativo'),
(41, 'AMD ATHLON 64 X2 DUAL CORE 4400+', 'ativo'),
(42, 'AMD ATHLON 64 X2 DUAL CORE 5000+', 'ativo'),
(43, 'AMD ATHLON 64 X2 DUAL CORE 5200+', 'ativo'),
(44, 'AMD ATHLON 64 X2 DUAL CORE 6000+ - 3.0GHz', 'ativo'),
(45, 'AMD ATHLON 900 MHz', 'ativo'),
(46, 'AMD ATHLON DUAL CORE 4050 - 2.11GHz', 'ativo'),
(47, 'AMD ATHLON FX-51 - 2200', 'ativo'),
(48, 'AMD ATHLON FX-53 - 2400', 'ativo'),
(49, 'AMD ATHLON FX-55 - 2600', 'ativo'),
(50, 'AMD ATHLON FX-57 - 2800', 'ativo'),
(51, 'AMD ATHLON FX-60 - 2600', 'ativo'),
(52, 'AMD ATHLON FX-62 - 2800', 'ativo'),
(53, 'AMD ATHLON FX-70 - 2600', 'ativo'),
(54, 'AMD ATHLON FX-72 - 2800', 'ativo'),
(55, 'AMD ATHLON FX-74 - 3000', 'ativo'),
(56, 'AMD ATHLON II X2 - 215 - 2.7GHz', 'ativo'),
(57, 'AMD ATHLON II X2 - 220 - 2.8GHz', 'ativo'),
(58, 'AMD ATHLON II X2 - 235E - 2.7GHz', 'ativo'),
(59, 'AMD ATHLON II X2 - 240 - 2.8GHz', 'ativo'),
(60, 'AMD ATHLON II X2 - 240E - 2.8GHz', 'ativo'),
(61, 'AMD ATHLON II X2 - 245 C3 - 2.9GHz', 'ativo'),
(62, 'AMD ATHLON II X2 - 245E - 2.9GHz', 'ativo'),
(63, 'AMD ATHLON II X2 - 250 C3 - 3.0GHz', 'ativo'),
(64, 'AMD ATHLON II X2 - 250E - 3.0GHz', 'ativo'),
(65, 'AMD ATHLON II X2 - 255 C3 - 3.1GHz', 'ativo'),
(66, 'AMD ATHLON II X2 - 260 - 3.2GHz', 'ativo'),
(67, 'AMD ATHLON II X2 - 260U - 1.6GHz', 'ativo'),
(68, 'AMD ATHLON II X2 - 260U - 1.8GHz', 'ativo'),
(69, 'AMD ATHLON II X2 - 3.40GHz', 'ativo'),
(70, 'AMD ATHLON II X2 - B22 - 2.8GHz', 'ativo'),
(71, 'AMD ATHLON II X2 - B24 - 3.0GHz', 'ativo'),
(72, 'AMD ATHLON II X2 - 250 - 3.0GHz', 'ativo'),
(73, 'AMD ATHLON II X2 - 270', 'ativo'),
(74, 'AMD ATHLON II X2 - 3.40GHz', 'ativo'),
(75, 'AMD ATHLON II X2 - B24', 'ativo'),
(76, 'AMD ATHLON II X2 - B28', 'ativo'),
(77, 'AMD ATHLON II X3 - 400E - 2.2GHz', 'ativo'),
(78, 'AMD ATHLON II X3 - 405E C3 - 2.3GHz', 'ativo'),
(79, 'AMD ATHLON II X3 - 415E - 2.5GHz', 'ativo'),
(80, 'AMD ATHLON II X3 - 425 - 2.7GHz', 'ativo'),
(81, 'AMD ATHLON II X3 - 435 C3 - 2.9GHz', 'ativo'),
(82, 'AMD ATHLON II X3 - 440 C3 - 3.0GHz', 'ativo'),
(83, 'AMD ATHLON II X3 - 445 - 3.1GHz', 'ativo'),
(84, 'AMD ATHLON II X3 - 450 - 3.2GHz', 'ativo'),
(85, 'AMD ATHLON II X4 - 600E - 2.2GHz', 'ativo'),
(86, 'AMD ATHLON II X4 - 605E C3 - 2.3GHz', 'ativo'),
(87, 'AMD ATHLON II X4 - 620 - 2.6GHz', 'ativo'),
(88, 'AMD ATHLON II X4 - 630 C3 - 2.8GHz', 'ativo'),
(89, 'AMD ATHLON II X4 - 635 C3 - 2.9GHz', 'ativo'),
(90, 'AMD ATHLON LE - 1600 - 2200', 'ativo'),
(91, 'AMD ATHLON LE - 1620 - 2400', 'ativo'),
(92, 'AMD ATHLON LE - 1640 - 2700', 'ativo'),
(93, 'AMD ATHLON LE - 1660 - 2800', 'ativo'),
(94, 'AMD ATHLON X2 4400 - 2.3GHz', 'ativo'),
(95, 'AMD ATHLON X2 DUAL CORE 3250 - 1.50GHz', 'ativo'),
(96, 'AMD ATHLON X2 DUAL CORE 3250E ', 'ativo'),
(97, 'AMD ATHLON X2 DUAL-CORE - 3600+ - 1900', 'ativo'),
(98, 'AMD ATHLON X2 DUAL-CORE - 3800+ - 2000', 'ativo'),
(99, 'AMD ATHLON X2 DUAL-CORE - 4000+ - 2000', 'ativo'),
(100, 'AMD ATHLON X2 DUAL-CORE - 4000+ - 2100', 'ativo'),
(101, 'AMD ATHLON X2 DUAL-CORE - 4050E - 2100', 'ativo'),
(102, 'AMD ATHLON X2 DUAL-CORE - 4200+ - 2200', 'ativo'),
(103, 'AMD ATHLON X2 DUAL-CORE - 4400+ - 2200', 'ativo'),
(104, 'AMD ATHLON X2 DUAL-CORE - 4400+ - 2300', 'ativo'),
(105, 'AMD ATHLON X2 DUAL-CORE - 4450E - 2300', 'ativo'),
(106, 'AMD ATHLON X2 DUAL-CORE - 4600+ - 2400', 'ativo'),
(107, 'AMD ATHLON X2 DUAL-CORE - 4800+ - 2400', 'ativo'),
(108, 'AMD ATHLON X2 DUAL-CORE - 4800+ - 2500', 'ativo'),
(109, 'AMD ATHLON X2 DUAL-CORE - 4850E - 2500', 'ativo'),
(110, 'AMD ATHLON X2 DUAL-CORE - 5000+ - 2600', 'ativo'),
(111, 'AMD ATHLON X2 DUAL-CORE - 5200+ - 2600', 'ativo'),
(112, 'AMD ATHLON X2 DUAL-CORE - 5200+ - 2700', 'ativo'),
(113, 'AMD ATHLON X2 DUAL-CORE - 5400+ - 2800', 'ativo'),
(114, 'AMD ATHLON X2 DUAL-CORE - 5600+ - 2800', 'ativo'),
(115, 'AMD ATHLON X2 DUAL-CORE - 5600+ - 2900', 'ativo'),
(116, 'AMD ATHLON X2 DUAL-CORE - 6000+ - 3100', 'ativo'),
(117, 'AMD ATHLON X2 DUAL-CORE - 6400+ - 3200', 'ativo'),
(118, 'AMD ATHLON X2 DUAL-CORE - BE - 2300 - 1900', 'ativo'),
(119, 'AMD ATHLON X2 DUAL-CORE - BE - 2350 - 2100', 'ativo'),
(120, 'AMD ATHLON X2 DUAL-CORE - BE - 2400 - 2300', 'ativo'),
(121, 'AMD ATHLON XP - 1.0GHz', 'ativo'),
(122, 'AMD ATHLON XP - 1.2GHz', 'ativo'),
(123, 'AMD ATHLON XP - 1.7GHz', 'ativo'),
(124, 'AMD ATHLON XP - 1.8GHz', 'ativo'),
(125, 'AMD ATHLON XP - 2.0GHz', 'ativo'),
(126, 'AMD ATHLON XP - 2.2GHz', 'ativo'),
(127, 'AMD ATHLON XP - 2.4GHz', 'ativo'),
(128, 'AMD ATHLON XP - 2.6GHz', 'ativo'),
(129, 'AMD ATHLON XP - 2.8GHz', 'ativo'),
(130, 'AMD ATHLON XP 1500 1.01GHz', 'ativo'),
(131, 'AMD ATLHON 1.4GHz', 'ativo'),
(132, 'AMD ATLHON 1.6GHz', 'ativo'),
(133, 'AMD ATLHON 2.0GHz', 'ativo'),
(134, 'AMD ATLHON 64 3.5GHz', 'ativo'),
(135, 'AMD ATLHON 64 BITS 3.2GHz', 'ativo'),
(136, 'AMD BUSINESS CLASS ATHLON - 1640B - 2700', 'ativo'),
(137, 'AMD BUSINESS CLASS ATHLON - X2 DUAL-CORE - 4450B - 2300', 'ativo'),
(138, 'AMD BUSINESS CLASS ATHLON - X2 DUAL-CORE - 4850B - 2500', 'ativo'),
(139, 'AMD BUSINESS CLASS ATHLON - X2 DUAL-CORE - 5000B - 2600', 'ativo'),
(140, 'AMD BUSINESS CLASS ATHLON - X2 DUAL-CORE - 5200B - 2700', 'ativo'),
(141, 'AMD BUSINESS CLASS ATHLON - X2 DUAL-CORE - 5400B - 2800', 'ativo'),
(142, 'AMD BUSINESS CLASS ATHLON - X2 DUAL-CORE - 5600B - 2900', 'ativo'),
(143, 'AMD BUSINESS CLASS PHENOM -  X3 - TRIPLE - CORE - 8600B - 2300', 'ativo'),
(144, 'AMD BUSINESS CLASS PHENOM - X3 - TRIPLE - CORE - 8750B - 2400', 'ativo'),
(145, 'AMD BUSINESS CLASS PHENOM - X4 - QUAD-CORE - 9600B - 2300', 'ativo'),
(146, 'AMD BUSINESS CLASS PHENOM - X4 - QUAD-CORE - 9750B - 2400', 'ativo'),
(147, 'AMD C - 50 - 1.33GHz', 'ativo'),
(148, 'AMD C-70 APU WITH RADEON HD GRAPHICS ', 'ativo'),
(149, 'AMD DUAL CORE 5200', 'ativo'),
(150, 'AMD DUROM - 1.150GHz', 'ativo'),
(151, 'AMD DUROM - 1.1GHz', 'ativo'),
(152, 'AMD DUROM - 1.2GHz', 'ativo'),
(153, 'AMD DUROM - 1.6GHz', 'ativo'),
(154, 'AMD DUROM - 800MHz', 'ativo'),
(155, 'AMD DUROM - 850MHz', 'ativo'),
(156, 'AMD DUROM - 950MHz', 'ativo'),
(157, 'AMD DUROM - 995MHz', 'ativo'),
(158, 'AMD DUROM - 1.3GHz', 'ativo'),
(159, 'AMD E - 350 1.60GHz', 'ativo'),
(160, 'AMD FX - 6300 SIX - CORE', 'ativo'),
(161, 'AMD FX - 8300 EIGHT-CORE', 'ativo'),
(162, 'AMD FX - 8350 EIGHT-CORE', 'ativo'),
(163, 'AMD OPTERON DE SEGUNDA GERACAO - 1210 - 1800', 'ativo'),
(164, 'AMD OPTERON DE SEGUNDA GERACAO - 1210HE - 1800', 'ativo'),
(165, 'AMD OPTERON DE SEGUNDA GERACAO - 1212 - 2000', 'ativo'),
(166, 'AMD OPTERON DE SEGUNDA GERACAO - 1212HE - 2000', 'ativo'),
(167, 'AMD OPTERON DE SEGUNDA GERACAO - 1214 - 2200', 'ativo'),
(168, 'AMD OPTERON DE SEGUNDA GERACAO - 1214HE - 2200', 'ativo'),
(169, 'AMD OPTERON DE SEGUNDA GERACAO - 1216 - 2400', 'ativo'),
(170, 'AMD OPTERON DE SEGUNDA GERACAO - 1216HE - 2400', 'ativo'),
(171, 'AMD OPTERON DE SEGUNDA GERACAO - 1218 - 2600', 'ativo'),
(172, 'AMD OPTERON DE SEGUNDA GERACAO - 1218HE - 2600', 'ativo'),
(173, 'AMD OPTERON DE SEGUNDA GERACAO - 1220 - 2800', 'ativo'),
(174, 'AMD OPTERON DE SEGUNDA GERACAO - 1220SE - 2800', 'ativo'),
(175, 'AMD OPTERON DE SEGUNDA GERACAO - 1222 - 3000', 'ativo'),
(176, 'AMD OPTERON DE SEGUNDA GERACAO - 1222SE - 3000', 'ativo'),
(177, 'AMD OPTERON DE SEGUNDA GERACAO - 2210 - 1800', 'ativo'),
(178, 'AMD OPTERON DE SEGUNDA GERACAO - 2210HE - 1800', 'ativo'),
(179, 'AMD OPTERON DE SEGUNDA GERACAO - 2212 - 2000', 'ativo'),
(180, 'AMD OPTERON DE SEGUNDA GERACAO - 2212HE - 2000', 'ativo'),
(181, 'AMD OPTERON DE SEGUNDA GERACAO - 2214 - 2200', 'ativo'),
(182, 'AMD OPTERON DE SEGUNDA GERACAO - 2214HE - 2200', 'ativo'),
(183, 'AMD OPTERON DE SEGUNDA GERACAO - 2216 - 2400', 'ativo'),
(184, 'AMD OPTERON DE SEGUNDA GERACAO - 2216HE - 2400', 'ativo'),
(185, 'AMD OPTERON DE SEGUNDA GERACAO - 2218 - 2600', 'ativo'),
(186, 'AMD OPTERON DE SEGUNDA GERACAO - 2218HE - 2600', 'ativo'),
(187, 'AMD OPTERON DE SEGUNDA GERACAO - 2220 - 2800', 'ativo'),
(188, 'AMD OPTERON DE SEGUNDA GERACAO - 2220SE - 2800', 'ativo'),
(189, 'AMD OPTERON DE SEGUNDA GERACAO - 2222 - 3000', 'ativo'),
(190, 'AMD OPTERON DE SEGUNDA GERACAO - 2222SE - 3000', 'ativo'),
(191, 'AMD OPTERON DE SEGUNDA GERACAO - 2224SE - 3200', 'ativo'),
(192, 'AMD OPTERON DE SEGUNDA GERACAO - 8212 - 2000', 'ativo'),
(193, 'AMD OPTERON DE SEGUNDA GERACAO - 8212HE - 2000', 'ativo'),
(194, 'AMD OPTERON DE SEGUNDA GERACAO - 8214 - 2200', 'ativo'),
(195, 'AMD OPTERON DE SEGUNDA GERACAO - 8214HE - 2200', 'ativo'),
(196, 'AMD OPTERON DE SEGUNDA GERACAO - 8216 - 2400', 'ativo'),
(197, 'AMD OPTERON DE SEGUNDA GERACAO - 8216HE - 2400', 'ativo'),
(198, 'AMD OPTERON DE SEGUNDA GERACAO - 8218 - 2600', 'ativo'),
(199, 'AMD OPTERON DE SEGUNDA GERACAO - 8218HE - 2600', 'ativo'),
(200, 'AMD OPTERON DE SEGUNDA GERACAO - 8220 - 2800', 'ativo'),
(201, 'AMD OPTERON DE SEGUNDA GERACAO - 8220SE - 2800', 'ativo'),
(202, 'AMD OPTERON DE SEGUNDA GERACAO - 8222 - 3000', 'ativo'),
(203, 'AMD OPTERON DE SEGUNDA GERACAO - 8222SE - 3000', 'ativo'),
(204, 'AMD OPTERON DE SEGUNDA GERACAO - 8224SE - 3200', 'ativo'),
(205, 'AMD OPTERON DE TERCEIRA GERACAO - 1352 - 2100', 'ativo'),
(206, 'AMD OPTERON DE TERCEIRA GERACAO - 1354 - 2200', 'ativo'),
(207, 'AMD OPTERON DE TERCEIRA GERACAO - 1356 - 2300', 'ativo'),
(208, 'AMD OPTERON DE TERCEIRA GERACAO - 2344HE - 1700', 'ativo'),
(209, 'AMD OPTERON DE TERCEIRA GERACAO - 2346HE - 1800', 'ativo'),
(210, 'AMD OPTERON DE TERCEIRA GERACAO - 2347 - 1900', 'ativo'),
(211, 'AMD OPTERON DE TERCEIRA GERACAO - 2347HE - 1900', 'ativo'),
(212, 'AMD OPTERON DE TERCEIRA GERACAO - 2350 - 2000', 'ativo'),
(213, 'AMD OPTERON DE TERCEIRA GERACAO - 2352 - 2100', 'ativo'),
(214, 'AMD OPTERON DE TERCEIRA GERACAO - 2354 - 2200', 'ativo'),
(215, 'AMD OPTERON DE TERCEIRA GERACAO - 2356 - 2300', 'ativo'),
(216, 'AMD OPTERON DE TERCEIRA GERACAO - 2358SE - 2400', 'ativo'),
(217, 'AMD OPTERON DE TERCEIRA GERACAO - 2360SE - 2500', 'ativo'),
(218, 'AMD OPTERON DE TERCEIRA GERACAO - 8346HE - 1800', 'ativo'),
(219, 'AMD OPTERON DE TERCEIRA GERACAO - 8347 - 1900', 'ativo'),
(220, 'AMD OPTERON DE TERCEIRA GERACAO - 8347HE - 1900', 'ativo'),
(221, 'AMD OPTERON DE TERCEIRA GERACAO - 8350 - 2000', 'ativo'),
(222, 'AMD OPTERON DE TERCEIRA GERACAO - 8354 - 2200', 'ativo'),
(223, 'AMD OPTERON DE TERCEIRA GERACAO - 8356 - 2300', 'ativo'),
(224, 'AMD OPTERON DE TERCEIRA GERACAO - 8358SE - 2400', 'ativo'),
(225, 'AMD OPTERON DE TERCEIRA GERACAO - 8360SE - 2500', 'ativo'),
(226, 'AMD PHENOM 8450 TRIPLE - CORE', 'ativo'),
(227, 'AMD PHENOM 8650 TRIPLE - CORE', 'ativo'),
(228, 'AMD PHENOM 9650 - 2.30GHz', 'ativo'),
(229, 'AMD PHENOM II X2 - 545 BE - 3.0GHz', 'ativo'),
(230, 'AMD PHENOM II X2 - 550 BE - 3.1GHz', 'ativo'),
(231, 'AMD PHENOM II X2 - 555 BE C3 - 3.2GHz', 'ativo'),
(232, 'AMD PHENOM II X2 - B53 - 2.8GHz', 'ativo'),
(233, 'AMD PHENOM II X2 - B55 - 3.0GHz', 'ativo'),
(234, 'AMD PHENOM II X2 - 555 3.20GHz', 'ativo'),
(235, 'AMD PHENOM II X3 - 700E - 2.4GHz', 'ativo'),
(236, 'AMD PHENOM II X3 - 705E - 2.5GHz', 'ativo'),
(237, 'AMD PHENOM II X3 - 710 BE - 2.6GHz', 'ativo'),
(238, 'AMD PHENOM II X3 - 715 - 2.8GHz', 'ativo'),
(239, 'AMD PHENOM II X3 - 720 BE - 2.8GHz', 'ativo'),
(240, 'AMD PHENOM II X3 - 740 BE - 3.0GHz', 'ativo'),
(241, 'AMD PHENOM II X3 - B73 - 2.8GHz', 'ativo'),
(242, 'AMD PHENOM II X3 - B75 - 3.0GHz', 'ativo'),
(243, 'AMD PHENOM II X4 - 805 - 2.5GHz', 'ativo'),
(244, 'AMD PHENOM II X4 - 810 - 2.6GHz', 'ativo'),
(245, 'AMD PHENOM II X4 - 820 - 2.8GHz', 'ativo'),
(246, 'AMD PHENOM II X4 - 900E - 2.4GHz', 'ativo'),
(247, 'AMD PHENOM II X4 - 905E - 2.5GHz', 'ativo'),
(248, 'AMD PHENOM II X4 - 910 - 2.6GHz', 'ativo'),
(249, 'AMD PHENOM II X4 - 910E C3 - 2.6GHz', 'ativo'),
(250, 'AMD PHENOM II X4 - 920 - 2.8GHz', 'ativo'),
(251, 'AMD PHENOM II X4 - 925 - 2.8GHz', 'ativo'),
(252, 'AMD PHENOM II X4 - 940 - 3.0GHz', 'ativo'),
(253, 'AMD PHENOM II X4 - 945 - 3.0GHz', 'ativo'),
(254, 'AMD PHENOM II X4 - 945 C3 - 3.0GHz', 'ativo'),
(255, 'AMD PHENOM II X4 - 955 BE C3 - 3.2GHz', 'ativo'),
(256, 'AMD PHENOM II X4 - 960T - 3.0GHz', 'ativo'),
(257, 'AMD PHENOM II X4 - 965 BE - 3.4GHz', 'ativo'),
(258, 'AMD PHENOM II X4 - 965 BE C3 - 3.4GHz', 'ativo'),
(259, 'AMD PHENOM II X4 - 975 - 3.6GHz', 'ativo'),
(260, 'AMD PHENOM II X6 - 1035T - 2.6GHz', 'ativo'),
(261, 'AMD PHENOM II X6 - 1055T - 2.8GHz', 'ativo'),
(262, 'AMD PHENOM II X6 - 1075T - 3.0GHz', 'ativo'),
(263, 'AMD PHENOM II X6 - 1090T - 3.2GHz', 'ativo'),
(264, 'AMD PHENOM TRIPLE - CORE - 2.31GHz', 'ativo'),
(265, 'AMD PHENOM X3 - TRIPLE - CORE - 8250E - 1.9GHz', 'ativo'),
(266, 'AMD PHENOM X3 - TRIPLE - CORE - 8400 - 2100', 'ativo'),
(267, 'AMD PHENOM X3 - TRIPLE - CORE - 8450 - 2.1GHz', 'ativo'),
(268, 'AMD PHENOM X3 - TRIPLE - CORE - 8450E - 2.1GHz', 'ativo'),
(269, 'AMD PHENOM X3 - TRIPLE - CORE - 8600 - 2300', 'ativo'),
(270, 'AMD PHENOM X3 - TRIPLE - CORE - 8650 - 2.3GHz', 'ativo'),
(271, 'AMD PHENOM X3 - TRIPLE - CORE - 8650 - 2300', 'ativo'),
(272, 'AMD PHENOM X3 - TRIPLE - CORE - 8750 - 2.4GHz', 'ativo'),
(273, 'AMD PHENOM X3 - TRIPLE - CORE - 8750 - 2400', 'ativo'),
(274, 'AMD PHENOM X4 - QUAD-CORE - 9150E - 1.8GHz', 'ativo'),
(275, 'AMD PHENOM X4 - QUAD-CORE - 9350E - 2.0GHz', 'ativo'),
(276, 'AMD PHENOM X4 - QUAD-CORE - 9500 - 2.2GHz', 'ativo'),
(277, 'AMD PHENOM X4 - QUAD-CORE - 9550 - 2.2GHz', 'ativo'),
(278, 'AMD PHENOM X4 - QUAD-CORE - 9600 - 2300', 'ativo'),
(279, 'AMD PHENOM X4 - QUAD-CORE - 9650 - 2.3GHz', 'ativo'),
(280, 'AMD PHENOM X4 - QUAD-CORE - 9750 - 2.4GHz', 'ativo'),
(281, 'AMD PHENOM X4 - QUAD-CORE - 9850 - 2.5GHz', 'ativo'),
(282, 'AMD PHENOM X4 - QUAD-CORE - 9950 - 2.6GHz', 'ativo'),
(283, 'AMD PHENON II X4 - 830 2.8GHz', 'ativo'),
(284, 'AMD RYZEN 7 2700', 'ativo'),
(285, 'AMD RYZEN 7 PRO 5750G 3.8GHz', 'ativo'),
(286, 'AMD SEMPROM - 1.6GHz', 'ativo'),
(287, 'AMD SEMPROM - 2.11GHz', 'ativo'),
(288, 'AMD SEMPROM - 2.2GHz', 'ativo'),
(289, 'AMD SEMPROM - 2.4GHz', 'ativo'),
(290, 'AMD SEMPROM - 2.5GHz', 'ativo'),
(291, 'AMD SEMPROM - 2.6GHz', 'ativo'),
(292, 'AMD SEMPROM - 2.8GHz', 'ativo'),
(293, 'AMD SEMPROM - 3.0GHz', 'ativo'),
(294, 'AMD SEMPROM 2600 - 1.6GHz', 'ativo'),
(295, 'AMD SEMPROM 2800 - 1.6GHz', 'ativo'),
(296, 'AMD SEMPROM 3.0GHz', 'ativo'),
(297, 'AMD SEMPROM LE 1100', 'ativo'),
(298, 'AMD SEMPRON - 2800+ - 1600', 'ativo'),
(299, 'AMD SEMPRON - 3000+ - 1600', 'ativo'),
(300, 'AMD SEMPRON - 3000+ - 1800', 'ativo'),
(301, 'AMD SEMPRON - 3100+ - 1800', 'ativo'),
(302, 'AMD SEMPRON - 3200+ - 1800', 'ativo'),
(303, 'AMD SEMPRON - 3300+ - 2000', 'ativo'),
(304, 'AMD SEMPRON - 3400+ - 1800', 'ativo'),
(305, 'AMD SEMPRON - 3400+ - 2000', 'ativo'),
(306, 'AMD SEMPRON - 3500+ - 2000', 'ativo'),
(307, 'AMD SEMPRON - 3600+ - 2000', 'ativo'),
(308, 'AMD SEMPRON - 3800+ - 2200', 'ativo'),
(309, 'AMD SEMPRON - 1.5GHz', 'ativo'),
(310, 'AMD SEMPRON 1100', 'ativo'),
(311, 'AMD SEMPRON 140', 'ativo'),
(312, 'AMD SEMPRON 145', 'ativo'),
(313, 'AMD SEMPRON 3000', 'ativo'),
(314, 'AMD SEMPRON 3400 - 1.80GHz', 'ativo'),
(315, 'AMD SEMPRON 64 2800', 'ativo'),
(316, 'AMD SEMPRON LE - 1100 - 1900', 'ativo'),
(317, 'AMD SEMPRON LE - 1150 - 2000', 'ativo'),
(318, 'AMD SEMPRON LE - 1200 - 2100', 'ativo'),
(319, 'AMD SEMPRON LE - 1250 - 2200', 'ativo'),
(320, 'AMD SEMPRON X1 - 140 - 2.7GHz', 'ativo'),
(321, 'AMD SEMPRON X1 - 145 - 2.8GHz', 'ativo'),
(322, 'AMD SEMPRON X1 - 180', 'ativo'),
(323, 'AMD V120 ', 'ativo'),
(324, 'AMD X2 250 - 3000MHz', 'ativo'),
(325, 'AMD X2 250 - 3100MHz', 'ativo'),
(326, 'INTEL CELERON G470 - 2.00GHz', 'ativo'),
(327, 'INTEL CELERON 927UE - 1.50GHz', 'ativo'),
(328, 'INTEL CELERON 887 - 1.50GHz', 'ativo'),
(329, 'INTEL CELERON B830 - 1.80GHz', 'ativo'),
(330, 'INTEL CELERON G465 - 1.90GHz', 'ativo'),
(331, 'INTEL CELERON G550T - 2.20GHz', 'ativo'),
(332, 'INTEL CELERON G555 - 2.70GHz', 'ativo'),
(333, 'INTEL CELERON 807 - 1.50GHz', 'ativo'),
(334, 'INTEL CELERON 877 - 1.40GHz', 'ativo'),
(335, 'INTEL CELERON B820 - 1.70GHz', 'ativo'),
(336, 'INTEL CELERON G540T - 2.10GHz', 'ativo'),
(337, 'INTEL CELERON G550 - 2.60GHz', 'ativo'),
(338, 'INTEL CELERON 725C - 1.30GHz', 'ativo'),
(339, 'INTEL CELERON 797 - 1.40GHz', 'ativo'),
(340, 'INTEL CELERON 867 - 1.30GHz', 'ativo'),
(341, 'INTEL CELERON B720 - 1.70GHz', 'ativo'),
(342, 'INTEL CELERON B815 - 1.60GHz', 'ativo'),
(343, 'INTEL CELERON G460 - 1.80GHz', 'ativo'),
(344, 'INTEL CELERON 807UE - 1.00GHz', 'ativo'),
(345, 'INTEL CELERON B840 - 1.90GHz', 'ativo'),
(346, 'INTEL CELERON G440 - 1.60GHz', 'ativo'),
(347, 'INTEL CELERON G530 - 2.40GHz', 'ativo'),
(348, 'INTEL CELERON G530T - 2.00GHz', 'ativo'),
(349, 'INTEL CELERON G540 - 2.50GHz', 'ativo'),
(350, 'INTEL CELERON 787 - 1.30GHz', 'ativo'),
(351, 'INTEL CELERON 827E - 1.40GHz', 'ativo'),
(352, 'INTEL CELERON B710 - 1.60GHz', 'ativo'),
(353, 'INTEL CELERON 857 - 1.20GHz', 'ativo'),
(354, 'INTEL CELERON 847 - 1.10GHz', 'ativo'),
(355, 'INTEL CELERON 847E - 1.10GHz', 'ativo'),
(356, 'INTEL CELERON B800 - 1.50GHz', 'ativo'),
(357, 'INTEL CELERON B810E - 1.60GHz', 'ativo'),
(358, 'INTEL CELERON B810 - 1.60GHz', 'ativo'),
(359, 'INTEL CELERON 925 - 2.30GHz', 'ativo'),
(360, 'INTEL CELERON U3600 - 1.20GHz', 'ativo'),
(361, 'INTEL CELERON ULV 763 - 1.40GHz', 'ativo'),
(362, 'INTEL CELERON E3500 - 2.70GHz', 'ativo'),
(363, 'INTEL CELERON P4600 - 2.00GHz', 'ativo'),
(364, 'INTEL CELERON T3500 - 2.10GHz', 'ativo'),
(365, 'INTEL CELERON U3400 - 1.06GHz', 'ativo'),
(366, 'INTEL CELERON P4500 - 1.86GHz', 'ativo'),
(367, 'INTEL CELERON E3400 - 2.60GHz', 'ativo'),
(368, 'INTEL CELERON P1053 - 1.33GHz', 'ativo'),
(369, 'INTEL CELERON P4505 - 1.86GHz', 'ativo'),
(370, 'INTEL CELERON T3300 - 2.00GHz', 'ativo'),
(371, 'INTEL CELERON U3405 - 1.06GHz', 'ativo'),
(372, 'INTEL CELERON M ULV 743 - 1.30GHz', 'ativo'),
(373, 'INTEL CELERON SU2300 - 1.20GHz', 'ativo'),
(374, 'INTEL CELERON E3200 - 2.40GHz', 'ativo'),
(375, 'INTEL CELERON E3300 - 2.50GHz', 'ativo'),
(376, 'INTEL CELERON T3100 - 1.90GHz', 'ativo'),
(377, 'INTEL CELERON ULV 573 - 1.00GHz', 'ativo'),
(378, 'INTEL CELERON E1600 - 2.40GHz', 'ativo'),
(379, 'INTEL CELERON 900 - 2.20GHz', 'ativo'),
(380, 'INTEL CELERON T1600 - 1.66GHz', 'ativo'),
(381, 'INTEL CELERON T1700 - 1.83GHz', 'ativo'),
(382, 'INTEL CELERON E1500 - 2.20GHz', 'ativo'),
(383, 'INTEL CELERON M ULV 722 - 1.20GHz', 'ativo'),
(384, 'INTEL CELERON 450 - 2.20GHz', 'ativo'),
(385, 'INTEL CELERON M ULV 723 - 1.20GHz', 'ativo'),
(386, 'INTEL CELERON 575 - 2.00GHz', 'ativo'),
(387, 'INTEL CELERON 585 - 2.16GHz', 'ativo'),
(388, 'INTEL CELERON E1400 - 2.00GHz', 'ativo'),
(389, 'INTEL CELERON 570 - 2.26GHz', 'ativo'),
(390, 'INTEL CELERON E1200 - 1.60GHz', 'ativo'),
(391, 'INTEL CELERON 560 - 2.13GHz', 'ativo'),
(392, 'INTEL CELERON 220 - 1.20GHz', 'ativo'),
(393, 'INTEL CELERON M ULV 523 - 930 MHz', 'ativo'),
(394, 'INTEL CELERON 540 - 1.86GHz', 'ativo'),
(395, 'INTEL CELERON 420 - 1.60GHz', 'ativo'),
(396, 'INTEL CELERON 430 - 1.80GHz', 'ativo'),
(397, 'INTEL CELERON 440 - 2.00GHz', 'ativo'),
(398, 'INTEL CELERON M 530 - 1.73GHz', 'ativo'),
(399, 'INTEL CELERON 530 - 1.73GHz', 'ativo'),
(400, 'INTEL CELERON de 1.83GHz - cache de 1M - barramento frontal de 667 MHz - 1.83GHz', 'ativo'),
(401, 'INTEL CELERON D 365 - 3.60GHz', 'ativo'),
(402, 'INTEL CELERON M 520 - 1.60GHz', 'ativo'),
(403, 'INTEL CELERON de 1.66GHz - cache de 1M - barramento frontal de 667 MHz - 1.66GHz', 'ativo'),
(404, 'INTEL CELERON D 347 - 3.06GHz', 'ativo'),
(405, 'INTEL CELERON D 360 - 3.46GHz', 'ativo'),
(406, 'INTEL CELERON M 440 - 1.86GHz', 'ativo'),
(407, 'INTEL CELERON 550 - 2.00GHz', 'ativo'),
(408, 'INTEL CELERON D 352 - 3.20GHz', 'ativo'),
(409, 'INTEL CELERON D 356 - 3.33GHz', 'ativo'),
(410, 'INTEL CELERON M ULV 423 - 1.06GHz', 'ativo'),
(411, 'INTEL CELERON D 310 - 2.13GHz', 'ativo'),
(412, 'INTEL CELERON D 355 - 3.33GHz', 'ativo'),
(413, 'INTEL CELERON D 341 - 2.93GHz', 'ativo'),
(414, 'INTEL CELERON D 350 - 3.20GHz', 'ativo'),
(415, 'INTEL CELERON D 350/350J - 3.20GHz', 'ativo'),
(416, 'INTEL CELERON D 351 - 3.20GHz', 'ativo'),
(417, 'INTEL CELERON M 370 - 1.50GHz', 'ativo'),
(418, 'INTEL CELERON M ULV 373 - 1.00GHz', 'ativo'),
(419, 'INTEL CELERON D 325J - 2.53GHz', 'ativo'),
(420, 'INTEL CELERON D 330 - 2.66GHz', 'ativo'),
(421, 'INTEL CELERON D 330J - 2.66GHz', 'ativo'),
(422, 'INTEL CELERON D 335J - 2.80GHz', 'ativo'),
(423, 'INTEL CELERON D 340 - 2.93GHz', 'ativo'),
(424, 'INTEL CELERON D 340J - 2.93GHz', 'ativo'),
(425, 'INTEL CELERON D 345 - 3.06GHz', 'ativo'),
(426, 'INTEL CELERON D 345J - 3.06GHz', 'ativo'),
(427, 'INTEL CELERON D 315 - 2.26GHz', 'ativo'),
(428, 'INTEL CELERON D 335 - 2.80GHz', 'ativo'),
(429, 'INTEL CELERON D 315/315J - 2.26GHz', 'ativo'),
(430, 'INTEL CELERON D 320 - 2.40GHz', 'ativo'),
(431, 'INTEL CELERON D 325 - 2.53GHz', 'ativo'),
(432, 'INTEL CELERON D 325/325J - 2.53GHz', 'ativo'),
(433, 'INTEL CELERON D 326 - 2.53GHz', 'ativo'),
(434, 'INTEL CELERON D 330/330J - 2.66GHz', 'ativo'),
(435, 'INTEL CELERON D 335/335J - 2.80GHz', 'ativo'),
(436, 'INTEL CELERON M 320 - 1.30GHz', 'ativo'),
(437, 'INTEL CELERON 1005M - 1.90GHz', 'ativo'),
(438, 'INTEL CELERON 1017U - 1.60GHz', 'ativo'),
(439, 'INTEL CELERON 1019Y - 1.00GHz', 'ativo'),
(440, 'INTEL CELERON 1000M - 1.80GHz', 'ativo'),
(441, 'INTEL CELERON 1007U - 1.50GHz', 'ativo'),
(442, 'INTEL CELERON 1020E - 2.20GHz', 'ativo'),
(443, 'INTEL CELERON 1020M - 2.10GHz', 'ativo'),
(444, 'INTEL CELERON 1037U - 1.80GHz', 'ativo'),
(445, 'INTEL CELERON 1047UE - 1.40GHz', 'ativo'),
(446, 'INTEL CELERON 2970M - 2.20GHz', 'ativo'),
(447, 'INTEL CELERON 2000E - 2.20GHz', 'ativo'),
(448, 'INTEL CELERON 2002E - 1.50GHz', 'ativo'),
(449, 'INTEL CELERON 2957U - 1.40GHz', 'ativo'),
(450, 'INTEL CELERON 2961Y - 1.10GHz', 'ativo'),
(451, 'INTEL CELERON 2981U - 1.60GHz', 'ativo'),
(452, 'INTEL CELERON 2950M - 2.00GHz', 'ativo'),
(453, 'INTEL CELERON 2955U - 1.40GHz', 'ativo'),
(454, 'INTEL CELERON 2980U - 1.60GHz', 'ativo'),
(455, 'INTEL CELERON 3867U - 1.80GHz', 'ativo'),
(456, 'INTEL CELERON 3965Y - 1.50GHz', 'ativo'),
(457, 'INTEL CELERON 3865U - 1.80GHz', 'ativo'),
(458, 'INTEL CELERON 3965U - 2.20GHz', 'ativo'),
(459, 'INTEL CELERON 3855U - 1.60GHz', 'ativo'),
(460, 'INTEL CELERON 3955U - 2.00GHz', 'ativo'),
(461, 'INTEL CELERON 3215U - 1.70GHz', 'ativo'),
(462, 'INTEL CELERON 3765U - 1.90GHz', 'ativo'),
(463, 'INTEL CELERON 3205U - 1.50GHz', 'ativo'),
(464, 'INTEL CELERON 3755U - 1.70GHz', 'ativo'),
(465, 'INTEL CELERON 4305U - 2.20GHz', 'ativo'),
(466, 'INTEL CELERON 4205U - 1.80GHz', 'ativo'),
(467, 'INTEL CELERON 4305UE - 2.00GHz', 'ativo'),
(468, 'INTEL CELERON 5305U - 2.30GHz', 'ativo'),
(469, 'INTEL CELERON 5205U - 1.90GHz', 'ativo'),
(470, 'INTEL CELERON 6600HE - 2.60GHz', 'ativo'),
(471, 'INTEL CELERON 6305E - 1.80GHz', 'ativo'),
(472, 'INTEL CELERON 7305L - 1.10GHz', 'ativo'),
(473, 'INTEL CELERON N4500 - 1.10GHz', 'ativo'),
(474, 'INTEL CELERON N4505 - 2.00GHz', 'ativo'),
(475, 'INTEL CELERON N5100 - 1.10GHz', 'ativo'),
(476, 'INTEL CELERON N5105 - 2.00GHz', 'ativo'),
(477, 'INTEL CELERON N6211 - 1.20GHz', 'ativo'),
(478, 'INTEL CELERON N4020 - 1.10GHz', 'ativo'),
(479, 'INTEL CELERON N4120 - 1.10GHz', 'ativo'),
(480, 'INTEL CELERON N3350E - 1.10GHz', 'ativo'),
(481, 'INTEL CELERON N4000 - 1.10GHz', 'ativo'),
(482, 'INTEL CELERON N4100 - 1.10GHz', 'ativo'),
(483, 'INTEL CELERON N3350 - 1.10GHz', 'ativo'),
(484, 'INTEL CELERON N3450 - 1.10GHz', 'ativo'),
(485, 'INTEL CELERON N3010 - 1.04GHz', 'ativo'),
(486, 'INTEL CELERON N3060 - 1.60GHz', 'ativo'),
(487, 'INTEL CELERON N3160 - 1.60GHz', 'ativo'),
(488, 'INTEL CELERON N3000 - 1.04GHz', 'ativo'),
(489, 'INTEL CELERON N3050 - 1.60GHz', 'ativo'),
(490, 'INTEL CELERON N3150 - 1.60GHz', 'ativo'),
(491, 'INTEL CELERON N2808 - 1.58GHz', 'ativo'),
(492, 'INTEL CELERON N2840 - 2.16GHz', 'ativo'),
(493, 'INTEL CELERON N2940 - 1.83GHz', 'ativo'),
(494, 'INTEL CELERON N2807 - 1.58GHz', 'ativo'),
(495, 'INTEL CELERON N2830 - 2.16GHz', 'ativo'),
(496, 'INTEL CELERON N2930 - 1.83GHz', 'ativo'),
(497, 'INTEL CELERON N2806 - 1.60GHz', 'ativo'),
(498, 'INTEL CELERON N2815 - 1.86GHz', 'ativo'),
(499, 'INTEL CELERON N2820 - 2.13GHz', 'ativo'),
(500, 'INTEL CELERON N2920 - 1.86GHz', 'ativo'),
(501, 'INTEL CELERON N2805 - 1.46GHz', 'ativo'),
(502, 'INTEL CELERON N2810 - 2.00GHz', 'ativo'),
(503, 'INTEL CELERON N2910 - 1.60GHz', 'ativo'),
(504, 'INTEL CELERON J6412 - 2.00GHz', 'ativo'),
(505, 'INTEL CELERON J6413 - 1.80GHz', 'ativo'),
(506, 'INTEL CELERON J4025 - 2.00GHz', 'ativo'),
(507, 'INTEL CELERON J4125 - 2.00GHz', 'ativo'),
(508, 'INTEL CELERON J3355E - 2.00GHz', 'ativo'),
(509, 'INTEL CELERON J3455E - 1.50GHz', 'ativo'),
(510, 'INTEL CELERON J4005 - 2.00GHz', 'ativo'),
(511, 'INTEL CELERON J4105 - 1.50GHz', 'ativo'),
(512, 'INTEL CELERON J3355 - 2.00GHz', 'ativo'),
(513, 'INTEL CELERON J3455 - 1.50GHz', 'ativo'),
(514, 'INTEL CELERON J3060 - 1.60GHz', 'ativo'),
(515, 'INTEL CELERON J3160 - 1.60GHz', 'ativo'),
(516, 'INTEL CELERON J1800 - 2.41GHz', 'ativo'),
(517, 'INTEL CELERON J1900 - 2.00GHz', 'ativo'),
(518, 'INTEL CELERON J1750 - 2.41GHz', 'ativo'),
(519, 'INTEL CELERON J1850 - 2.00GHz', 'ativo'),
(520, 'INTEL CELERON G5905 - 3.50GHz', 'ativo'),
(521, 'INTEL CELERON G5905T - 3.30GHz', 'ativo'),
(522, 'INTEL CELERON G5925 - 3.60GHz', 'ativo'),
(523, 'INTEL CELERON G5900 - 3.40GHz', 'ativo'),
(524, 'INTEL CELERON G5900E - 3.20GHz', 'ativo'),
(525, 'INTEL CELERON G5900T - 3.20GHz', 'ativo'),
(526, 'INTEL CELERON G5900TE - 3.00GHz', 'ativo'),
(527, 'INTEL CELERON G5920 - 3.50GHz', 'ativo'),
(528, 'INTEL CELERON G4930E - 2.40GHz', 'ativo'),
(529, 'INTEL CELERON G4932E - 1.90GHz', 'ativo'),
(530, 'INTEL CELERON G4930 - 3.20GHz', 'ativo'),
(531, 'INTEL CELERON G4930T - 3.00GHz', 'ativo'),
(532, 'INTEL CELERON G4950 - 3.30GHz', 'ativo'),
(533, 'INTEL CELERON G4900 - 3.10GHz', 'ativo'),
(534, 'INTEL CELERON G4900T - 2.90GHz', 'ativo'),
(535, 'INTEL CELERON G4920 - 3.20GHz', 'ativo'),
(536, 'INTEL CELERON G3930E - 2.90GHz', 'ativo'),
(537, 'INTEL CELERON G3930TE - 2.70GHz', 'ativo'),
(538, 'INTEL CELERON G3930 - 2.90GHz', 'ativo'),
(539, 'INTEL CELERON G3930T - 2.70GHz', 'ativo'),
(540, 'INTEL CELERON G3950 - 3.00GHz', 'ativo'),
(541, 'INTEL CELERON G3900E - 2.40GHz', 'ativo'),
(542, 'INTEL CELERON G3902E - 1.60GHz', 'ativo'),
(543, 'INTEL CELERON G3900 - 2.80GHz', 'ativo'),
(544, 'INTEL CELERON G3900T - 2.60GHz', 'ativo'),
(545, 'INTEL CELERON G3900TE - 2.30GHz', 'ativo'),
(546, 'INTEL CELERON G3920 - 2.90GHz', 'ativo'),
(547, 'INTEL CELERON G1840 - 2.80GHz', 'ativo'),
(548, 'INTEL CELERON G1840T - 2.50GHz', 'ativo'),
(549, 'INTEL CELERON G1850 - 2.90GHz', 'ativo'),
(550, 'INTEL CELERON G1820TE - 2.20GHz', 'ativo'),
(551, 'INTEL CELERON G1820 - 2.70GHz', 'ativo'),
(552, 'INTEL CELERON G1820T - 2.40GHz', 'ativo'),
(553, 'INTEL CELERON G1830 - 2.80GHz', 'ativo'),
(554, 'INTEL CELERON G1620T - 2.40GHz', 'ativo'),
(555, 'INTEL CELERON G1630 - 2.80GHz', 'ativo'),
(556, 'INTEL CELERON G1610 - 2.60GHz', 'ativo'),
(557, 'INTEL CELERON G1610T - 2.30GHz', 'ativo'),
(558, 'INTEL CELERON G1620 - 2.70GHz', 'ativo'),
(559, 'INTEL 2 DUO E7300 2.6GHz', 'ativo'),
(560, 'INTEL 2140 1.60GHz', 'ativo'),
(561, 'INTEL ATOM D425 - 1.80GHz', 'ativo'),
(562, 'INTEL ATOM D510 - 1.66GHz', 'ativo'),
(563, 'INTEL ATOM N550 - 1.50GHz', 'ativo'),
(564, 'INTEL CORE 2 - 2.40GHz', 'ativo'),
(565, 'INTEL CORE 2 4400 - 2.00GHz', 'ativo'),
(566, 'INTEL CORE 2 6300 - 1.86GHz', 'ativo'),
(567, 'INTEL CORE 2 DUO - 2.4GHz', 'ativo'),
(568, 'INTEL CORE 2 DUO - 2.20GHz', 'ativo'),
(569, 'INTEL CORE 2 DUO - 2.4GHz', 'ativo'),
(570, 'INTEL CORE 2 DUO E2200 - 2.2GHz', 'ativo'),
(571, 'INTEL CORE 2 DUO E4500 - 2.20GHz', 'ativo'),
(572, 'INTEL CORE 2 DUO E4500 - 2.2GHz', 'ativo'),
(573, 'INTEL CORE 2 DUO E4600 - 2.40GHz', 'ativo'),
(574, 'INTEL CORE 2 DUO E4700 - 2.60GHz', 'ativo'),
(575, 'INTEL CORE 2 DUO E6550 - 2.33GHz', 'ativo'),
(576, 'INTEL CORE 2 DUO E6750 - 2.66GHz', 'ativo'),
(577, 'INTEL CORE 2 DUO E7200 - 2.53GHz', 'ativo'),
(578, 'INTEL CORE 2 DUO E7300 - 2.66GHz', 'ativo'),
(579, 'INTEL CORE 2 DUO E7400 - 2.55GHz', 'ativo'),
(580, 'INTEL CORE 2 DUO E7400 - 2.80GHz', 'ativo'),
(581, 'INTEL CORE 2 DUO E7500 - 2.93GHz', 'ativo'),
(582, 'INTEL CORE 2 DUO E8200 - 2.6GHz', 'ativo'),
(583, 'INTEL CORE 2 DUO E8400 - 3.00GHz', 'ativo'),
(584, 'INTEL CORE 2 DUO T5450 - 1.66GHz', 'ativo'),
(585, 'INTEL CORE 2 DUO T7700 - 2.40GHz', 'ativo'),
(586, 'INTEL CORE 2 QUAD - 2.4GHz', 'ativo'),
(587, 'INTEL CORE 2 QUAD Q6600 - 2.40GHz', 'ativo'),
(588, 'INTEL CORE 2 QUAD Q8200 - 2.33GHz', 'ativo'),
(589, 'INTEL CORE 2 QUAD Q8300 - 2.50GHz', 'ativo'),
(590, 'INTEL CORE 2 QUAD Q8400 - 2.66GHz', 'ativo'),
(591, 'INTEL CORE 2 QUAD Q9550 - 2.83GHz', 'ativo'),
(592, 'INTEL CORE DUO - 2.53GHz', 'ativo'),
(593, 'INTEL CORE DUO B400 - 3.00GHz', 'ativo'),
(594, 'INTEL CORE DUO E4500 - 2.200GHz', 'ativo'),
(595, 'INTEL CORE DUO E7500 - 2.93GHz', 'ativo'),
(596, 'INTEL CORE E6550 - 2.33GHz', 'ativo'),
(597, 'INTEL CORE I3 - 10100 3.60GHz', 'ativo'),
(598, 'INTEL CORE I3 - 2100 - 3.10GHz', 'ativo'),
(599, 'INTEL CORE I3 - 2105 - 3.10GHz', 'ativo'),
(600, 'INTEL CORE I3 - 2120 - 3.30GHz', 'ativo'),
(601, 'INTEL CORE I3 - 2130 - 3.40GHz', 'ativo'),
(602, 'INTEL CORE I3 - 3.0GHz', 'ativo'),
(603, 'INTEL CORE I3 - 3220 - 3.30GHz', 'ativo'),
(604, 'INTEL CORE I3 - 3240 - 3.40GHz', 'ativo'),
(605, 'INTEL CORE I3 - 3250 - 3.50GHz', 'ativo'),
(606, 'INTEL CORE I3 - 4150 - 3.50GHz', 'ativo'),
(607, 'INTEL CORE I3 - 4160 - 3.60GHz', 'ativo'),
(608, 'INTEL CORE I3 - 4170 - 3.70GHz', 'ativo'),
(609, 'INTEL CORE I3 - 530 - 2.93GHz', 'ativo'),
(610, 'INTEL CORE I3 - 540 - 3.07GHz', 'ativo'),
(611, 'INTEL CORE I3 - 550 - 3.20GHz', 'ativo'),
(612, 'INTEL CORE I3 - 6100U - 2.30GHz', 'ativo'),
(613, 'INTEL CORE I3 - 7100 - 3.90GHz', 'ativo'),
(614, 'INTEL CORE I3 - 7100U - 2.40GHz', 'ativo'),
(615, 'INTEL CORE I3 - 7350K - 4.20GHz', 'ativo'),
(616, 'INTEL CORE I3 - 8100 - 3.60GHz', 'ativo'),
(617, 'INTEL CORE I3 - M 370 - 2.40GHz', 'ativo'),
(618, 'INTEL CORE I5 - 10210 - 1.60GHz', 'ativo'),
(619, 'INTEL CORE I5 - 12400 - 2.50GHz', 'ativo'),
(620, 'INTEL CORE I5 - 2300 - 2.80GHz', 'ativo'),
(621, 'INTEL CORE I5 - 2310 - 2.90GHz', 'ativo'),
(622, 'INTEL CORE I5 - 2320 - 3.00GHz', 'ativo'),
(623, 'INTEL CORE I5 - 2400 - 3.10GHz', 'ativo'),
(624, 'INTEL CORE I5 - 2500 - 3.30GHz', 'ativo'),
(625, 'INTEL CORE I5 - 2537M - 1.40GHz', 'ativo'),
(626, 'INTEL CORE I5 - 3.20GHz', 'ativo'),
(627, 'INTEL CORE I5 - 3230M - 2.60GHz', 'ativo'),
(628, 'INTEL CORE I5 - 3330 - 3.00GHz', 'ativo'),
(629, 'INTEL CORE I5 - 3330S - 2.70GHz', 'ativo'),
(630, 'INTEL CORE I5 - 3470 - 3.20GHz', 'ativo'),
(631, 'INTEL CORE I5 - 3470S - 2.90GHz', 'ativo'),
(632, 'INTEL CORE I5 - 3570 - 3.40GHz', 'ativo'),
(633, 'INTEL CORE I5 - 4430 - 3.00GHz', 'ativo'),
(634, 'INTEL CORE I5 - 4440 - 3.10GHz', 'ativo'),
(635, 'INTEL CORE I5 - 4440S - 2.80GHz', 'ativo'),
(636, 'INTEL CORE I5 - 4460 - 3.20GHz', 'ativo'),
(637, 'INTEL CORE I5 - 4460S - 2.90GHz', 'ativo'),
(638, 'INTEL CORE I5 - 4570 - 3.20GHz', 'ativo'),
(639, 'INTEL CORE I5 - 4590 - 3.30GHz', 'ativo'),
(640, 'INTEL CORE I5 - 4690T - 2.50GHz', 'ativo'),
(641, 'INTEL CORE I5 - 5200U - 2.20GHz', 'ativo'),
(642, 'INTEL CORE I5 - 6400 - 2.70GHz', 'ativo'),
(643, 'INTEL CORE I5 - 650 - 3.20GHz', 'ativo'),
(644, 'INTEL CORE I5 - 7400 - 3.00GHz', 'ativo'),
(645, 'INTEL CORE I5 - 750 - 2.67GHz', 'ativo'),
(646, 'INTEL CORE I5 - 7500 - 3.40GHz', 'ativo'),
(647, 'INTEL CORE I5 - 760 - 2.80GHz', 'ativo'),
(648, 'INTEL CORE I5 - 8400 - 4.00GHz', 'ativo'),
(649, 'INTEL CORE I5 - 9400 - 2.90GHz', 'ativo'),
(650, 'INTEL CORE I5 - 9400 - 4.10GHz', 'ativo'),
(651, 'INTEL CORE I5 - 9500T - 2.20GHz', 'ativo'),
(652, 'INTEL CORE I7 - 10700K - 3.80GHz', 'ativo'),
(653, 'INTEL CORE I7 - 11700 - 4.90GHz', 'ativo'),
(654, 'INTEL CORE I7 - 2600 - 3.40GHz', 'ativo'),
(655, 'INTEL CORE I7 - 4790 - 3.60GHz', 'ativo'),
(656, 'INTEL CORE I7 - 4790S - 3.20GHz', 'ativo'),
(657, 'INTEL CORE I7 - 6700 - 3.40GHz', 'ativo'),
(658, 'INTEL CORE I7 - 7700 - 3.60GHz', 'ativo'),
(659, 'INTEL CORE I7 - 870 - 2.93GHz', 'ativo'),
(660, 'INTEL CORE I7 - 9700 - 3.00GHz', 'ativo'),
(661, 'INTEL CORE I7 - 9700F - 4.70GHz', 'ativo'),
(662, 'INTEL DUAL CORE - 1.86GHz', 'ativo'),
(663, 'INTEL DUAL CORE - 2.13GHz', 'ativo'),
(664, 'INTEL DUAL CORE - 2.60GHz', 'ativo'),
(665, 'INTEL DUAL CORE - 3.00GHz', 'ativo'),
(666, 'INTEL DUAL CORE - E2220 - 2.40GHz', 'ativo'),
(667, 'INTEL DUAL CORE 2 4300 - 1.8GHz', 'ativo'),
(668, 'INTEL DUAL CORE E 5300', 'ativo'),
(669, 'INTEL DUAL E2220 - 2.40GHz', 'ativo'),
(670, 'INTEL G630 - 2.70GHz', 'ativo'),
(671, 'INTEL GENUINE 2140 - 1.60GHz', 'ativo'),
(672, 'INTEL PENTIUM DUAL - 1.60GHz', 'ativo'),
(673, 'INTEL PENTIUM DUAL - 1.80GHz', 'ativo'),
(674, 'INTEL PENTIUM DUAL - 3.4GHz', 'ativo'),
(675, 'INTEL PENTIUM DUAL CORE E5200 - 2.50GHz', 'ativo'),
(676, 'INTEL PENTIUM DUAL CORE E5300 - 2.60GHz', 'ativo'),
(677, 'INTEL PENTIUM DUAL CORE E5700 - 3.00GHz', 'ativo'),
(678, 'INTEL PENTIUM DUAL CORE - 1.8GHz', 'ativo'),
(679, 'INTEL PENTIUM DUAL CORE - 2.00GHz', 'ativo'),
(680, 'INTEL PENTIUM DUAL CORE 2140 - 1.60GHz', 'ativo'),
(681, 'INTEL PENTIUM DUAL CORE E2200 - 2.20GHz', 'ativo'),
(682, 'INTEL PENTIUM DUAL CORE E5200 - 2.50GHz', 'ativo'),
(683, 'INTEL PENTIUM DUAL CORE E5300 - 2.60GHz', 'ativo'),
(684, 'INTEL PENTIUM DUAL CORE E5300Q - 2.60GHz', 'ativo'),
(685, 'INTEL PENTIUM DUAL CORE E5700 - 3.00GHz', 'ativo'),
(686, 'INTEL PENTIUM DUAL CORE E5800 - 3.20GHz', 'ativo'),
(687, 'INTEL PENTIUM DUAL E2160 - 1.80GHz', 'ativo'),
(688, 'INTEL PENTIUM DUAL E2180 - 2.00GHz', 'ativo'),
(689, 'INTEL PENTIUM DUAL E2200 - 2.20GHz', 'ativo'),
(690, 'INTEL PENTIUM DUAL E2220Q - 240GHz', 'ativo'),
(691, 'INTEL PENTIUM DUAL CORE E5200 - 2.50GHz', 'ativo'),
(692, 'INTEL PENTIUM DUAL CORE E5300 - 2.60GHz', 'ativo'),
(693, 'INTEL PENTIUM DUAL CORE E5400 - 2.70GHz', 'ativo'),
(694, 'INTEL PENTIUM DUAL CORE E5700 - 3.00GHz', 'ativo'),
(695, 'INTEL PENTIUM DUAL CORE E5800 - 3.20GHz', 'ativo'),
(696, 'INTEL PENTIUM DUAL CORE T4400 - 2.20GHz', 'ativo'),
(697, 'INTEL PENTIUM DUAL CORE T4500 - 2.30GHz', 'ativo'),
(698, 'INTEL PENTIUM E2180 - 2.00GHz', 'ativo'),
(699, 'INTEL PENTIUM E550 - 2.80GHz', 'ativo'),
(700, 'INTEL PENTIUM F - 3.06GHz', 'ativo'),
(701, 'INTEL PENTIUM G2020 - 2.90GHz', 'ativo'),
(702, 'INTEL PENTIUM G2030 - 3.00GHz', 'ativo'),
(703, 'INTEL PENTIUM G2120 - 3.10GHz', 'ativo'),
(704, 'INTEL PENTIUM G3220 - 3.00GHz', 'ativo'),
(705, 'INTEL PENTIUM G4400 - 3.30GHz', 'ativo'),
(706, 'INTEL PENTIUM G620 - 2.60GHz', 'ativo'),
(707, 'INTEL PENTIUM G630 - 2.70GHz', 'ativo'),
(708, 'INTEL PENTIUM G640 - 2.80GHz', 'ativo'),
(709, 'INTEL PENTIUM G850 - 2.90GHz', 'ativo'),
(710, 'INTEL PENTIUN DUAL CORE E 5300 - 2.6GHz', 'ativo'),
(711, 'INTEL PENTIUN G3420 - 3.20GHz', 'ativo'),
(712, 'INTEL QUAD CORE - 2.66GHz', 'ativo'),
(713, 'INTEL QUAD CORE E8400 - 3.00GHz', 'ativo'),
(714, 'INTEL QUAD Q9300 - 2.50GHz', 'ativo'),
(715, 'INTEL XEON - 3.2GHz', 'ativo'),
(716, 'INTEL XEON 5150 - 2.66GHz', 'ativo'),
(717, 'INTEL XEON E5620 - 2.40GHz', 'ativo'),
(718, 'INTEL XEON E5649 - 2.53GHz', 'ativo'),
(719, 'INTEL XEON ES620 - 2.40GHz', 'ativo'),
(720, 'INTEL XEON W350 - 3.30GHz', 'ativo'),
(721, 'INTEL XEON W3503 - 2.40GHz', 'ativo'),
(722, 'INTEL XEON X3220 - 2.40GHz', 'ativo'),
(723, 'INTEL XEON X5680 - 3.33GHz', 'ativo'),
(724, 'MACINTOSH G3 350', 'ativo'),
(725, 'MACINTOSHG3 350', 'ativo'),
(726, 'RYZEN 7 PRO 57500G', 'ativo'),
(727, 'INTEL CORE I5 - 10400 - 2.9GHz', 'ativo'),
(728, 'Intel Core i5 - 11400 - 2.60GHz', 'ativo'),
(729, 'AMD RYZEN 5 PRO 4650GF 3.30GHz', 'ativo'),
(730, 'Intel Core i5 - 760 - 2.80 GHz', 'ativo'),
(731, 'AMD A6-7480 Dual Core - 3.8Ghz ', 'ativo');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`idCargo`);

--
-- Índices para tabela `computador`
--
ALTER TABLE `computador`
  ADD PRIMARY KEY (`idComputador`),
  ADD KEY `idFuncionario` (`idFuncionario`),
  ADD KEY `idSetor` (`idSetor`),
  ADD KEY `idTipoProcessador` (`idTipoProcessador`);

--
-- Índices para tabela `conserto`
--
ALTER TABLE `conserto`
  ADD PRIMARY KEY (`idConserto`),
  ADD KEY `idComputador` (`idComputador`),
  ADD KEY `idImpressora` (`idImpressora`),
  ADD KEY `idFuncionario` (`idFuncionario`);

--
-- Índices para tabela `divisao`
--
ALTER TABLE `divisao`
  ADD PRIMARY KEY (`idDivisao`);

--
-- Índices para tabela `entraMaterial`
--
ALTER TABLE `entraMaterial`
  ADD PRIMARY KEY (`idEntMat`),
  ADD KEY `idMaterial` (`idMaterial`),
  ADD KEY `idFuncionario` (`idFuncionario`);

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`idFuncionario`),
  ADD KEY `idCargo` (`idCargo`),
  ADD KEY `idAcesso` (`idAcesso`);

--
-- Índices para tabela `hdTipos`
--
ALTER TABLE `hdTipos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `historico`
--
ALTER TABLE `historico`
  ADD PRIMARY KEY (`idHistorico`),
  ADD KEY `idComputador` (`idComputador`),
  ADD KEY `idNotebook` (`idNotebook`),
  ADD KEY `idImpressora` (`idImpressora`),
  ADD KEY `idFuncionario` (`idFuncionario`);

--
-- Índices para tabela `impressoras`
--
ALTER TABLE `impressoras`
  ADD PRIMARY KEY (`idImpressora`),
  ADD KEY `idFuncionario` (`idFuncionario`),
  ADD KEY `idSetor` (`idSetor`);

--
-- Índices para tabela `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`idMaterial`);

--
-- Índices para tabela `modeloImpressora`
--
ALTER TABLE `modeloImpressora`
  ADD PRIMARY KEY (`idModelo`);

--
-- Índices para tabela `monitor`
--
ALTER TABLE `monitor`
  ADD PRIMARY KEY (`idMonitor`),
  ADD KEY `idComputador` (`idComputador`);

--
-- Índices para tabela `notebook`
--
ALTER TABLE `notebook`
  ADD PRIMARY KEY (`idNotebook`),
  ADD KEY `idFuncionario` (`idFuncionario`),
  ADD KEY `idSetor` (`idSetor`),
  ADD KEY `idTipoProcessador` (`idTipoProcessador`);

--
-- Índices para tabela `saiMaterial`
--
ALTER TABLE `saiMaterial`
  ADD PRIMARY KEY (`idSaiMat`),
  ADD KEY `idMaterial` (`idMaterial`),
  ADD KEY `idConserto` (`idConserto`),
  ADD KEY `idSetor` (`idSetor`),
  ADD KEY `idFuncionario` (`idFuncionario`);

--
-- Índices para tabela `setor`
--
ALTER TABLE `setor`
  ADD PRIMARY KEY (`idSetor`),
  ADD KEY `idDivisao` (`idDivisao`);

--
-- Índices para tabela `tipoAcesso`
--
ALTER TABLE `tipoAcesso`
  ADD PRIMARY KEY (`idAcesso`);

--
-- Índices para tabela `tipoProcessadores`
--
ALTER TABLE `tipoProcessadores`
  ADD PRIMARY KEY (`idTipoProcessador`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cargo`
--
ALTER TABLE `cargo`
  MODIFY `idCargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `computador`
--
ALTER TABLE `computador`
  MODIFY `idComputador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `conserto`
--
ALTER TABLE `conserto`
  MODIFY `idConserto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `divisao`
--
ALTER TABLE `divisao`
  MODIFY `idDivisao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `entraMaterial`
--
ALTER TABLE `entraMaterial`
  MODIFY `idEntMat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `idFuncionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `hdTipos`
--
ALTER TABLE `hdTipos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de tabela `historico`
--
ALTER TABLE `historico`
  MODIFY `idHistorico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `impressoras`
--
ALTER TABLE `impressoras`
  MODIFY `idImpressora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT de tabela `material`
--
ALTER TABLE `material`
  MODIFY `idMaterial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de tabela `modeloImpressora`
--
ALTER TABLE `modeloImpressora`
  MODIFY `idModelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `monitor`
--
ALTER TABLE `monitor`
  MODIFY `idMonitor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `notebook`
--
ALTER TABLE `notebook`
  MODIFY `idNotebook` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `saiMaterial`
--
ALTER TABLE `saiMaterial`
  MODIFY `idSaiMat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `setor`
--
ALTER TABLE `setor`
  MODIFY `idSetor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=502;

--
-- AUTO_INCREMENT de tabela `tipoAcesso`
--
ALTER TABLE `tipoAcesso`
  MODIFY `idAcesso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `tipoProcessadores`
--
ALTER TABLE `tipoProcessadores`
  MODIFY `idTipoProcessador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=732;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `computador`
--
ALTER TABLE `computador`
  ADD CONSTRAINT `computador_ibfk_1` FOREIGN KEY (`idFuncionario`) REFERENCES `funcionario` (`idFuncionario`),
  ADD CONSTRAINT `computador_ibfk_2` FOREIGN KEY (`idSetor`) REFERENCES `setor` (`idSetor`),
  ADD CONSTRAINT `computador_ibfk_3` FOREIGN KEY (`idTipoProcessador`) REFERENCES `tipoProcessadores` (`idTipoProcessador`);

--
-- Limitadores para a tabela `conserto`
--
ALTER TABLE `conserto`
  ADD CONSTRAINT `conserto_ibfk_1` FOREIGN KEY (`idComputador`) REFERENCES `computador` (`idComputador`),
  ADD CONSTRAINT `conserto_ibfk_2` FOREIGN KEY (`idImpressora`) REFERENCES `impressoras` (`idImpressora`),
  ADD CONSTRAINT `conserto_ibfk_3` FOREIGN KEY (`idFuncionario`) REFERENCES `funcionario` (`idFuncionario`);

--
-- Limitadores para a tabela `entraMaterial`
--
ALTER TABLE `entraMaterial`
  ADD CONSTRAINT `entraMaterial_ibfk_1` FOREIGN KEY (`idMaterial`) REFERENCES `material` (`idMaterial`),
  ADD CONSTRAINT `entraMaterial_ibfk_2` FOREIGN KEY (`idFuncionario`) REFERENCES `funcionario` (`idFuncionario`);

--
-- Limitadores para a tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`idCargo`) REFERENCES `cargo` (`idCargo`),
  ADD CONSTRAINT `funcionario_ibfk_2` FOREIGN KEY (`idAcesso`) REFERENCES `tipoAcesso` (`idAcesso`);

--
-- Limitadores para a tabela `historico`
--
ALTER TABLE `historico`
  ADD CONSTRAINT `historico_ibfk_1` FOREIGN KEY (`idComputador`) REFERENCES `computador` (`idComputador`),
  ADD CONSTRAINT `historico_ibfk_2` FOREIGN KEY (`idNotebook`) REFERENCES `notebook` (`idNotebook`),
  ADD CONSTRAINT `historico_ibfk_3` FOREIGN KEY (`idImpressora`) REFERENCES `impressoras` (`idImpressora`),
  ADD CONSTRAINT `historico_ibfk_4` FOREIGN KEY (`idFuncionario`) REFERENCES `funcionario` (`idFuncionario`);

--
-- Limitadores para a tabela `impressoras`
--
ALTER TABLE `impressoras`
  ADD CONSTRAINT `impressoras_ibfk_1` FOREIGN KEY (`idFuncionario`) REFERENCES `funcionario` (`idFuncionario`),
  ADD CONSTRAINT `impressoras_ibfk_2` FOREIGN KEY (`idSetor`) REFERENCES `setor` (`idSetor`);

--
-- Limitadores para a tabela `monitor`
--
ALTER TABLE `monitor`
  ADD CONSTRAINT `monitor_ibfk_1` FOREIGN KEY (`idComputador`) REFERENCES `computador` (`idComputador`);

--
-- Limitadores para a tabela `notebook`
--
ALTER TABLE `notebook`
  ADD CONSTRAINT `notebook_ibfk_1` FOREIGN KEY (`idFuncionario`) REFERENCES `funcionario` (`idFuncionario`),
  ADD CONSTRAINT `notebook_ibfk_2` FOREIGN KEY (`idSetor`) REFERENCES `setor` (`idSetor`),
  ADD CONSTRAINT `notebook_ibfk_3` FOREIGN KEY (`idTipoProcessador`) REFERENCES `tipoProcessadores` (`idTipoProcessador`);

--
-- Limitadores para a tabela `saiMaterial`
--
ALTER TABLE `saiMaterial`
  ADD CONSTRAINT `saiMaterial_ibfk_1` FOREIGN KEY (`idMaterial`) REFERENCES `material` (`idMaterial`),
  ADD CONSTRAINT `saiMaterial_ibfk_2` FOREIGN KEY (`idConserto`) REFERENCES `conserto` (`idConserto`),
  ADD CONSTRAINT `saiMaterial_ibfk_3` FOREIGN KEY (`idSetor`) REFERENCES `setor` (`idSetor`),
  ADD CONSTRAINT `saiMaterial_ibfk_4` FOREIGN KEY (`idFuncionario`) REFERENCES `funcionario` (`idFuncionario`);

--
-- Limitadores para a tabela `setor`
--
ALTER TABLE `setor`
  ADD CONSTRAINT `setor_ibfk_1` FOREIGN KEY (`idDivisao`) REFERENCES `divisao` (`idDivisao`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
