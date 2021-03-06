create database if not exists daylove;
use daylove;
CREATE TABLE `article` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext CHARACTER SET utf8,
  `images` JSON NOT NULL,
  `publish_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `publish_status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`aid`),
  FULLTEXT KEY `content` (`content`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE access_token
(
  Token VARCHAR(256) PRIMARY KEY NOT NULL,
  CreateAt DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL
);
CREATE UNIQUE INDEX access_token_Token_uindex ON access_token (Token);