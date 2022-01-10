DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE IF NOT EXISTS SpotifyClone;
USE SpotifyClone;

CREATE TABLE `planos`(
    `plano_id` INT NOT NULL AUTO_INCREMENT,
    `nome_plano` VARCHAR(50) NOT NULL,
    `valor_plano` DECIMAL(3,2) NOT NULL,
    PRIMARY KEY (`plano_id`)
) engine=InnoDB;

CREATE TABLE `usuario`(
  `usuario_id` INT NOT NULL AUTO_INCREMENT,
  `nome_usuario` VARCHAR(25) NOT NULL DEFAULT 'no name given',
  `idade_usuario` INT NOT NULL,
  `plano_id` INT NOT NULL,
  `data_assinatura` DATETIME NOT NULL,
  PRIMARY KEY (`usuario_id`),
  FOREIGN KEY (`plano_id`) REFERENCES `planos`(`plano_id`)
) engine=InnoDB;

CREATE TABLE `artista`(
  `artista_id` INT NOT NULL AUTO_INCREMENT,
  `nome_artista` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`artista_id`)
) engine=InnoDB;

CREATE TABLE `albuns` (
  `album_id` INT NOT NULL AUTO_INCREMENT,
  `nome_album` VARCHAR(30) NOT NULL DEFAULT 'no name given',
  `ano_lancamento` INT NOT NULL,
  `artista_id` INT NOT NULL,
  `data_assinatura` DATETIME NOT NULL DEFAULT '1993-05-14',
  PRIMARY KEY (`album_id`),
  FOREIGN KEY (`artista_id`) REFERENCES `artista`(`artista_id`)
) engine=InnoDB;

CREATE TABLE `seguindo` (
  `artista_id` INT NOT NULL,
  `usuario_id` INT NOT NULL,
  CONSTRAINT PRIMARY KEY(`artista_id`, `usuario_id`),
  FOREIGN KEY (`artista_id`) REFERENCES `artista`(`artista_id`),
  FOREIGN KEY (`usuario_id`) REFERENCES `usuario`(`usuario_id`)
) engine=InnoDB;

CREATE TABLE `cancoes` (
  `cancao_id` INT NOT NULL AUTO_INCREMENT,
  `nome_cancao` VARCHAR(50) NOT NULL,
  `duracao_cancao` INT NOT NULL DEFAULT 0,
  `album_id` INT NOT NULL,
  PRIMARY KEY (`cancao_id`),
  FOREIGN KEY (`album_id`) REFERENCES `albuns`(`album_id`)

) engine=InnoDB;

CREATE TABLE `historico` (
  `usuario_id` INT NOT NULL,
  `cancao_id` INT NOT NULL,
  `data_reproducao` DATETIME NOT NULL,
  PRIMARY KEY (`cancao_id`, `usuario_id`),
  FOREIGN KEY (`usuario_id`) REFERENCES `usuario`(`usuario_id`),
  FOREIGN KEY (`cancao_id`) REFERENCES `cancoes`(`cancao_id`)
) engine=InnoDB;

