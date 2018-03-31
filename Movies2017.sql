-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema movies2017
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema movies2017
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `movies2017` DEFAULT CHARACTER SET utf8 ;
USE `movies2017` ;

-- -----------------------------------------------------
-- Table `movies2017`.`awards`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `movies2017`.`awards` ;

CREATE TABLE IF NOT EXISTS `movies2017`.`awards` (
  `idAward` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `about` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idAward`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `movies2017`.`movies`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `movies2017`.`movies` ;

CREATE TABLE IF NOT EXISTS `movies2017`.`movies` (
  `idMovies` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NOT NULL,
  `year` VARCHAR(45) NOT NULL,
  `runtime` INT NULL DEFAULT NULL,
  `imdb-rating` FLOAT NULL DEFAULT NULL,
  `metascore` VARCHAR(45) NULL DEFAULT NULL,
  `description` TEXT NULL DEFAULT NULL,
  `gross` INT NULL DEFAULT NULL,
  PRIMARY KEY (`idMovies`),
  UNIQUE INDEX `title_UNIQUE` (`title` ASC))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `movies2017`.`awards_movies`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `movies2017`.`awards_movies` ;

CREATE TABLE IF NOT EXISTS `movies2017`.`awards_movies` (
  `Award_idAward` INT NOT NULL,
  `Movies_idMovies` INT NOT NULL,
  PRIMARY KEY (`Award_idAward`, `Movies_idMovies`),
  INDEX `fk_Award_has_Movies_Movies1_idx` (`Movies_idMovies` ASC),
  INDEX `fk_Award_has_Movies_Award1_idx` (`Award_idAward` ASC),
  CONSTRAINT `fk_Award_has_Movies_Award1`
    FOREIGN KEY (`Award_idAward`)
    REFERENCES `movies2017`.`awards` (`idAward`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Award_has_Movies_Movies1`
    FOREIGN KEY (`Movies_idMovies`)
    REFERENCES `movies2017`.`movies` (`idMovies`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `movies2017`.`company`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `movies2017`.`company` ;

CREATE TABLE IF NOT EXISTS `movies2017`.`company` (
  `idCompany` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `about` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`idCompany`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `movies2017`.`directors`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `movies2017`.`directors` ;

CREATE TABLE IF NOT EXISTS `movies2017`.`directors` (
  `idDirectors` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `about` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`idDirectors`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `movies2017`.`genres`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `movies2017`.`genres` ;

CREATE TABLE IF NOT EXISTS `movies2017`.`genres` (
  `idGenres` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idGenres`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `movies2017`.`movies_company`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `movies2017`.`movies_company` ;

CREATE TABLE IF NOT EXISTS `movies2017`.`movies_company` (
  `Movies_idMovies` INT(11) NOT NULL,
  `Company_idCompany` INT(11) NOT NULL,
  PRIMARY KEY (`Movies_idMovies`, `Company_idCompany`),
  INDEX `fk_Movies_has_Company_Company1_idx` (`Company_idCompany` ASC),
  INDEX `fk_Movies_has_Company_Movies1_idx` (`Movies_idMovies` ASC),
  CONSTRAINT `fk_Movies_has_Company_Company1`
    FOREIGN KEY (`Company_idCompany`)
    REFERENCES `movies2017`.`company` (`idCompany`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Movies_has_Company_Movies1`
    FOREIGN KEY (`Movies_idMovies`)
    REFERENCES `movies2017`.`movies` (`idMovies`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `movies2017`.`movies_directors`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `movies2017`.`movies_directors` ;

CREATE TABLE IF NOT EXISTS `movies2017`.`movies_directors` (
  `Movies_idMovies` INT NOT NULL,
  `Directors_idDirectors` INT NOT NULL,
  PRIMARY KEY (`Movies_idMovies`, `Directors_idDirectors`),
  INDEX `fk_Movies_has_Directors_Directors1_idx` (`Directors_idDirectors` ASC),
  INDEX `fk_Movies_has_Directors_Movies_idx` (`Movies_idMovies` ASC),
  CONSTRAINT `fk_Movies_has_Directors_Directors1`
    FOREIGN KEY (`Directors_idDirectors`)
    REFERENCES `movies2017`.`directors` (`idDirectors`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Movies_has_Directors_Movies`
    FOREIGN KEY (`Movies_idMovies`)
    REFERENCES `movies2017`.`movies` (`idMovies`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `movies2017`.`movies_genres`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `movies2017`.`movies_genres` ;

CREATE TABLE IF NOT EXISTS `movies2017`.`movies_genres` (
  `Movies_idMovies` INT NOT NULL,
  `Genres_idGenres` INT NOT NULL,
  PRIMARY KEY (`Movies_idMovies`, `Genres_idGenres`),
  INDEX `fk_Movies_has_Genres_Genres1_idx` (`Genres_idGenres` ASC),
  INDEX `fk_Movies_has_Genres_Movies1_idx` (`Movies_idMovies` ASC),
  CONSTRAINT `fk_Movies_has_Genres_Genres1`
    FOREIGN KEY (`Genres_idGenres`)
    REFERENCES `movies2017`.`genres` (`idGenres`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Movies_has_Genres_Movies1`
    FOREIGN KEY (`Movies_idMovies`)
    REFERENCES `movies2017`.`movies` (`idMovies`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `movies2017`.`stars`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `movies2017`.`stars` ;

CREATE TABLE IF NOT EXISTS `movies2017`.`stars` (
  `idStars` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `about` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`idStars`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `movies2017`.`movies_stars`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `movies2017`.`movies_stars` ;

CREATE TABLE IF NOT EXISTS `movies2017`.`movies_stars` (
  `Movies_idMovies` INT NOT NULL,
  `Stars_idStars` INT NOT NULL,
  PRIMARY KEY (`Movies_idMovies`, `Stars_idStars`),
  INDEX `fk_Movies_has_Stars_Stars1_idx` (`Stars_idStars` ASC),
  INDEX `fk_Movies_has_Stars_Movies1_idx` (`Movies_idMovies` ASC),
  CONSTRAINT `fk_Movies_has_Stars_Movies1`
    FOREIGN KEY (`Movies_idMovies`)
    REFERENCES `movies2017`.`movies` (`idMovies`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Movies_has_Stars_Stars1`
    FOREIGN KEY (`Stars_idStars`)
    REFERENCES `movies2017`.`stars` (`idStars`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `movies2017`.`region`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `movies2017`.`region` ;

CREATE TABLE IF NOT EXISTS `movies2017`.`region` (
  `idRegion` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idRegion`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `movies2017`.`region_movies`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `movies2017`.`region_movies` ;

CREATE TABLE IF NOT EXISTS `movies2017`.`region_movies` (
  `region_idRegion` INT NOT NULL,
  `movies_idMovies` INT NOT NULL,
  PRIMARY KEY (`region_idRegion`, `movies_idMovies`),
  INDEX `fk_region_has_movies_movies1_idx` (`movies_idMovies` ASC),
  INDEX `fk_region_has_movies_region1_idx` (`region_idRegion` ASC),
  CONSTRAINT `fk_region_has_movies_region1`
    FOREIGN KEY (`region_idRegion`)
    REFERENCES `movies2017`.`region` (`idRegion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_region_has_movies_movies1`
    FOREIGN KEY (`movies_idMovies`)
    REFERENCES `movies2017`.`movies` (`idMovies`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
