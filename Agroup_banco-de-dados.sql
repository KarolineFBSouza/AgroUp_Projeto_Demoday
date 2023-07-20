CREATE DATABASE  IF NOT EXISTS `agroup` /*!40100 DEFAULT CHARACTER SET utf16 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `agroup`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: agroup
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cadastro`
--

DROP TABLE IF EXISTS `cadastro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cadastro` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Email` (`email`),
  KEY `idx_cadastro_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=453 DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cadastro`
--

LOCK TABLES `cadastro` WRITE;
/*!40000 ALTER TABLE `cadastro` DISABLE KEYS */;
INSERT INTO `cadastro` VALUES (202,'exemdddplo@email.com','sobrenome','exemplo','16/04/2002','Murilo100'),(203,'',NULL,'','',''),(254,'muriddlo@gmail.com','soddbrenome','exddemplo','16/04/2002','Muriddlo100'),(255,'muridkdlo@gmail.com','sodkdbrenome','exdkdemplo','16/04/2002','Muriddkklo100'),(302,'front44@gmail.com','Front','erroDeFront','16/04/2002','FRONTERRO'),(303,'front.front@gmail.com',NULL,'Murilooooo','16-04-2002','Murilo1000'),(305,'murilo.gold5200@gmail.com',NULL,'Muriloops','16/04/2002','Murilo1000'),(307,'teste1@gmail.com',NULL,'teste1','16/04/2002','Murilo123'),(352,'Maranhao123@gmail.com',NULL,'Caio','06/12/2004','lalala1234@R'),(402,'renan.felipe5@gmail.com',NULL,'Renan Felipe','16/04/2002','renan12345'),(452,'murilo.gold10@gmail.com',NULL,'Murilo','16/04/2002','Muriloagro10');
/*!40000 ALTER TABLE `cadastro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cadastro_seq`
--

DROP TABLE IF EXISTS `cadastro_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cadastro_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cadastro_seq`
--

LOCK TABLES `cadastro_seq` WRITE;
/*!40000 ALTER TABLE `cadastro_seq` DISABLE KEYS */;
INSERT INTO `cadastro_seq` VALUES (551);
/*!40000 ALTER TABLE `cadastro_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dados da api`
--

DROP TABLE IF EXISTS `dados da api`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dados da api` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `UsuarioID` int NOT NULL,
  `PedidosID` int NOT NULL,
  `FornecedoresID` int NOT NULL,
  `LojasID` int NOT NULL,
  `ProdutosID` int NOT NULL,
  `Redirecionar` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_dados_api_usuario` (`UsuarioID`),
  KEY `idx_dados_api_pedidos` (`PedidosID`),
  KEY `idx_dados_api_fornecedores` (`FornecedoresID`),
  KEY `idx_dados_api_lojas` (`LojasID`),
  KEY `idx_dados_api_produtos` (`ProdutosID`),
  CONSTRAINT `dados da api_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `cadastro` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `dados da api_ibfk_2` FOREIGN KEY (`PedidosID`) REFERENCES `pedidos` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `dados da api_ibfk_3` FOREIGN KEY (`FornecedoresID`) REFERENCES `fornecedores` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `dados da api_ibfk_4` FOREIGN KEY (`LojasID`) REFERENCES `lojas` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `dados da api_ibfk_5` FOREIGN KEY (`ProdutosID`) REFERENCES `produtos` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `dados da api_ibfk_6` FOREIGN KEY (`FornecedoresID`) REFERENCES `fornecedores` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dados da api`
--

LOCK TABLES `dados da api` WRITE;
/*!40000 ALTER TABLE `dados da api` DISABLE KEYS */;
/*!40000 ALTER TABLE `dados da api` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedores`
--

DROP TABLE IF EXISTS `fornecedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedores` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(42) NOT NULL,
  `Endereco` varchar(42) DEFAULT NULL,
  `Cidade` varchar(42) DEFAULT NULL,
  `Estado` varchar(42) DEFAULT NULL,
  `Pais` varchar(42) DEFAULT NULL,
  `Telefone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_fornecedores_nome` (`Nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedores`
--

LOCK TABLES `fornecedores` WRITE;
/*!40000 ALTER TABLE `fornecedores` DISABLE KEYS */;
/*!40000 ALTER TABLE `fornecedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lojas`
--

DROP TABLE IF EXISTS `lojas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lojas` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(42) DEFAULT NULL,
  `URL` varchar(200) DEFAULT NULL,
  `Endereco` varchar(42) DEFAULT NULL,
  `Cidade` varchar(42) DEFAULT NULL,
  `Estado` varchar(42) DEFAULT NULL,
  `Pais` varchar(42) DEFAULT NULL,
  `Avaliacao` decimal(3,2) DEFAULT NULL,
  `Data de Inclusao` date DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_lojas_nome` (`Nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lojas`
--

LOCK TABLES `lojas` WRITE;
/*!40000 ALTER TABLE `lojas` DISABLE KEYS */;
/*!40000 ALTER TABLE `lojas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ClienteID` int NOT NULL,
  `ProdutoID` int NOT NULL,
  `Data do Pedido` date DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `Valor Total` decimal(10,2) DEFAULT NULL,
  `QuantidadePedido` int DEFAULT NULL,
  `Preco Unitario` decimal(10,2) DEFAULT NULL,
  `FornecedoresID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_pedidos_cliente` (`ClienteID`),
  KEY `idx_pedidos_produto` (`ProdutoID`),
  KEY `FornecedoresID` (`FornecedoresID`),
  CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`ClienteID`) REFERENCES `cadastro` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `pedidos_ibfk_2` FOREIGN KEY (`ProdutoID`) REFERENCES `produtos` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `pedidos_ibfk_3` FOREIGN KEY (`FornecedoresID`) REFERENCES `fornecedores` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(42) NOT NULL,
  `Descricao` text,
  `Preco` decimal(10,2) NOT NULL,
  `Loja` varchar(42) NOT NULL,
  `Categoria` varchar(15) NOT NULL,
  `Fabricante` varchar(42) NOT NULL,
  `QuantidadeEstoque` int NOT NULL,
  `Avaliacao` decimal(3,2) DEFAULT NULL,
  `URL` varchar(200) DEFAULT NULL,
  `Data de Inclusao` date DEFAULT NULL,
  `Unidade de Medida` varchar(50) DEFAULT NULL,
  `Fotos` text,
  PRIMARY KEY (`ID`),
  KEY `idx_produtos_nome` (`Nome`),
  KEY `idx_produtos_categoria` (`Categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'exemplo@email.com','sobrenome','exemplo'),(2,'exemplo@email.com','sobrenome','exemplo'),(52,'felipe@gmail.com',NULL,'felipe'),(53,'eu@gmail.com',NULL,'eu');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_seq`
--

DROP TABLE IF EXISTS `user_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_seq`
--

LOCK TABLES `user_seq` WRITE;
/*!40000 ALTER TABLE `user_seq` DISABLE KEYS */;
INSERT INTO `user_seq` VALUES (151);
/*!40000 ALTER TABLE `user_seq` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-03 23:45:12
