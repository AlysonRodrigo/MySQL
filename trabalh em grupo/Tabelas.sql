create database db_Action_For_Life;

use db_Action_For_Life;

CREATE TABLE `Usuário` (
	`id` int NOT NULL AUTO_INCREMENT,
	`Nome completo` varchar(50) NOT NULL,
	`Email` varchar(50) NOT NULL,
	`Senha` int(8) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Produto` (
	`id` int NOT NULL AUTO_INCREMENT,
	`Nome` varchar(50) NOT NULL,
	`Preco` DECIMAL(10.2) NOT NULL,
	`Quantidade` int NOT NULL,
	`Frete` DECIMAL(10,2) NOT NULL,
	`id_categoria` int NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Categoria` (
	`id` int NOT NULL AUTO_INCREMENT,
	`Plantas` varchar(50) NOT NULL,
	`Vestuário` varchar(50) NOT NULL,
	`Bijuterias` varchar(50) NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `Produto` ADD CONSTRAINT `Produto_fk0` FOREIGN KEY (`id_categoria`) REFERENCES `Categoria`(`id`);

SELECT * FROM categoria, produto, usuário;