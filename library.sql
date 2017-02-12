-- Adminer 4.2.5 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

CREATE DATABASE `library` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `library`;

DROP TABLE IF EXISTS `authors`;
CREATE TABLE `authors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `authors` (`id`, `first_name`, `last_name`) VALUES
(1,	'George',	'Orwell'),
(2,	'George R. R.',	'Martin'),
(3,	'Joanne',	'Rowling'),
(4,	'John  R. R.',	'Tolkien'),
(5,	'Gabriel Garcia',	'Marquez'),
(6,	'James ',	'Joyce'),
(7,	'Leo',	'Tolstoy'),
(8,	'F. Scott',	'Fitzgerald'),
(9,	'William',	'Faulkner'),
(10,	'Joseph',	'Conrad'),
(11,	'Joseph',	'Heller'),
(12,	'Albert',	'Camus'),
(13,	'Patricia',	'C. Wrede'),
(14,	'Caroline',	'Stevermer'),
(15,	'Stephen',	'King'),
(16,	'Peter',	'Straub');

DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `year` int(11) NOT NULL,
  `genre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `books` (`id`, `name`, `year`, `genre`) VALUES
(1,	'A Game of Thrones',	1996,	'epic fantasy'),
(2,	'1984',	1949,	'political fiction'),
(3,	'One Hundred Years of Soltitude',	1967,	'magic realism'),
(4,	'Harry Potter and the Philosopher\'s Stone ',	1997,	'fantasy'),
(5,	'Harry Potter and the Chamber of Secrets ',	1998,	'fantasy'),
(6,	'Harry Potter and the Prisoner of Azkaban ',	1999,	'fantasy'),
(7,	'Harry Potter and the Goblet of Fire',	2000,	'fantasy'),
(8,	'Harry Potter and the Order of the Phoenix ',	2013,	'fantasy'),
(9,	'Harry Potter and the Half-Blood Prince',	2005,	'fantasy'),
(10,	'Harry Potter and the Deathly Hallows',	2007,	'fantasy'),
(11,	'Animal Farm',	1945,	'political satire'),
(12,	'Boyhood',	1854,	'novel'),
(13,	'A Clash of Kings ',	1998,	'fantasy'),
(14,	'A Storm of Swords',	2000,	'fantasy'),
(15,	'A Feast for Crows',	2005,	'fantasy'),
(16,	'A Dance with Dragons',	2011,	'fantasy'),
(17,	'The Winds of Winter',	2012,	'fantasy'),
(18,	'A Dream of Spring',	1996,	'epic fantasy'),
(19,	'The Fellowship of the Ring',	1954,	'fantasy'),
(20,	'The Two Towers',	1954,	'fantasy'),
(21,	'The Return of the King',	1955,	'fantasy'),
(22,	'Ulysses',	1922,	'novel'),
(23,	'War and Peace',	1869,	'novel'),
(24,	'The Great Gatsby',	1925,	'novel'),
(25,	'The Sound and the Fury',	1925,	'novel'),
(26,	'Heart of Darkness',	1899,	'novel'),
(27,	'Catch-22',	1961,	'black humor'),
(28,	'Something Happened',	1974,	'novel'),
(29,	'The Stranger',	1942,	'philosophical novel'),
(30,	'The Plague',	1947,	'philosophical novel'),
(31,	'Sorcery & Cecelia: or The Enchanted Chocolate Pot',	2004,	'novel'),
(32,	'Anna Karenina',	1877,	'realist novel'),
(33,	'The Death of Ivan Ilyich',	1886,	'philosophy'),
(34,	'Hadji Murat',	1912,	'novel'),
(35,	'This Side of Paradise',	1920,	'novel'),
(36,	'The Beautiful and Damned',	1922,	'novel'),
(37,	'Tender Is the Night',	1934,	'novel'),
(38,	'The Last Tycoon',	1941,	'novel'),
(39,	'Light in August',	1932,	'novel'),
(40,	'These 13',	1931,	'novel'),
(41,	'Absalom, Absalom!',	1936,	'southern Gothic'),
(42,	'Good as Gold',	1979,	'comedy novel'),
(43,	'God Knows',	1984,	'novel'),
(44,	'Picture This',	1988,	'historical novel'),
(45,	'Closing Time',	1994,	'satire'),
(46,	'Portrait of an Artist, as an Old Man',	2000,	'novel'),
(47,	'Catch as Catch Can: The Collected Stories and Other Writings',	2003,	'short story'),
(48,	'A Portrait of the Artist as a Young Man',	1916,	'novel'),
(49,	'Pomes Penyeach',	1927,	'poetry'),
(50,	'The Talisman ',	1984,	'dark fantasy');

DROP TABLE IF EXISTS `joins`;
CREATE TABLE `joins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `book_id` (`book_id`),
  KEY `author_id` (`author_id`),
  CONSTRAINT `joins_ibfk_3` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `joins_ibfk_4` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `joins` (`id`, `book_id`, `author_id`) VALUES
(1,	1,	2),
(2,	2,	1),
(3,	3,	5),
(4,	4,	3),
(5,	5,	3),
(6,	6,	3),
(7,	7,	3),
(8,	8,	3),
(9,	9,	3),
(10,	10,	3),
(11,	11,	1),
(12,	13,	2),
(13,	14,	2),
(14,	15,	2),
(15,	16,	2),
(16,	17,	2),
(17,	18,	2),
(18,	19,	4),
(19,	20,	4),
(20,	21,	4),
(21,	22,	6),
(22,	23,	7),
(23,	24,	8),
(24,	25,	9),
(25,	26,	10),
(26,	27,	11),
(27,	28,	11),
(28,	29,	12),
(29,	30,	12),
(30,	31,	13),
(31,	31,	14),
(32,	34,	7),
(33,	32,	7),
(34,	33,	7),
(35,	12,	7),
(36,	35,	8),
(37,	36,	8),
(38,	37,	8),
(39,	38,	8),
(40,	39,	9),
(41,	40,	9),
(42,	41,	9),
(43,	42,	11),
(44,	43,	11),
(45,	44,	11),
(46,	45,	11),
(47,	46,	11),
(48,	47,	11),
(49,	48,	6),
(50,	49,	6),
(51,	50,	15),
(52,	50,	16);

-- 2017-02-12 21:19:08
