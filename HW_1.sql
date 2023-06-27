-- 1.
CREATE TABLE `homework_database`.`mobile_phones` (
  `id_mobile_phones` INT NOT NULL AUTO_INCREMENT,
  `models_mobile_phones` VARCHAR(45) NOT NULL,
  `manufacturers_mobile_phones` VARCHAR(45) NOT NULL,
  `prices_mobile_phones` DECIMAL NULL,
  `quantity_mobile_phones` INT NOT NULL,
  PRIMARY KEY (`id_mobile_phones`));
