-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema customerdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `customerdb` ;

-- -----------------------------------------------------
-- Schema customerdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `customerdb` DEFAULT CHARACTER SET utf8 ;
USE `customerdb` ;

-- -----------------------------------------------------
-- Table `customer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `customer` ;

CREATE TABLE IF NOT EXISTS `customer` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(50) NOT NULL,
  `last_name` VARCHAR(50) NOT NULL,
  `email` VARCHAR(100) NULL,
  `address` VARCHAR(250) NULL,
  `phone` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS customeruser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'customeruser'@'localhost' IDENTIFIED BY 'customeruser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'customeruser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `customer`
-- -----------------------------------------------------
START TRANSACTION;
USE `customerdb`;
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `email`, `address`, `phone`) VALUES (1, 'Douglas', 'Sigmon', 'doug@gmail.com', '123 street', '123-987-432');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `email`, `address`, `phone`) VALUES (2, 'Analaura', 'Cena', NULL, NULL, '234-333-4532');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `email`, `address`, `phone`) VALUES (3, 'Marcelo', 'Johnson', NULL, NULL, '345-345-3322');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `email`, `address`, `phone`) VALUES (4, 'Kody', 'Killabang', NULL, NULL, '456-776-6555');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `email`, `address`, `phone`) VALUES (5, 'Paris', 'Ransom', NULL, NULL, '');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `email`, `address`, `phone`) VALUES (6, 'Juan', 'Rueben', NULL, NULL, '');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `email`, `address`, `phone`) VALUES (7, 'Alex', 'Rangel', NULL, NULL, '');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `email`, `address`, `phone`) VALUES (8, 'Alondra', 'Alovera', NULL, NULL, '');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `email`, `address`, `phone`) VALUES (9, 'Anelle', 'Antwhit', NULL, NULL, '');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `email`, `address`, `phone`) VALUES (10, 'Laura', 'Lozano', NULL, NULL, '');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `email`, `address`, `phone`) VALUES (11, 'Meshell', 'Pumpernickle', NULL, NULL, '');

COMMIT;

