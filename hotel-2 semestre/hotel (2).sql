-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18/08/2026 às 05:23
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `hotel`
--
CREATE DATABASE IF NOT EXISTS `hotel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `hotel`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE `cliente` (
  `codcliente` int(11) NOT NULL,
  `cliente` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `cpf` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`codcliente`, `cliente`, `email`, `cpf`) VALUES
(1, 'Victoria xavier carvalho', 'victoriaamericonunes@email.com', '111.222.333-44'),
(2, 'rebeca santos silva', 'rebeca@gmail.com', '123.456.788-9'),
(3, 'Harry Styles', 'harry0@gmail.com', '111.542.333-44'),
(4, 'louis tomlinson', 'louis@gmail.com', '999.222.363-55'),
(5, 'liam payne', 'Liam@gmail.com', '888.777.555-22'),
(6, 'nial horan', 'nial@gmail.com', '123.678.900-55'),
(7, 'zayn malik', 'zayn@gmail.com', '222.333.444-55');

-- --------------------------------------------------------

--
-- Estrutura para tabela `hospedagem`
--

DROP TABLE IF EXISTS `hospedagem`;
CREATE TABLE `hospedagem` (
  `idhospedagem` int(11) NOT NULL,
  `dataentrada` date NOT NULL,
  `datasaida` date DEFAULT NULL,
  `horaentrada` time NOT NULL,
  `horasaida` time DEFAULT NULL,
  `totalhospedagem` decimal(7,2) DEFAULT NULL,
  `codcli` int(11) DEFAULT NULL,
  `codquarto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `hospedagem`
--

INSERT INTO `hospedagem` (`idhospedagem`, `dataentrada`, `datasaida`, `horaentrada`, `horasaida`, `totalhospedagem`, `codcli`, `codquarto`) VALUES
(1, '2026-12-22', '2026-11-25', '11:15:30', '15:15:15', NULL, 1, 13),
(2, '2026-07-01', '2026-06-10', '10:05:30', '13:16:22', NULL, 2, 12),
(3, '2026-02-04', '2026-02-11', '16:05:30', '10:16:52', NULL, 3, 16),
(4, '2026-11-03', '2026-11-11', '08:55:30', '14:17:18', NULL, 4, 15),
(5, '2026-06-01', '2026-08-10', '09:05:30', '11:00:00', NULL, 5, 17),
(6, '2026-08-18', '2026-08-12', '12:52:35', '15:12:56', NULL, 6, 20),
(7, '2026-07-02', '2026-07-04', '09:17:46', '16:17:46', NULL, 7, 18);

-- --------------------------------------------------------

--
-- Estrutura para tabela `quarto`
--

