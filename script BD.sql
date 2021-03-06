-- MySQL Script generated by MySQL Workbench
-- Sun Dec 13 15:24:03 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema autocenter
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `autocenter` ;

-- -----------------------------------------------------
-- Schema autocenter
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `autocenter` DEFAULT CHARACTER SET utf8 ;
USE `autocenter` ;

-- -----------------------------------------------------
-- Table `autocenter`.`veiculo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `autocenter`.`veiculo` ;

CREATE TABLE IF NOT EXISTS `autocenter`.`veiculo` (
  `idveiculo` INT NOT NULL AUTO_INCREMENT,
  `marca` VARCHAR(100) NULL DEFAULT NULL,
  `modelo` VARCHAR(100) NULL DEFAULT NULL,
  `cor` VARCHAR(100) NULL DEFAULT NULL,
  `categoria` VARCHAR(100) NULL DEFAULT NULL,
  `ano` INT NULL DEFAULT NULL,
  `motorizacao` CHAR(3) NULL DEFAULT NULL,
  `combustivel` VARCHAR(20) NULL DEFAULT NULL,
  `cambio` VARCHAR(20) NULL DEFAULT NULL,
  `kilometragem` INT NULL DEFAULT NULL,
  `ar` CHAR(3) NULL DEFAULT NULL,
  `vidros` CHAR(3) NULL DEFAULT NULL,
  `direcao` CHAR(3) NULL DEFAULT NULL,
  `portas` INT NULL DEFAULT NULL,
  `placa` CHAR(7) NULL DEFAULT NULL,
  `valor` DECIMAL(7,2) NULL DEFAULT NULL,
  PRIMARY KEY (`idveiculo`))
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
