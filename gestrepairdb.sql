-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 17-Jul-2017 às 15:27
-- Versão do servidor: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gestrepair`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `infouser` (IN `iduser` INT)  BEGIN 
select tbauth.username as username, tbauth.password as password, tbuser.nome as nome, tbuser.morada as morada, tbuser.codPostal as codPostal, tbuser.localidade as localidade, tbuser.email as email, tbuser.nif as nif, tbuser.contacto as contacto, tbroleuser.nomeRole 
from tbl_autenticacao tbauth, tbl_utilizadores tbuser, tbl_roles_utilizador tbroleuser 
WHERE tbauth.utilizador = tbuser.numUtilizador 
and tbauth.role = tbroleuser.idRole
and tbauth.utilizador = iduser 
LIMIT 1;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `listuser` ()  BEGIN 
select `tbuser`.`numUtilizador` as `numutilizador`, `tbauth`.`username` as `username`, `tbuser.nome` as `nome`, `tbuser`.`morada` as `morada`, `tbuser`.`codPostal` as `codPostal`, `tbuser`.`localidade` as `localidade`, `tbuser`.`email` as `email`, `tbuser`.`nif` as `nif`, `tbuser`.`contacto` as `contacto`, `tbroleuser`.`nomeRole` 
from `tbl_autenticacao` `tbauth`, `tbl_utilizadores` `tbuser`, `tbl_roles_utilizador` `tbroleuser` 
WHERE `tbauth`.`utilizador` = `tbuser`.`numUtilizador`
and `tbauth`.`role` = `tbroleuser`.`idRole`;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_combustivel`
--

