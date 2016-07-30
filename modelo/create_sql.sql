SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

CREATE SCHEMA IF NOT EXISTS `dblp_tratada` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ;
USE `dblp_tratada` ;

-- -----------------------------------------------------
-- Table `dblp_tratada`.`publication`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dblp_tratada`.`publication` (
  `idpublication` INT NOT NULL AUTO_INCREMENT ,
  `key` VARCHAR(200) NULL ,
  `mdate` DATETIME NULL ,
  `publtype` VARCHAR(200) NULL ,
  PRIMARY KEY (`idpublication`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dblp_tratada`.`article`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dblp_tratada`.`article` (
  `idarticle` INT NOT NULL AUTO_INCREMENT ,
  `publication_idpublication` INT NOT NULL ,
  `reviewid` VARCHAR(200) NULL ,
  `rating` VARCHAR(200) NULL ,
  PRIMARY KEY (`idarticle`) ,
  INDEX `fk_article_publication` (`publication_idpublication` ASC) ,
  CONSTRAINT `fk_article_publication`
    FOREIGN KEY (`publication_idpublication` )
    REFERENCES `dblp_tratada`.`publication` (`idpublication` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dblp_tratada`.`inproceedings`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dblp_tratada`.`inproceedings` (
  `idinproceedings` INT NOT NULL AUTO_INCREMENT ,
  `publication_idpublication` INT NOT NULL ,
  PRIMARY KEY (`idinproceedings`) ,
  INDEX `fk_inproceedings_publication1` (`publication_idpublication` ASC) ,
  CONSTRAINT `fk_inproceedings_publication1`
    FOREIGN KEY (`publication_idpublication` )
    REFERENCES `dblp_tratada`.`publication` (`idpublication` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dblp_tratada`.`proceedings`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dblp_tratada`.`proceedings` (
  `idproceedings` INT NOT NULL AUTO_INCREMENT ,
  `publication_idpublication` INT NOT NULL ,
  PRIMARY KEY (`idproceedings`) ,
  INDEX `fk_incollection_publication2` (`publication_idpublication` ASC) ,
  CONSTRAINT `fk_incollection_publication2`
    FOREIGN KEY (`publication_idpublication` )
    REFERENCES `dblp_tratada`.`publication` (`idpublication` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dblp_tratada`.`book`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dblp_tratada`.`book` (
  `idbook` INT NOT NULL AUTO_INCREMENT ,
  `publication_idpublication` INT NOT NULL ,
  PRIMARY KEY (`idbook`) ,
  INDEX `fk_book_publication1` (`publication_idpublication` ASC) ,
  CONSTRAINT `fk_book_publication1`
    FOREIGN KEY (`publication_idpublication` )
    REFERENCES `dblp_tratada`.`publication` (`idpublication` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dblp_tratada`.`incollection`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dblp_tratada`.`incollection` (
  `idincollection` INT NOT NULL AUTO_INCREMENT ,
  `publication_idpublication` INT NOT NULL ,
  PRIMARY KEY (`idincollection`) ,
  INDEX `fk_incollection_publication1` (`publication_idpublication` ASC) ,
  CONSTRAINT `fk_incollection_publication1`
    FOREIGN KEY (`publication_idpublication` )
    REFERENCES `dblp_tratada`.`publication` (`idpublication` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dblp_tratada`.`phdthesis`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dblp_tratada`.`phdthesis` (
  `idphdthesis` INT NOT NULL AUTO_INCREMENT ,
  `publication_idpublication` INT NOT NULL ,
  PRIMARY KEY (`idphdthesis`) ,
  INDEX `fk_phdthesis_publication1` (`publication_idpublication` ASC) ,
  CONSTRAINT `fk_phdthesis_publication1`
    FOREIGN KEY (`publication_idpublication` )
    REFERENCES `dblp_tratada`.`publication` (`idpublication` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dblp_tratada`.`mastersthesis`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dblp_tratada`.`mastersthesis` (
  `idmastersthesis` INT NOT NULL AUTO_INCREMENT ,
  `publication_idpublication` INT NOT NULL ,
  PRIMARY KEY (`idmastersthesis`) ,
  INDEX `fk_mastersthesis_publication1` (`publication_idpublication` ASC) ,
  CONSTRAINT `fk_mastersthesis_publication1`
    FOREIGN KEY (`publication_idpublication` )
    REFERENCES `dblp_tratada`.`publication` (`idpublication` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dblp_tratada`.`www`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dblp_tratada`.`www` (
  `idwww` INT NOT NULL AUTO_INCREMENT ,
  `publication_idpublication` INT NOT NULL ,
  PRIMARY KEY (`idwww`) ,
  INDEX `fk_www_publication1` (`publication_idpublication` ASC) ,
  CONSTRAINT `fk_www_publication1`
    FOREIGN KEY (`publication_idpublication` )
    REFERENCES `dblp_tratada`.`publication` (`idpublication` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dblp_tratada`.`field`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dblp_tratada`.`field` (
  `idfield` INT NOT NULL AUTO_INCREMENT ,
  `publication_idpublication` INT NOT NULL ,
  `editor` VARCHAR(200) NULL ,
  `address` VARCHAR(200) NULL ,
  `booktitle` VARCHAR(200) NULL ,
  `pages` VARCHAR(200) NULL ,
  `journal` VARCHAR(200) NULL ,
  `volume` VARCHAR(200) NULL ,
  `number` VARCHAR(200) NULL ,
  `url` VARCHAR(200) NULL ,
  `ee` VARCHAR(200) NULL ,
  `school` VARCHAR(200) NULL ,
  `cdrom` VARCHAR(200) NULL ,
  `crossref` VARCHAR(200) NULL ,
  `isbn` VARCHAR(45) NULL ,
  `chapter` VARCHAR(200) NULL ,
  PRIMARY KEY (`idfield`) ,
  INDEX `fk_field_publication1` (`publication_idpublication` ASC) ,
  CONSTRAINT `fk_field_publication1`
    FOREIGN KEY (`publication_idpublication` )
    REFERENCES `dblp_tratada`.`publication` (`idpublication` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dblp_tratada`.`title`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dblp_tratada`.`title` (
  `idtitle` INT NOT NULL AUTO_INCREMENT ,
  `field_idfield` INT NOT NULL ,
  `content` VARCHAR(500) NULL ,
  `bibtex` VARCHAR(200) NULL ,
  PRIMARY KEY (`idtitle`) ,
  INDEX `fk_title_field1` (`field_idfield` ASC) ,
  CONSTRAINT `fk_title_field1`
    FOREIGN KEY (`field_idfield` )
    REFERENCES `dblp_tratada`.`field` (`idfield` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dblp_tratada`.`author`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dblp_tratada`.`author` (
  `idauthor` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(200) NULL ,
  `bibtex` VARCHAR(200) NULL ,
  `field_idfield` INT NULL ,
  PRIMARY KEY (`idauthor`) ,
  INDEX `fk_author_field1` (`field_idfield` ASC) ,
  CONSTRAINT `fk_author_field1`
    FOREIGN KEY (`field_idfield` )
    REFERENCES `dblp_tratada`.`field` (`idfield` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dblp_tratada`.`date_ym`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dblp_tratada`.`date_ym` (
  `iddate_ym` INT NOT NULL AUTO_INCREMENT ,
  `month` VARCHAR(20) NULL ,
  `year` INT NULL ,
  `field_idfield` INT NULL ,
  PRIMARY KEY (`iddate_ym`) ,
  INDEX `fk_date_ym_field1` (`field_idfield` ASC) ,
  CONSTRAINT `fk_date_ym_field1`
    FOREIGN KEY (`field_idfield` )
    REFERENCES `dblp_tratada`.`field` (`idfield` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dblp_tratada`.`publisher`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dblp_tratada`.`publisher` (
  `idpublisher` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(200) NULL ,
  `href` VARCHAR(200) NULL ,
  `field_idfield` INT NULL ,
  PRIMARY KEY (`idpublisher`) ,
  INDEX `fk_publisher_field1` (`field_idfield` ASC) ,
  CONSTRAINT `fk_publisher_field1`
    FOREIGN KEY (`field_idfield` )
    REFERENCES `dblp_tratada`.`field` (`idfield` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dblp_tratada`.`cite`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dblp_tratada`.`cite` (
  `idcite` INT NOT NULL AUTO_INCREMENT ,
  `cite` VARCHAR(200) NULL ,
  `label` VARCHAR(200) NULL ,
  `field_idfield` INT NULL ,
  PRIMARY KEY (`idcite`) ,
  INDEX `fk_cite_field1` (`field_idfield` ASC) ,
  CONSTRAINT `fk_cite_field1`
    FOREIGN KEY (`field_idfield` )
    REFERENCES `dblp_tratada`.`field` (`idfield` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dblp_tratada`.`layout`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dblp_tratada`.`layout` (
  `idlayout` INT NOT NULL AUTO_INCREMENT ,
  `layout` VARCHAR(200) NULL ,
  `logo` VARCHAR(200) NULL ,
  `field_idfield` INT NULL ,
  PRIMARY KEY (`idlayout`) ,
  INDEX `fk_layout_field1` (`field_idfield` ASC) ,
  CONSTRAINT `fk_layout_field1`
    FOREIGN KEY (`field_idfield` )
    REFERENCES `dblp_tratada`.`field` (`idfield` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dblp_tratada`.`series`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dblp_tratada`.`series` (
  `idseries` INT NOT NULL AUTO_INCREMENT ,
  `series` VARCHAR(200) NULL ,
  `href` VARCHAR(200) NULL ,
  `field_idfield` INT NULL ,
  PRIMARY KEY (`idseries`) ,
  INDEX `fk_series_field1` (`field_idfield` ASC) ,
  CONSTRAINT `fk_series_field1`
    FOREIGN KEY (`field_idfield` )
    REFERENCES `dblp_tratada`.`field` (`idfield` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dblp_tratada`.`note`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dblp_tratada`.`note` (
  `idnote` INT NOT NULL AUTO_INCREMENT ,
  `note` VARCHAR(200) NULL ,
  `type` VARCHAR(200) NULL ,
  `field_idfield` INT NULL ,
  PRIMARY KEY (`idnote`) ,
  INDEX `fk_note_field1` (`field_idfield` ASC) ,
  CONSTRAINT `fk_note_field1`
    FOREIGN KEY (`field_idfield` )
    REFERENCES `dblp_tratada`.`field` (`idfield` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dblp_tratada`.`ref`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dblp_tratada`.`ref` (
  `idref` INT NOT NULL AUTO_INCREMENT ,
  `ref` VARCHAR(200) NULL ,
  `href` VARCHAR(200) NULL ,
  `field_idfield` INT NULL ,
  PRIMARY KEY (`idref`) ,
  INDEX `fk_ref_field1` (`field_idfield` ASC) ,
  CONSTRAINT `fk_ref_field1`
    FOREIGN KEY (`field_idfield` )
    REFERENCES `dblp_tratada`.`field` (`idfield` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
