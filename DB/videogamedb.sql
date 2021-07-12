-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema videogamedb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `videogamedb` ;

-- -----------------------------------------------------
-- Schema videogamedb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `videogamedb` DEFAULT CHARACTER SET utf8 ;
USE `videogamedb` ;

-- -----------------------------------------------------
-- Table `game`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `game` ;

CREATE TABLE IF NOT EXISTS `game` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(50) NOT NULL,
  `description` VARCHAR(1000) NULL DEFAULT NULL,
  `platform` VARCHAR(150) NOT NULL,
  `publisher` VARCHAR(45) NULL DEFAULT NULL,
  `rating` ENUM('E', 'T', 'M') NOT NULL,
  `play_score` DOUBLE NULL DEFAULT NULL,
  `genre` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS gamer@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'gamer'@'localhost' IDENTIFIED BY 'gamer';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'gamer'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `game`
-- -----------------------------------------------------
START TRANSACTION;
USE `videogamedb`;
INSERT INTO `game` (`id`, `title`, `description`, `platform`, `publisher`, `rating`, `play_score`, `genre`) VALUES (1, 'Apex Legends', 'A free-to-play battle royal game based off another game known as Titanfall', 'PC, PS, Xbox, Nintendo, Mobile', 'Electronic Arts', 'T', 8.4, 'Action');
INSERT INTO `game` (`id`, `title`, `description`, `platform`, `publisher`, `rating`, `play_score`, `genre`) VALUES (2, 'Red Dead Redemption', 'Red Dead Redemption is a Western-themed action-adventure game played from a third-person perspective. The player controls John Marston and completes missions—linear scenarios with set objectives—to progress through the story; in the game\'s epilogue, the player controls John\'s son Jack.', 'PS, Xbox, PC', 'Rockstar Games', 'M', 9.4, 'Adventure');
INSERT INTO `game` (`id`, `title`, `description`, `platform`, `publisher`, `rating`, `play_score`, `genre`) VALUES (3, 'The Witcher 3: Wild Hunt', 'The Witcher 3: Wild Hunt is an action role-playing game developed and published by Polish developer CD Projekt Red and is based on The Witcher series of fantasy novels written by Andrzej Sapkowski', 'PC, PS, Xbox, Nintendo', 'CD Projekt Red', 'T', 9.2, 'RPG');
INSERT INTO `game` (`id`, `title`, `description`, `platform`, `publisher`, `rating`, `play_score`, `genre`) VALUES (4, 'God of War', 'Nearly every facet of Sony Santa Monica\'s Norse epic is working in concert with one another to craft a thrilling, memorable, and engrossing adventure. From its haunting score, to the beautifully written and acted story of Kratos and Atreus, to the incredible feel of the Leviathan Axe, God of War\'s impressive craftsmanship shines through at every step, honoring the past while forging its own path', 'PS', 'Sony Interactive Entertainment', 'M', 9.2, 'Action');
INSERT INTO `game` (`id`, `title`, `description`, `platform`, `publisher`, `rating`, `play_score`, `genre`) VALUES (5, 'Overwatch', 'Overwatch is a 2016 team-based multiplayer first-person shooter developed and published by Blizzard Entertainment. Described as a \"hero shooter\", Overwatch assigns players into two teams of six, with each player selecting from a large roster of characters, known as \"heroes\", with unique abilities', 'PC, Xbox, PS, Nintendo', 'Blizzard Entertainment', 'T', 8.5, 'FPS');
INSERT INTO `game` (`id`, `title`, `description`, `platform`, `publisher`, `rating`, `play_score`, `genre`) VALUES (6, 'Final Fantasy VII', 'follows the story of mercenary Cloud Strife, who is hired by the eco-terrorist group AVALANCHE—led by Barret Wallace—to help fight the mega-corporation Shinra Electric Power Company, who attempts to drain the planet\'s lifeblood as an energy source to further their profits.', 'PC, PS, Nintendo, Xbox, Mobile', 'Square Enix', 'T', 9.1, 'RPG');
INSERT INTO `game` (`id`, `title`, `description`, `platform`, `publisher`, `rating`, `play_score`, `genre`) VALUES (7, 'Final Fantasy VIII', 'Set on an unnamed fantasy world with science fiction elements, the game follows a group of young mercenaries, led by Squall Leonhart, as they are drawn into a conflict sparked by Ultimecia, a sorceress from the future who wishes to compress time.', 'PC, PS, Xbox, Nintendo, Mobile', 'Square Enix', 'T', 9.2, 'RPG');
INSERT INTO `game` (`id`, `title`, `description`, `platform`, `publisher`, `rating`, `play_score`, `genre`) VALUES (8, 'Rocket League', '“Football, but with remote control cars” is a likely pitch for Rocket League, but who expected it would become one of the most skilful and enduring multiplayer games released in decades? Rocket League is elegant and ageless: it will probably still be played in 20 years, in living rooms and in tournaments.', 'PC, Xbox, PS, Nintendo', 'Psyonix', 'E', 8.9, 'Casual');
INSERT INTO `game` (`id`, `title`, `description`, `platform`, `publisher`, `rating`, `play_score`, `genre`) VALUES (9, 'Civilization V', 'Civilization V is a turn-based strategy game, where each player represents the leader of a certain nation or ethnic group (\"civilization\") and must guide its growth over the course of thousands of years.', 'PC', 'Firaxis Games', 'E', 8.6, 'Strategy');
INSERT INTO `game` (`id`, `title`, `description`, `platform`, `publisher`, `rating`, `play_score`, `genre`) VALUES (10, 'Super Smash Bros. Ultimate', 'Super Smash Bros. Ultimate is a 2018 crossover fighting game developed by Bandai Namco Studios and Sora Ltd. and published by Nintendo for the Nintendo Switch. It is the fifth installment in the Super Smash Bros.', 'Nintendo', 'Bandai Namco', 'E', 9.3, 'Action');
INSERT INTO `game` (`id`, `title`, `description`, `platform`, `publisher`, `rating`, `play_score`, `genre`) VALUES (11, 'Mario Kart 8', 'Mario Kart 8 is a kart racing video game developed and published by Nintendo. It was released for the Wii U in 2014. It retains Mario Kart series game mechanics, where players control Mario franchise characters in kart racing, collecting a variety of items to hinder opponents or gain advantages in the race.', 'Nintendo', 'Nintendo', 'E', 8.7, 'Racing');

COMMIT;