CREATE TABLE `tbl_combustivel` (
  `idCombustivel` int(11) NOT NULL,
  `Combustivel` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbl_combustivel`
--

INSERT INTO `tbl_combustivel` (`idCombustivel`, `Combustivel`) VALUES
(1, 'Gasolina Sem-Chumbo 95'),
(2, 'Gasoleo'),
(3, 'Gasolina Sem Chumbo 98'),
(4, 'GPL');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_encomenda`
--

CREATE TABLE `tbl_encomenda` (
  `id_encomenda` int(11) NOT NULL,
  `fornecedor` int(11) NOT NULL,
  `peca` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_estado_orcamento`
--

CREATE TABLE `tbl_estado_orcamento` (
  `id_estadoOrc` int(11) NOT NULL,
  `estadoOrcamento` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_estado_reparacao`
--

CREATE TABLE `tbl_estado_reparacao` (
  `idEstado` int(11) NOT NULL,
  `estado` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_fornecedor`
--

CREATE TABLE `tbl_fornecedor` (
  `id_fornecedor` int(11) NOT NULL,
  `nomeFornecedor` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_funcionario`
--

CREATE TABLE `tbl_funcionario` (
  `idFunc` int(11) NOT NULL,
  `numUser` int(11) NOT NULL,
  `activo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_marcaveiculo`
--

CREATE TABLE `tbl_marcaveiculo` (
  `idMarca` int(11) NOT NULL,
  `marca` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbl_marcaveiculo`
--

INSERT INTO `tbl_marcaveiculo` (`idMarca`, `marca`) VALUES
(4, 'Ford'),
(1, 'Hyundai'),
(3, 'Mercedes Benz'),
(2, 'Volvo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_modeloveiculo`
--

CREATE TABLE `tbl_modeloveiculo` (
  `idModelo` int(11) NOT NULL,
  `modeloVeiculo` varchar(25) NOT NULL,
  `marca` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbl_modeloveiculo`
--

INSERT INTO `tbl_modeloveiculo` (`idModelo`, `modeloVeiculo`, `marca`) VALUES
(1, 'H1', 1),
(2, 'S80', 2),
(3, 'B180', 3),
(4, 'Fiesta', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_orcamentos`
--

CREATE TABLE `tbl_orcamentos` (
  `id_orcamento` int(11) NOT NULL,
  `veiculo` int(11) NOT NULL,
  `descricao` text NOT NULL,
  `preco` float NOT NULL,
  `aberturaProcesso` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `TempoReparacao` int(11) NOT NULL,
  `estadoorcamento` int(11) NOT NULL,
  `DataFimOrcamento` date NOT NULL,
  `resolucao` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_peca`
--

CREATE TABLE `tbl_peca` (
  `idpeca` int(11) NOT NULL,
  `nome` varchar(25) DEFAULT NULL,
  `descricao` text,
  `quantidade` int(11) DEFAULT NULL,
  `preco` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_pecafornecedor`
--

CREATE TABLE `tbl_pecafornecedor` (
  `idpeca` int(11) NOT NULL,
  `idfornecedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_pecafornecida`
--

CREATE TABLE `tbl_pecafornecida` (
  `idpecafornecida` int(11) NOT NULL,
  `pecafornecida` varchar(50) DEFAULT NULL,
  `fornecedor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_peca_reparacao`
--

CREATE TABLE `tbl_peca_reparacao` (
  `idreparacao` int(11) NOT NULL,
  `idpeca` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_reparacao`
--

CREATE TABLE `tbl_reparacao` (
  `idReparacao` int(11) NOT NULL,
  `veiculo` int(11) DEFAULT NULL,
  `descricao` text,
  `preco` float DEFAULT NULL,
  `estadoReparacao` int(11) DEFAULT NULL,
  `dataInicio` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datafim` datetime DEFAULT NULL,
  `aReparar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_reparacao_funcionario`
--

CREATE TABLE `tbl_reparacao_funcionario` (
  `funcionario` int(11) NOT NULL,
  `reparacao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_role`
--

CREATE TABLE `tbl_role` (
  `idRole` int(11) NOT NULL,
  `nameRole` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Extraindo dados da tabela `tbl_role`
--

INSERT INTO `tbl_role` (`idRole`, `nameRole`) VALUES
(1, 'Administrador'),
(2, 'Gestor'),
(3, 'Funcionário'),
(4, 'Cliente');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_roles_utilizador`
--

CREATE TABLE `tbl_roles_utilizador` (
  `idRole` int(11) NOT NULL,
  `nomeRole` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Extraindo dados da tabela `tbl_roles_utilizador`
--

INSERT INTO `tbl_roles_utilizador` (`idRole`, `nomeRole`) VALUES
(1, 'Administrador'),
(2, 'Gestor'),
(3, 'Funcionário'),
(4, 'Cliente');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_schedule`
--

CREATE TABLE `tbl_schedule` (
  `idSchedule` int(11) NOT NULL,
  `service` int(11) NOT NULL,
  `vehicle` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `isActive` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbl_schedule`
--

INSERT INTO `tbl_schedule` (`idSchedule`, `service`, `vehicle`, `date`, `isActive`) VALUES
(4, 3, 2, '2017-09-21 00:00:00', 1),
(5, 3, 2, '2018-02-01 00:00:00', 1),
(6, 3, 2, '2017-07-26 09:49:00', 1),
(7, 2, 1, '2017-07-19 09:51:00', 1),
(8, 2, 1, '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_service`
--

CREATE TABLE `tbl_service` (
  `idService` int(11) NOT NULL,
  `nameService` varchar(15) NOT NULL,
  `priceService` float NOT NULL,
  `description` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL DEFAULT 'serviceDefphoto.jpeg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Extraindo dados da tabela `tbl_service`
--

INSERT INTO `tbl_service` (`idService`, `nameService`, `priceService`, `description`, `photo`) VALUES
(1, 'Pintura', 25, 'Pintura de Automóveis', 'serviceDefphoto.jpeg'),
(2, 'Revisão', 20, 'Mudança do Oleo', 'serviceDefphoto.jpeg'),
(3, 'Bate-Chapas', 20, 'Reparação ou Substituição de Chapas', 'serviceDefphoto.jpeg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_utilizadores`
--

CREATE TABLE `tbl_utilizadores` (
  `numUtilizador` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `morada` varchar(50) NOT NULL,
  `codPostal` varchar(8) NOT NULL,
  `localidade` varchar(30) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `nif` varchar(9) NOT NULL,
  `contacto` varchar(9) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Extraindo dados da tabela `tbl_utilizadores`
--

INSERT INTO `tbl_utilizadores` (`numUtilizador`, `nome`, `morada`, `codPostal`, `localidade`, `email`, `nif`, `contacto`, `username`, `password`, `token`, `isActive`, `role`) VALUES
(1, 'Rui Barcelos', 'Rua João Maria da Costa n9B', '2090-093', 'Alpiarça', 'aluno18834@ipt.pt', '241804744', '911909758', 'rbarcelos', '46f94c8de14fb36680850768ff1b7f2a', NULL, 1, 1),
(2, 'Miguel Silva', 'Vale de Santarém', '2005-712', 'Vale de Santarém', 'miguelflsilva1995@gmail.com', '123123122', '919191991', 'migsilva', '46f94c8de14fb36680850768ff1b7f2a', NULL, 1, 2),
(3, 'João Bandarra', 'Agrantes', '2022-024', 'Amrantes', 'a@f.pt', '223123121', '987487987', 'bandarra', '46f94c8de14fb36680850768ff1b7f2a', NULL, 1, 3),
(4, 'Pedro Vicente Nunes', 'Matas', '2025-022', 'Santarém', 'b@a.pt', '123212323', '912911911', 'pnunes', '46f94c8de14fb36680850768ff1b7f2a', NULL, 1, 4),
(5, 'João Bandarra', 'Agrantes', '2022-021', 'Amrantes', 'a@f.pt', '123123121', '987487987', 'jbandarra', '46f94c8de14fb36680850768ff1b7f2a', NULL, 1, 4),
(6, 'Oscar Taquara Cardozo', 'Rua x', '2090-099', 'Alpiarça', 'cardozo@ipt.pt', '414999444', '911922923', 'cardozo', '46f94c8de14fb36680850768ff1b7f2a', NULL, 1, 4),
(7, 'João Canoso', 'Alpiarça', '2090-022', 'Alpiarça', 'aluno18839@ipt.pt', '233244255', '911911991', 'jcanoso', '46f94c8de14fb36680850768ff1b7f2a', NULL, 1, 4),
(8, 'Jonas Pistolas', 'Caixa Futebol Campus', '9999-000', 'Seixal', 'jonas@slbenfica.pt', '881132222', '991122991', 'jonas', '46f94c8de14fb36680850768ff1b7f2a', NULL, 0, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_utilizadores_veiculos`
--

CREATE TABLE `tbl_utilizadores_veiculos` (
  `numUser` int(11) NOT NULL,
  `numVei` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Extraindo dados da tabela `tbl_utilizadores_veiculos`
--

INSERT INTO `tbl_utilizadores_veiculos` (`numUser`, `numVei`, `active`) VALUES
(1, 1, 1),
(1, 2, 1),
(2, 3, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_veiculo`
--

CREATE TABLE `tbl_veiculo` (
  `idVeiculo` int(11) NOT NULL,
  `matricula` varchar(255) DEFAULT NULL,
  `modelo` int(11) DEFAULT NULL,
  `potencia` int(11) DEFAULT NULL,
  `cilindrada` int(11) DEFAULT NULL,
  `quilometros` int(11) DEFAULT NULL,
  `combustivel` int(11) DEFAULT NULL,
  `medpneusfrente` varchar(15) DEFAULT NULL,
  `medidaspneusatras` varchar(15) DEFAULT NULL,
  `ano` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbl_veiculo`
--

INSERT INTO `tbl_veiculo` (`idVeiculo`, `matricula`, `modelo`, `potencia`, `cilindrada`, `quilometros`, `combustivel`, `medpneusfrente`, `medidaspneusatras`, `ano`) VALUES
(1, '99-33-HH', 1, 22, 33, 1991999, 1, '99', '99', 1997),
(2, '88-00-XX', 2, 3, 43, 222333, 2, '33', '33', 2004),
(3, '88-22-ZZ', 3, 22, 34, 133223, 1, '33', '22', 2005);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_combustivel`
--
ALTER TABLE `tbl_combustivel`
  ADD PRIMARY KEY (`idCombustivel`);

--
-- Indexes for table `tbl_encomenda`
--
ALTER TABLE `tbl_encomenda`
  ADD PRIMARY KEY (`id_encomenda`),
  ADD KEY `fornecedorfk` (`fornecedor`),
  ADD KEY `pecaencomendafk` (`peca`);

--
-- Indexes for table `tbl_estado_orcamento`
--
ALTER TABLE `tbl_estado_orcamento`
  ADD PRIMARY KEY (`id_estadoOrc`);

--
-- Indexes for table `tbl_estado_reparacao`
--
ALTER TABLE `tbl_estado_reparacao`
  ADD PRIMARY KEY (`idEstado`);

--
-- Indexes for table `tbl_fornecedor`
--
ALTER TABLE `tbl_fornecedor`
  ADD PRIMARY KEY (`id_fornecedor`);

--
-- Indexes for table `tbl_funcionario`
--
ALTER TABLE `tbl_funcionario`
  ADD PRIMARY KEY (`numUser`,`idFunc`),
  ADD KEY `funcfw` (`idFunc`);

--
-- Indexes for table `tbl_marcaveiculo`
--
ALTER TABLE `tbl_marcaveiculo`
  ADD PRIMARY KEY (`idMarca`),
  ADD UNIQUE KEY `marca` (`marca`);

--
-- Indexes for table `tbl_modeloveiculo`
--
ALTER TABLE `tbl_modeloveiculo`
  ADD PRIMARY KEY (`idModelo`),
  ADD KEY `marcafk` (`marca`);

--
-- Indexes for table `tbl_orcamentos`
--
ALTER TABLE `tbl_orcamentos`
  ADD PRIMARY KEY (`id_orcamento`),
  ADD KEY `veic_fk` (`veiculo`);

--
-- Indexes for table `tbl_peca`
--
ALTER TABLE `tbl_peca`
  ADD PRIMARY KEY (`idpeca`);

--
-- Indexes for table `tbl_pecafornecedor`
--
ALTER TABLE `tbl_pecafornecedor`
  ADD PRIMARY KEY (`idpeca`,`idfornecedor`);

--
-- Indexes for table `tbl_pecafornecida`
--
ALTER TABLE `tbl_pecafornecida`
  ADD PRIMARY KEY (`idpecafornecida`),
  ADD KEY `pecafornecidafornecedorFK` (`fornecedor`);

--
-- Indexes for table `tbl_peca_reparacao`
--
ALTER TABLE `tbl_peca_reparacao`
  ADD PRIMARY KEY (`idreparacao`,`idpeca`),
  ADD KEY `pecafk` (`idpeca`);

--
-- Indexes for table `tbl_reparacao`
--
ALTER TABLE `tbl_reparacao`
  ADD PRIMARY KEY (`idReparacao`),
  ADD KEY `veiculoFK` (`veiculo`),
  ADD KEY `estadoFK` (`estadoReparacao`);

--
-- Indexes for table `tbl_reparacao_funcionario`
--
ALTER TABLE `tbl_reparacao_funcionario`
  ADD PRIMARY KEY (`funcionario`,`reparacao`),
  ADD KEY `repFK` (`reparacao`);

--
-- Indexes for table `tbl_role`
--
ALTER TABLE `tbl_role`
  ADD PRIMARY KEY (`idRole`);

--
-- Indexes for table `tbl_roles_utilizador`
--
ALTER TABLE `tbl_roles_utilizador`
  ADD PRIMARY KEY (`idRole`);

--
-- Indexes for table `tbl_schedule`
--
ALTER TABLE `tbl_schedule`
  ADD PRIMARY KEY (`idSchedule`);

--
-- Indexes for table `tbl_service`
--
ALTER TABLE `tbl_service`
  ADD PRIMARY KEY (`idService`);

--
-- Indexes for table `tbl_utilizadores`
--
ALTER TABLE `tbl_utilizadores`
  ADD PRIMARY KEY (`numUtilizador`),
  ADD UNIQUE KEY `numUtilizador` (`numUtilizador`),
  ADD UNIQUE KEY `nif` (`nif`);

--
-- Indexes for table `tbl_utilizadores_veiculos`
--
ALTER TABLE `tbl_utilizadores_veiculos`
  ADD PRIMARY KEY (`numUser`,`numVei`),
  ADD KEY `veifk` (`numVei`);

--
-- Indexes for table `tbl_veiculo`
--
ALTER TABLE `tbl_veiculo`
  ADD PRIMARY KEY (`idVeiculo`),
  ADD UNIQUE KEY `matrícula` (`matricula`),
  ADD KEY `modeloveiculofk` (`modelo`),
  ADD KEY `combustivel` (`combustivel`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_combustivel`
--
ALTER TABLE `tbl_combustivel`
  MODIFY `idCombustivel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_encomenda`
--
ALTER TABLE `tbl_encomenda`
  MODIFY `id_encomenda` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_estado_orcamento`
--
ALTER TABLE `tbl_estado_orcamento`
  MODIFY `id_estadoOrc` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_estado_reparacao`
--
ALTER TABLE `tbl_estado_reparacao`
  MODIFY `idEstado` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_fornecedor`
--
ALTER TABLE `tbl_fornecedor`
  MODIFY `id_fornecedor` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_funcionario`
--
ALTER TABLE `tbl_funcionario`
  MODIFY `idFunc` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_marcaveiculo`
--
ALTER TABLE `tbl_marcaveiculo`
  MODIFY `idMarca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_modeloveiculo`
--
ALTER TABLE `tbl_modeloveiculo`
  MODIFY `idModelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_orcamentos`
--
ALTER TABLE `tbl_orcamentos`
  MODIFY `id_orcamento` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_peca`
--
ALTER TABLE `tbl_peca`
  MODIFY `idpeca` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_pecafornecedor`
--
ALTER TABLE `tbl_pecafornecedor`
  MODIFY `idpeca` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_pecafornecida`
--
ALTER TABLE `tbl_pecafornecida`
  MODIFY `idpecafornecida` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_peca_reparacao`
--
ALTER TABLE `tbl_peca_reparacao`
  MODIFY `idreparacao` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_reparacao`
--
ALTER TABLE `tbl_reparacao`
  MODIFY `idReparacao` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_role`
--
ALTER TABLE `tbl_role`
  MODIFY `idRole` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_roles_utilizador`
--
ALTER TABLE `tbl_roles_utilizador`
  MODIFY `idRole` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_schedule`
--
ALTER TABLE `tbl_schedule`
  MODIFY `idSchedule` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_service`
--
ALTER TABLE `tbl_service`
  MODIFY `idService` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_utilizadores`
--
ALTER TABLE `tbl_utilizadores`
  MODIFY `numUtilizador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_veiculo`
--
ALTER TABLE `tbl_veiculo`
  MODIFY `idVeiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
