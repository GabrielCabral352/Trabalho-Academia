-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 03-Jun-2022 às 02:58
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_academia`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `incricao`
--

CREATE TABLE `incricao` (
  `id` int(11) NOT NULL,
  `cpf_cliente` varchar(20) NOT NULL,
  `fk_plano` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `incricao`
--

INSERT INTO `incricao` (`id`, `cpf_cliente`, `fk_plano`) VALUES
(2, '123.456.789-10', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `plano`
--

CREATE TABLE `plano` (
  `id` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `preco` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `plano`
--

INSERT INTO `plano` (`id`, `nome`, `preco`) VALUES
(1, 'Gold', '50.00'),
(2, 'Platinum', '65.00');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `incricao`
--
ALTER TABLE `incricao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_plano` (`fk_plano`);

--
-- Índices para tabela `plano`
--
ALTER TABLE `plano`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `incricao`
--
ALTER TABLE `incricao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `plano`
--
ALTER TABLE `plano`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `incricao`
--
ALTER TABLE `incricao`
  ADD CONSTRAINT `incricao_ibfk_1` FOREIGN KEY (`fk_plano`) REFERENCES `plano` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
