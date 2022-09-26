-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema ordermanagement
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ordermanagement
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ordermanagement` DEFAULT CHARACTER SET utf8 ;
USE `ordermanagement` ;

-- -----------------------------------------------------
-- Table `ordermanagement`.`User`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ordermanagement`.`User` ;

CREATE TABLE IF NOT EXISTS `ordermanagement`.`User` (
  `id_user` INT NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(45) NOT NULL,
  `password` VARCHAR(200) NOT NULL,
  `role` VARCHAR(45) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `age` INT NOT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_user`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ordermanagement`.`Address`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ordermanagement`.`Address` ;

CREATE TABLE IF NOT EXISTS `ordermanagement`.`Address` (
  `id_address` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `street_address` VARCHAR(90) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `state` VARCHAR(45) NOT NULL,
  `country` VARCHAR(45) NOT NULL,
  `zip_code` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_address`),
  INDEX `fk_Address_User_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `fk_Address_User`
    FOREIGN KEY (`user_id`)
    REFERENCES `ordermanagement`.`User` (`id_user`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ordermanagement`.`Product`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ordermanagement`.`Product` ;

CREATE TABLE IF NOT EXISTS `ordermanagement`.`Product` (
  `id_product` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `description` VARCHAR(100) NOT NULL,
  `price` DECIMAL(7,2) NOT NULL,
  `stock` INT NOT NULL,
  `picture` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`id_product`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ordermanagement`.`Order`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ordermanagement`.`Order` ;

CREATE TABLE IF NOT EXISTS `ordermanagement`.`Order` (
  `id_order` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `status` VARCHAR(45) NOT NULL,
  `gift_message` VARCHAR(200) NULL,
  `receiver_name` VARCHAR(45) NOT NULL,
  `total` DECIMAL(9,2) NOT NULL,
  `street_address` VARCHAR(90) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `state` VARCHAR(45) NOT NULL,
  `country` VARCHAR(45) NOT NULL,
  `zip_code` INT NOT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_order`),
  INDEX `fk_Order_User1_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `fk_Order_User1`
    FOREIGN KEY (`user_id`)
    REFERENCES `ordermanagement`.`User` (`id_user`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ordermanagement`.`OrderDetail`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ordermanagement`.`OrderDetail` ;

CREATE TABLE IF NOT EXISTS `ordermanagement`.`OrderDetail` (
  `id_order` INT NOT NULL,
  `id_product` INT NOT NULL,
  `quantity` INT NOT NULL,
  `sold_price` DECIMAL(7,2) NOT NULL,
  `subtotal` DECIMAL(9,2) NOT NULL,
  INDEX `fk_OrderDetail_Order1_idx` (`id_order` ASC) VISIBLE,
  INDEX `fk_OrderDetail_Product1_idx` (`id_product` ASC) VISIBLE,
  PRIMARY KEY (`id_order`, `id_product`),
  CONSTRAINT `fk_OrderDetail_Order1`
    FOREIGN KEY (`id_order`)
    REFERENCES `ordermanagement`.`Order` (`id_order`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_OrderDetail_Product1`
    FOREIGN KEY (`id_product`)
    REFERENCES `ordermanagement`.`Product` (`id_product`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
