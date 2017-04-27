-- MySQL Script generated by MySQL Workbench
-- Thu Apr 20 22:04:04 2017
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema DemoReact
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `DemoReact` ;

-- -----------------------------------------------------
-- Schema DemoReact
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `DemoReact` DEFAULT CHARACTER SET utf8 ;
USE `DemoReact` ;

-- -----------------------------------------------------
-- Table `DemoReact`.`Utilisateur`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DemoReact`.`Utilisateur` ;

CREATE TABLE IF NOT EXISTS `DemoReact`.`Utilisateur` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) NULL,
  `password` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DemoReact`.`Role`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DemoReact`.`Role` ;

CREATE TABLE IF NOT EXISTS `DemoReact`.`Role` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DemoReact`.`Utilisateur_Role`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DemoReact`.`Utilisateur_Role` ;

CREATE TABLE IF NOT EXISTS `DemoReact`.`Utilisateur_Role` (
  `Utilisateur_id` INT NOT NULL,
  `Role_id` INT NOT NULL,
  PRIMARY KEY (`Utilisateur_id`, `Role_id`),
  CONSTRAINT `fk_Utilisateur_has_Role_Utilisateur`
    FOREIGN KEY (`Utilisateur_id`)
    REFERENCES `DemoReact`.`Utilisateur` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Utilisateur_has_Role_Role1`
    FOREIGN KEY (`Role_id`)
    REFERENCES `DemoReact`.`Role` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_Utilisateur_has_Role_Role1_idx` ON `DemoReact`.`Utilisateur_Role` (`Role_id` ASC);

CREATE INDEX `fk_Utilisateur_has_Role_Utilisateur_idx` ON `DemoReact`.`Utilisateur_Role` (`Utilisateur_id` ASC);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
