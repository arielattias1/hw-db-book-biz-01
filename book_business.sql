DROP DATABASE IF EXISTS `book_business`;
CREATE DATABASE IF NOT EXISTS `book_business`; 
USE `book_business`;

SET NAMES UTF8MB4;
SET character_set_client = UTF8MB4;

-- --------------------------------------
--  TABLE Author
-- --------------------------------------

CREATE TABLE `Authors` (
	`AuthorID` 		int NOT NULL AUTO_INCREMENT,
	`AuthorFirstName` 	varchar (20) NOT NULL,
	`AuthorLastName` 		varchar (20) NOT NULL,
    `AuthorBirthDate` 	date NULL,
	`AuthorNationality` 	varchar (25) NULL,
	`AuthorPhoneNumber` 	varchar (50) NULL,	
	`AuthorEmail` 		varchar (30) NULL,
  	PRIMARY KEY (`AuthorID`),	
	INDEX `AuthorID` (`AuthorID` ASC),
	INDEX `AuthorFirstName` (`AuthorFirstName` ASC),
    INDEX `AuthorLastName` (`AuthorLastName` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------
--  TABLE Publisher
-- --------------------------------------

CREATE TABLE `Publishers` (
	`PublisherID` 		int NOT NULL AUTO_INCREMENT,
	`PublisherName` 	varchar (50) NOT NULL,
    `PublisherCreationDate` 	date NULL,
  	PRIMARY KEY (`PublisherID`),	
	INDEX `PublisherID` (`PublisherID` ASC),
	INDEX `PublisherName` (`PublisherName` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------
--  TABLE Publisher
-- --------------------------------------

CREATE TABLE `Editors` (
	`EditorID` 		int NOT NULL AUTO_INCREMENT,
	`EditorFirstName` 	varchar (20) NOT NULL,
    `EditorLastName` 	varchar (20) NOT NULL,
  	PRIMARY KEY (`EditorID`),	
	INDEX `EditorID` (`EditorID` ASC),
	INDEX `EditorFirstName` (`EditorFirstName` ASC),
    INDEX `EditorLastName` (`EditorLastName` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------
--  TABLE Customer
-- --------------------------------------

CREATE TABLE `Customers` (
	`CustomerID` 		int NOT NULL AUTO_INCREMENT,
    `CustomerFirstName` 	varchar (20) NOT NULL,
	`CustomerLastName` 		varchar (20) NOT NULL,
    `CustomerBirthDate` 	date NULL,
	`CustomerNationality` 	varchar (25) NULL,
	`CustomerPhoneNumber` 	varchar (50) NULL,	
	`CustomerEmail` 		varchar (30) NULL,
  	PRIMARY KEY (`CustomerID`),	
	INDEX `CustomerID` (`CustomerID` ASC),
	INDEX `CustomerFirstName` (`CustomerFirstName` ASC),
    INDEX `CustomerLastName` (`CustomerLastName` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------
-- Genre Table 
-- --------------------------------------

CREATE TABLE `Genre` (
	`GenreID`          int NOT NULL AUTO_INCREMENT,
    `GenreName`         varchar (20) NOT NULL ,
    PRIMARY KEY (`GenreID`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------
--  Book Table 
-- --------------------------------------

CREATE TABLE `Books` (
	`BookID` 		int NOT NULL AUTO_INCREMENT,
    `BookTitle` 			varchar (50) NOT NULL ,	
    `GenreID` int NOT NULL ,
    `AuthorRoyalties`     int NOT NULL,
    `DateOfPublishing` date NULL,
  	PRIMARY KEY (`BookID`),	
	INDEX `BookID` (`BookID` ASC),
	INDEX `BookTitle` (`BookTitle` ASC),
	FOREIGN KEY (`GenreID`) REFERENCES `Genre` (`GenreID`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------
--  CROSS REFERENCE Table Author-Books 
-- --------------------------------------

CREATE TABLE `Authors_Books_Crossref` (
	`AuthorID`          int NOT NULL,
    `BookID`            int NOT NULL,
    PRIMARY KEY (`AuthorID`,`BookID`),
    FOREIGN KEY (`AuthorID`) REFERENCES `Authors` (`AuthorID`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,    
    FOREIGN KEY (`BookID`) REFERENCES `Books` (`BookID`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------
--  CROSS REFERENCE Table Publisher-Books 
-- --------------------------------------

CREATE TABLE `Publishers_Books_Crossref` (
	`PublisherID`          int NOT NULL,
    `BookID`            int NOT NULL,
    PRIMARY KEY (`PublisherID`,`BookID`),
    FOREIGN KEY (`PublisherID`) REFERENCES `Publishers` (`PublisherID`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,    
    FOREIGN KEY (`BookID`) REFERENCES `Books` (`BookID`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------
--  CROSS REFERENCE Table Editor-Books 
-- --------------------------------------

CREATE TABLE `Editors_Books_Crossref` (
	`EditorID`          int NOT NULL,
    `BookID`            int NOT NULL,
    PRIMARY KEY (`EditorID`,`BookID`),
    FOREIGN KEY (`EditorID`) REFERENCES `Editors` (`EditorID`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,    
    FOREIGN KEY (`BookID`) REFERENCES `Books` (`BookID`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------
--  CROSS REFERENCE Table Books-Customers (for orders_
-- --------------------------------------

CREATE TABLE `Orders_Books_Customers_Crossref` (
	`OrderID`          int NOT NULL AUTO_INCREMENT,
    `BookID`            int NOT NULL,
    `CustomerID`       int NOT NULL,
    PRIMARY KEY (`OrderID`,`BookID`,`CustomerID`),
    FOREIGN KEY (`BookID`) REFERENCES `Books` (`BookID`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
	FOREIGN KEY (`CustomerID`) REFERENCES `Customers` (`CustomerID`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;












