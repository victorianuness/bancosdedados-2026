-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 03-Jun-2026 às 21:18
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `loja`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `iddacategoria` int(11) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `descricao` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`iddacategoria`, `categoria`, `descricao`) VALUES
(1, 'roupas de verão', 'regata,vestidos,shorta, etc...'),
(2, 'Roupas de inverno', 'Roupas dedicadas para um clima frio'),
(3, 'Formal e social', 'Roupas para o ambiente corporativo'),
(4, 'Esporte', 'Roupas para a prática de exercícios'),
(5, 'Calçados', 'Suporte para o dia a dia');

-- --------------------------------------------------------

--
-- Estrutura da tabela `itens`
--

CREATE TABLE `itens` (
  `idproduto` int(11) NOT NULL,
  `iddacategoria` int(11) DEFAULT NULL,
  `nomeproduto` varchar(100) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `qntde` int(11) NOT NULL,
  `datacad` date NOT NULL,
  `ativo` bit(1) NOT NULL,
  `marca` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `itens`
--

INSERT INTO `itens` (`idproduto`, `iddacategoria`, `nomeproduto`, `preco`, `qntde`, `datacad`, `ativo`, `marca`) VALUES
(1, 1, 'Vestido de flor sem mangas', '85.00', 15, '2026-05-30', b'1', 'Zara'),
(2, 1, 'Regata Roxa com estampa de gato', '50.00', 25, '2026-05-30', b'1', 'c&a'),
(3, 1, 'Shorts Jeans', '110.00', 55, '2026-05-30', b'1', 'Renner'),
(4, 2, 'Cachecol Rosa', '50.00', 10, '2026-05-30', b'1', 'Riachuelo'),
(5, 2, 'Meias estampadas', '10.00', 20, '2026-05-30', b'1', 'Pernambucanas'),
(6, 2, 'Calça Moletom', '60.00', 35, '2026-05-30', b'1', 'c&a'),
(7, 3, 'Terno azul marinho', '170.00', 40, '2026-05-30', b'1', 'Camisaria FMW'),
(8, 3, 'Blazer Vinho', '200.00', 30, '2026-05-30', b'1', 'Channel'),
(9, 3, 'Camisa listrada de botão', '30.00', 15, '2026-05-30', b'1', 'Prada'),
(10, 4, 'Top Preto', '35.00', 25, '2026-05-30', b'1', 'Nike'),
(11, 4, 'legging', '23.00', 30, '2026-05-30', b'1', 'Adidas'),
(12, 4, 'Shorts de corrida', '15.00', 10, '2026-05-30', b'1', 'Centauro'),
(13, 5, 'Tênis de corrida', '250.00', 30, '2026-05-30', b'1', 'Puma'),
(14, 5, 'Chinelos', '25.00', 25, '2026-05-30', b'1', 'Havaianas'),
(15, 5, 'Sapatilha Vermelha', '75.00', 45, '2026-05-30', b'1', 'Constance');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`iddacategoria`);

--
-- Índices para tabela `itens`
--
ALTER TABLE `itens`
  ADD PRIMARY KEY (`idproduto`),
  ADD KEY `iddacategoria` (`iddacategoria`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `iddacategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `itens`
--
ALTER TABLE `itens`
  MODIFY `idproduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `itens`
--
ALTER TABLE `itens`
  ADD CONSTRAINT `itens_ibfk_1` FOREIGN KEY (`iddacategoria`) REFERENCES `categoria` (`iddacategoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
