-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema rentaautosdb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema rentaautosdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `rentaautosdb` DEFAULT CHARACTER SET utf8 ;
USE `rentaautosdb` ;

-- -----------------------------------------------------
-- Table `rentaautosdb`.`entidad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `rentaautosdb`.`entidad` (
  `identidad` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `estado` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`identidad`),
  UNIQUE INDEX `identidad_UNIQUE` (`identidad` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `rentaautosdb`.`asignaperfil`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `rentaautosdb`.`asignaperfil` (
  `idasignaperfil` INT NOT NULL,
  `idperfil` INT UNSIGNED NOT NULL,
  `identidad` INT UNSIGNED NOT NULL,
  `permisoalta` TINYINT NOT NULL,
  `permisoedita` TINYINT NOT NULL,
  `permisobaja` TINYINT NOT NULL,
  `permisoconsulta` TINYINT NOT NULL,
  `estado` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`idasignaperfil`),
  UNIQUE INDEX `idasignaperfil_UNIQUE` (`idasignaperfil` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `rentaautosdb`.`perfil`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `rentaautosdb`.`perfil` (
  `idperfil` INT NOT NULL,
  `nombre` VARCHAR(20) NOT NULL,
  `estado` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`idperfil`),
  UNIQUE INDEX `idperfil_UNIQUE` (`idperfil` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `rentaautosdb`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `rentaautosdb`.`usuario` (
  `idusuario` INT NOT NULL,
  `idperfil` INT UNSIGNED NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `apaterno` VARCHAR(45) NOT NULL,
  `amaterno` VARCHAR(45) NOT NULL,
  `nombreusuario` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `password` VARCHAR(25) NOT NULL,
  `estado` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`idusuario`),
  UNIQUE INDEX `idusuario_UNIQUE` (`idusuario` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `rentaautosdb`.`chofer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `rentaautosdb`.`chofer` (
  `idchofer` INT NOT NULL,
  `fechaalta` DATETIME NOT NULL,
  `fechabaja` DATETIME NOT NULL,
  `direccion` VARCHAR(200) NOT NULL,
  `telefono` VARCHAR(20) NOT NULL,
  `comprobante` VARCHAR(45) NOT NULL,
  `estado` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`idchofer`),
  UNIQUE INDEX `idchofer_UNIQUE` (`idchofer` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `rentaautosdb`.`dueño`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `rentaautosdb`.`dueño` (
  `iddueño` INT NOT NULL,
  `direccion` VARCHAR(200) NOT NULL,
  `telefono` VARCHAR(20) NOT NULL,
  `fechaalta` DATETIME NOT NULL,
  `fechabaja` DATETIME NOT NULL,
  `estado` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`iddueño`),
  UNIQUE INDEX `iddueño_UNIQUE` (`iddueño` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `rentaautosdb`.`zona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `rentaautosdb`.`zona` (
  `idzona` INT NOT NULL,
  `entidad` VARCHAR(45) NOT NULL,
  `municipio` VARCHAR(45) NOT NULL,
  `colonia` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idzona`),
  UNIQUE INDEX `idzona_UNIQUE` (`idzona` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `rentaautosdb`.`unidad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `rentaautosdb`.`unidad` (
  `idunidad` INT NOT NULL,
  `placa` VARCHAR(45) NOT NULL,
  `modelo` VARCHAR(45) NOT NULL,
  `año` INT NOT NULL,
  `color` VARCHAR(25) NOT NULL,
  `longitud` VARCHAR(25) NULL,
  `latitud` VARCHAR(25) NULL,
  `estado` VARCHAR(25) NOT NULL,
  `zona_idzona` INT NOT NULL,
  `dueño_iddueño` INT NOT NULL,
  PRIMARY KEY (`idunidad`, `zona_idzona`, `dueño_iddueño`),
  UNIQUE INDEX `idunidad_UNIQUE` (`idunidad` ASC),
  INDEX `fk_unidad_zona_idx` (`zona_idzona` ASC),
  INDEX `fk_unidad_dueño1_idx` (`dueño_iddueño` ASC),
  CONSTRAINT `fk_unidad_zona`
    FOREIGN KEY (`zona_idzona`)
    REFERENCES `rentaautosdb`.`zona` (`idzona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_unidad_dueño1`
    FOREIGN KEY (`dueño_iddueño`)
    REFERENCES `rentaautosdb`.`dueño` (`iddueño`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `rentaautosdb`.`averia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `rentaautosdb`.`averia` (
  `idaveria` INT NOT NULL,
  `idservicio` INT UNSIGNED NOT NULL,
  `fechacreacion` DATETIME NOT NULL,
  `fechaatencion` DATETIME NOT NULL,
  `costoreparacion` DECIMAL(2) NOT NULL,
  `causa` VARCHAR(100) NOT NULL,
  `descripcion` VARCHAR(300) NOT NULL,
  `estado` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`idaveria`),
  UNIQUE INDEX `idaveria_UNIQUE` (`idaveria` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `rentaautosdb`.`extravío`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `rentaautosdb`.`extravío` (
  `idextravío` INT NOT NULL,
  `idservicio` INT UNSIGNED NOT NULL,
  `fechaextravio` DATETIME NOT NULL,
  `fecharecuperacion` DATETIME NOT NULL,
  PRIMARY KEY (`idextravío`),
  UNIQUE INDEX `idextravío_UNIQUE` (`idextravío` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `rentaautosdb`.`servicio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `rentaautosdb`.`servicio` (
  `idservicio` INT NOT NULL,
  `fechainicio` DATETIME NOT NULL,
  `fechafin` DATETIME NOT NULL,
  `estado` VARCHAR(25) NOT NULL,
  `unidad_idunidad` INT NOT NULL,
  `unidad_zona_idzona` INT NOT NULL,
  `chofer_idchofer` INT NOT NULL,
  PRIMARY KEY (`idservicio`, `unidad_idunidad`, `unidad_zona_idzona`, `chofer_idchofer`),
  UNIQUE INDEX `idservicio_UNIQUE` (`idservicio` ASC),
  INDEX `fk_servicio_unidad1_idx` (`unidad_idunidad` ASC, `unidad_zona_idzona` ASC),
  INDEX `fk_servicio_chofer1_idx` (`chofer_idchofer` ASC),
  CONSTRAINT `fk_servicio_unidad1`
    FOREIGN KEY (`unidad_idunidad` , `unidad_zona_idzona`)
    REFERENCES `rentaautosdb`.`unidad` (`idunidad` , `zona_idzona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_servicio_chofer1`
    FOREIGN KEY (`chofer_idchofer`)
    REFERENCES `rentaautosdb`.`chofer` (`idchofer`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `rentaautosdb`.`pago`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `rentaautosdb`.`pago` (
  `idpago` INT NOT NULL,
  `tipopago` VARCHAR(25) NOT NULL,
  `monto` FLOAT NOT NULL,
  `estado` VARCHAR(25) NOT NULL,
  `servicio_idservicio` INT NOT NULL,
  PRIMARY KEY (`idpago`, `servicio_idservicio`),
  UNIQUE INDEX `idpago_UNIQUE` (`idpago` ASC),
  INDEX `fk_pago_servicio1_idx` (`servicio_idservicio` ASC),
  CONSTRAINT `fk_pago_servicio1`
    FOREIGN KEY (`servicio_idservicio`)
    REFERENCES `rentaautosdb`.`servicio` (`idservicio`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `rentaautosdb`.`desempeño`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `rentaautosdb`.`desempeño` (
  `iddesempeño` INT NOT NULL,
  `idservicio` INT UNSIGNED NOT NULL,
  `calificacion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`iddesempeño`),
  UNIQUE INDEX `iddesempeño_UNIQUE` (`iddesempeño` ASC))
ENGINE = InnoDB;

CREATE USER 'admin' IDENTIFIED BY 'admin';

GRANT ALL ON `rentaautosdb`.* TO 'admin';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
