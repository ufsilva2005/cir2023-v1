-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 12-Jul-2024 às 14:55
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
(17, 'prnchefamb', 'AK47042821A0', '10.11.10.34', '00:80:91:AB:7E:94', 'a:1:{i:0;i:31;}', 'não', 'ativo', 'Rede', 7, '2023-07-24', 'SUZANA COSTA VIRGINIO DE SOUZA', '2024-04-25', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ATUALIZAÇÃO DE DADOS', 2, 304),
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
(158, 'PRNCTI13ROUND', 'AK86043269A0', '10.131.131.21', '00:25:36:36:D0:83', 'a:1:{i:0;s:2:\"31\";}', 'não', 'ativo', 'Rede', 5, '2024-06-05', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 383);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `impressoras`
--
ALTER TABLE `impressoras`
  ADD PRIMARY KEY (`idImpressora`),
  ADD KEY `idFuncionario` (`idFuncionario`),
  ADD KEY `idSetor` (`idSetor`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `impressoras`
--
ALTER TABLE `impressoras`
  MODIFY `idImpressora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `impressoras`
--
ALTER TABLE `impressoras`
  ADD CONSTRAINT `impressoras_ibfk_1` FOREIGN KEY (`idFuncionario`) REFERENCES `funcionario` (`idFuncionario`),
  ADD CONSTRAINT `impressoras_ibfk_2` FOREIGN KEY (`idSetor`) REFERENCES `setor` (`idSetor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
