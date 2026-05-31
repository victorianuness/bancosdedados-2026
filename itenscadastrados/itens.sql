-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 31/05/2026 às 02:17
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
-- Banco de dados: `produtos`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `itens`
--

CREATE TABLE `itens` (
  `idproduto` int(11) NOT NULL,
  `iddacategoria` int(11) DEFAULT NULL,
  `nomeproduto` varchar(100) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `qntde` int(11) NOT NULL,
  `datacad` date NOT NULL,
  `ativo` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `itens`
--

INSERT INTO `itens` (`idproduto`, `iddacategoria`, `nomeproduto`, `preco`, `qntde`, `datacad`, `ativo`) VALUES
(1, 1, 'Vestido de flor sem mangas', 85.00, 15, '2026-05-30', b'1'),
(2, 1, 'Regata Roxa com estampa de gato', 50.00, 25, '2026-05-30', b'1'),
(3, 1, 'Shorts Jeans', 110.00, 55, '2026-05-30', b'1'),
(4, 2, 'Cachecol Rosa', 50.00, 10, '2026-05-30', b'1'),
(5, 2, 'Meias estampadas', 10.00, 20, '2026-05-30', b'1'),
(6, 2, 'Calça Moletom', 60.00, 35, '2026-05-30', b'1'),
(7, 3, 'Terno azul marinho', 170.00, 40, '2026-05-30', b'1'),
(8, 3, 'Blazer Vinho', 200.00, 30, '2026-05-30', b'1'),
(9, 3, 'Camisa listrada de botão', 30.00, 15, '2026-05-30', b'1'),
(10, 4, 'Top Preto', 35.00, 25, '2026-05-30', b'1'),
(11, 4, 'legging', 23.00, 30, '2026-05-30', b'1'),
(12, 4, 'Shorts de corrida', 15.00, 10, '2026-05-30', b'1'),
(13, 5, 'Tênis de corrida', 250.00, 30, '2026-05-30', b'1'),
(14, 5, 'Chinelos', 25.00, 25, '2026-05-30', b'1'),
(15, 5, 'Sapatilha Vermelha', 75.00, 45, '2026-05-30', b'1');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `itens`
--
ALTER TABLE `itens`
  ADD PRIMARY KEY (`idproduto`),
  ADD KEY `iddacategoria` (`iddacategoria`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `itens`
--
ALTER TABLE `itens`
  MODIFY `idproduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `itens`
--
ALTER TABLE `itens`
  ADD CONSTRAINT `itens_ibfk_1` FOREIGN KEY (`iddacategoria`) REFERENCES `categoria` (`iddacategoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