DROP TABLE IF EXISTS `quarto`;
CREATE TABLE `quarto` (
  `codquarto` int(11) NOT NULL,
  `quarto` varchar(255) NOT NULL,
  `andar` varchar(100) NOT NULL,
  `tipo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `quarto`
--

INSERT INTO `quarto` (`codquarto`, `quarto`, `andar`, `tipo`) VALUES
(1, '11', '1º Andar', 'Individual'),
(2, '12', '1º Andar', 'Casal'),
(3, '13', '1º Andar', 'Família + Cama Solteiro'),
(4, '14', '1º Andar', 'Família + 2 Camas Solteiro'),
(5, '21', '2º Andar', 'Família + Cama Solteiro'),
(6, '22', '2º Andar', 'Família + 3 Camas Solteiro'),
(7, '23', '2º Andar', 'Mega Família'),
(8, '24', '2º Andar', 'Suíte Presidencial'),
(9, '31', '3º Andar', 'Família + Cama Solteiro'),
(11, '33', '3º Andar', 'Familia + 4 camas'),
(12, '34', '3º Andar', 'Familia + 7 camas'),
(13, '41', '4 andar', 'Casal + 1 cama'),
(14, '42', '4 andar', 'Familia + 3 camas'),
(15, '43', '4 andar', 'Casal + 1 cama solteiro + 2 camas'),
(16, '44', '4 andar', 'Casal duplo + solteiro + 3 camas casal'),
(17, '51', '5 andar', 'Familia + 5 camas'),
(18, '52', '5 andar', 'Suite  + 1 cama casal'),
(19, '53', '5 andar', 'Suite + 2 camas'),
(20, '54', '5 andar', 'Suite + 3 camas casal');

-- --------------------------------------------------------

--
-- Estrutura para tabela `servico`
--

DROP TABLE IF EXISTS `servico`;
CREATE TABLE `servico` (
  `codservico` int(11) NOT NULL,
  `servico` varchar(255) NOT NULL,
  `qtde` int(11) NOT NULL,
  `valor` decimal(7,2) NOT NULL,
  `tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `servico`
--

INSERT INTO `servico` (`codservico`, `servico`, `qtde`, `valor`, `tipo`) VALUES
(1, 'Coca-cola Zero', 10, 100.00, 'Bebidas'),
(2, 'M&M', 20, 6.50, 'Doces'),
(3, 'Energético', 20, 10.00, 'Bebidas'),
(4, 'Salgadinho', 13, 4.00, 'Comidas'),
(5, 'Spa', 0, 89.00, 'lazer'),
(6, 'Academia', 0, 30.00, 'Lazer'),
(7, 'Torta de morango', 15, 35.50, 'Doces'),
(8, 'Àgua 2l', 7, 10.00, 'Bebidas'),
(9, 'Sauna', 0, 35.00, 'Lazer'),
(10, 'Whisky', 50, 90.00, 'Bebidas'),
(11, 'Vinho tinto', 85, 57.00, 'Bebidas'),
(12, 'Massagem casal', 0, 258.00, 'lazer'),
(13, 'Coca Cola Lata', 15, 5.00, 'Bebidas'),
(14, 'Coca Cola 2L', 20, 20.00, 'Bebidas'),
(15, 'Coca Cola 600mL', 30, 8.00, 'Bebidas'),
(16, 'Cerveja Lata - Skol', 40, 10.50, 'Bebidas'),
(17, 'Cerveja Lata - Brahma', 50, 12.00, 'Bebidas'),
(18, 'Cerveja Lata - Corona', 60, 7.00, 'Bebidas'),
(19, 'Massagem Simples', 0, 100.00, 'lazer'),
(20, 'Massagem Completa', 0, 450.00, 'lazer'),
(21, 'Almoço - Buffet Completo', 0, 69.00, 'Alimentação'),
(22, 'Jantar - Buffet Completo', 0, 69.00, 'Alimentação'),
(23, 'Café da Manhã', 0, 39.00, 'Alimentação'),
(24, 'Porção Fritas Pequena', 0, 25.00, 'Comidas'),
(25, 'Porção Fritas Média', 0, 35.00, 'Comidas'),
(26, 'Porção Fritas Grande', 0, 55.00, 'Bar Piscina'),
(27, 'coca-cola zero', 7, 5.90, 'Bebidas'),
(28, 'Água 2l', 20, 5.90, 'Bebidas');

-- --------------------------------------------------------

--
-- Estrutura para tabela `servicoshospedagem`
--

DROP TABLE IF EXISTS `servicoshospedagem`;
CREATE TABLE `servicoshospedagem` (
  `idhospedagem` int(11) DEFAULT NULL,
  `idservico` int(11) DEFAULT NULL,
  `dataservico` date DEFAULT NULL,
  `horaservico` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `servicoshospedagem`
--

INSERT INTO `servicoshospedagem` (`idhospedagem`, `idservico`, `dataservico`, `horaservico`) VALUES
(1, 6, '2026-11-19', '17:01:18'),
(1, 3, '2026-11-19', '07:00:20'),
(1, 4, '2026-11-19', '17:00:20'),
(1, 5, '2026-11-19', '16:00:20'),
(2, 1, '2026-11-13', '06:00:20'),
(2, 11, '2026-11-13', '21:00:20'),
(2, 2, '2026-11-13', '13:00:20'),
(2, 7, '2026-11-13', '11:00:20'),
(3, 3, '2026-05-05', '17:06:22'),
(3, 8, '2026-05-06', '08:22:28'),
(3, 6, '2026-05-04', '05:00:28'),
(3, 2, '2026-05-13', '148:22:28'),
(4, 4, '2026-11-21', '16:00:20'),
(4, 10, '2026-02-13', '21:00:20'),
(4, 9, '2026-01-26', '15:00:20'),
(4, 7, '2026-06-23', '14:00:20'),
(5, 4, '2026-09-05', '07:01:18'),
(5, 2, '2026-09-26', '17:00:20'),
(5, 12, '2026-09-30', '18:00:20'),
(5, 9, '2026-09-12', '15:00:20'),
(6, 12, '2026-08-03', '15:02:05'),
(6, 14, '2026-08-11', '15:02:05'),
(6, 26, '2026-08-17', '00:00:00'),
(6, 12, '2026-08-03', '15:02:05'),
(6, 14, '2026-08-11', '15:02:05'),
(6, 26, '2026-08-17', '00:00:00'),
(7, 6, '2026-08-04', '03:19:17'),
(7, 19, '2026-08-05', '09:19:17'),
(7, 14, '2026-08-06', '00:00:00'),
(7, 6, '2026-08-04', '03:19:17'),
(7, 19, '2026-08-05', '09:19:17'),
(7, 14, '2026-08-06', '00:25:39');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`codcliente`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- Índices de tabela `hospedagem`
--
ALTER TABLE `hospedagem`
  ADD PRIMARY KEY (`idhospedagem`),
  ADD KEY `codcli` (`codcli`),
  ADD KEY `codquarto` (`codquarto`);

--
-- Índices de tabela `quarto`
--
ALTER TABLE `quarto`
  ADD PRIMARY KEY (`codquarto`);
ALTER TABLE `quarto` ADD FULLTEXT KEY `andar` (`andar`);
ALTER TABLE `quarto` ADD FULLTEXT KEY `tipo` (`tipo`);

--
-- Índices de tabela `servico`
--
ALTER TABLE `servico`
  ADD PRIMARY KEY (`codservico`);

--
-- Índices de tabela `servicoshospedagem`
--
ALTER TABLE `servicoshospedagem`
  ADD KEY `idhospedagem` (`idhospedagem`),
  ADD KEY `idservico` (`idservico`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `codcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `hospedagem`
--
ALTER TABLE `hospedagem`
  MODIFY `idhospedagem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `quarto`
--
ALTER TABLE `quarto`
  MODIFY `codquarto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `servico`
--
ALTER TABLE `servico`
  MODIFY `codservico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `hospedagem`
--
ALTER TABLE `hospedagem`
  ADD CONSTRAINT `hospedagem_ibfk_1` FOREIGN KEY (`codcli`) REFERENCES `cliente` (`codcliente`),
  ADD CONSTRAINT `hospedagem_ibfk_2` FOREIGN KEY (`codquarto`) REFERENCES `quarto` (`codquarto`);

--
-- Restrições para tabelas `servicoshospedagem`
--
ALTER TABLE `servicoshospedagem`
  ADD CONSTRAINT `servicoshospedagem_ibfk_1` FOREIGN KEY (`idhospedagem`) REFERENCES `hospedagem` (`idhospedagem`),
  ADD CONSTRAINT `servicoshospedagem_ibfk_2` FOREIGN KEY (`idservico`) REFERENCES `servico` (`codservico`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
