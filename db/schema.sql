CREATE DATABASE ryzaItemsDB;

USE ryzaItemsDB;

CREATE TABLE item (
  itemId INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  gatherLocation VARCHAR(100) NOT NULL,
  tool VARCHAR(20),
  gatherPointDescription VARCHAR(100) NOT NULL,
  FOREIGN KEY (tool) REFERENCES toolTable(tool),
  FOREIGN KEY (gatherLocation) REFERENCES gatherLocations(gatherLocation),
  FOREIGN KEY (gatherPointDescription) REFERENCES gatherPointDescriptions(gatherPointDescription)
);

CREATE TABLE toolTable (
  toolId INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  tool VARCHAR(20)
);

CREATE TABLE gatherLocations (
  locationId INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  gatherLocation VARCHAR(100) NOT NULL
);

CREATE TABLE gatherPointDescriptions (
  descriptionId INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  gatherPointDescription VARCHAR(100) NOT NULL
);
