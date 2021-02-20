DROP DATABASE IF EXISTS showsDB;

CREATE DATABASE showsDB;

USE showsDB;

CREATE TABLE cast (
  id INT NOT NULL AUTO_INCREMENT,
  charName VARCHAR(45) NOT NULL,
  coolness INTEGER(5) NOT NULL,
  attitude VARCHAR(45) NOT NULL,
  PRIMARY KEY (id)
);

-- put bottom half into seeds.sql file

INSERT INTO cast (charName, coolness, attitude)
VALUES 
("Jake Peralta", 90, "Careless"),
("Gina Linetti", 100, "Chaotic"),
("Amy Santiago", 90, "Perfectionist"),
("Amy Santiago", 90, "Perfectionist"),
("Amy Santiago", 90, "Perfectionist");