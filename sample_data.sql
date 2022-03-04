-- --------------------------------------
--  POPULATE Authors
-- --------------------------------------

INSERT INTO `Authors` VALUES(1,'Guillaume ','Musso','1974-06-06','French','+33 01 56 80 26 80','press@xoeditions.com');
INSERT INTO `Authors` VALUES(2,'Marc ','Levy','1961-10-16','French',NULL ,NULL);
INSERT INTO `Authors` VALUES(3,'J.K. ','Rowling','1965-07-31','English',NULL,'info@jkrowling.com');
INSERT INTO `Authors` VALUES(4,'Sarah J. ','Maas','1986-03-05','American',NULL,'RRue@WritersHouse.com');


-- --------------------------------------
--  POPULATE Publishers
-- --------------------------------------

INSERT INTO `Publishers` VALUES(1,'Bloomsbury Publishing','1998-01-01');
INSERT INTO `Publishers` VALUES(2,'XOEditions','2000-01-01');
INSERT INTO `Publishers` VALUES(3,'Calmann-Lévy','1836-01-01');
INSERT INTO `Publishers` VALUES(4,'Robert Laffont','1941-01-01');
INSERT INTO `Publishers` VALUES(5,'Versilio',NULL);


-- --------------------------------------
--  POPULATE Editors
-- --------------------------------------

INSERT INTO `Editors` VALUES(1,'Barry ','Cunnigham');
INSERT INTO `Editors` VALUES(2,'Emily ','Klopfer');
INSERT INTO `Editors` VALUES(3,'John ','Doe');

-- --------------------------------------
--  POPOPULATE Customers
-- --------------------------------------

INSERT INTO `Customers` VALUES(1,'Ariel ','Attias','2000-03-26','French','+1(617)-909-2440','aattias@mit.edu');
INSERT INTO `Customers` VALUES(2,'Noa ','Benguigui','2000-01-12','French','+33 0647164048','noabenguigui@gmail.com');
INSERT INTO `Customers` VALUES(3,'Sergio ','Marchita','2000-06-14','Spanish',NULL,'sergiomarchita@mit.edu');
INSERT INTO `Customers` VALUES(4,'Zeckier ','Elkaim','1983-02-12','French',NULL,NULL);
-- --------------------------------------
-- Genre INPUT DATA
-- --------------------------------------

INSERT INTO `Genre` VALUES(1,'Romance');
INSERT INTO `Genre` VALUES(2,'Fantasy');
INSERT INTO `Genre` VALUES(3,'Thriller');

-- --------------------------------------
--  Books INPUT DATA
-- --------------------------------------

INSERT INTO `Books` VALUES(1,'Harry Potter: Philosopher`s Stone',2,1527789,'1997-06-26');
INSERT INTO `Books` VALUES(2,'Harry Potter: Chamber of Secrets',2,3461563,'1998-07-02');
INSERT INTO `Books` VALUES(3,'Harry Potter: Prisoner of Azkaban',2,3685384,'1999-07-08');
INSERT INTO `Books` VALUES(4,'House of Earth and Blood',2,96548,'2020-03-03');
INSERT INTO `Books` VALUES(5,'House of Sky and Breadth',2,106249,'2022-02-15');
INSERT INTO `Books` VALUES(6,'La Jeune fille et la nuit',3,83249,'2018-04-24');
INSERT INTO `Books` VALUES(7,'La fille de Brooklin',3,83249,'2016-03-23');
INSERT INTO `Books` VALUES(8,'Où es tu ?',1,75027,'2001-01-01');
INSERT INTO `Books` VALUES(9,'The Fake Co-Written Book',1,0,NULL);

-- --------------------------------------
--  Author-Books  INPUT DATA
-- --------------------------------------

INSERT INTO `Authors_Books_Crossref` VALUES(1,6);
INSERT INTO `Authors_Books_Crossref` VALUES(1,7);
INSERT INTO `Authors_Books_Crossref` VALUES(2,8);
INSERT INTO `Authors_Books_Crossref` VALUES(3,1);
INSERT INTO `Authors_Books_Crossref` VALUES(3,2);
INSERT INTO `Authors_Books_Crossref` VALUES(3,3);
INSERT INTO `Authors_Books_Crossref` VALUES(4,4);
INSERT INTO `Authors_Books_Crossref` VALUES(4,5);
INSERT INTO `Authors_Books_Crossref` VALUES(3,9);
INSERT INTO `Authors_Books_Crossref` VALUES(4,9);

-- --------------------------------------
--  Publisher-Books  INPUT DATA
-- --------------------------------------

INSERT INTO `Publishers_Books_Crossref` VALUES(1,1);
INSERT INTO `Publishers_Books_Crossref` VALUES(1,2);
INSERT INTO `Publishers_Books_Crossref` VALUES(1,3);
INSERT INTO `Publishers_Books_Crossref` VALUES(1,4);
INSERT INTO `Publishers_Books_Crossref` VALUES(1,5);
INSERT INTO `Publishers_Books_Crossref` VALUES(3,6);
INSERT INTO `Publishers_Books_Crossref` VALUES(2,7);
INSERT INTO `Publishers_Books_Crossref` VALUES(4,8);
INSERT INTO `Publishers_Books_Crossref` VALUES(5,8);
INSERT INTO `Publishers_Books_Crossref` VALUES(3,9);

-- --------------------------------------
--  Editor-Books  INPUT DATA
-- --------------------------------------

INSERT INTO `Editors_Books_Crossref` VALUES(1,1);
INSERT INTO `Editors_Books_Crossref` VALUES(1,2);
INSERT INTO `Editors_Books_Crossref` VALUES(1,3);
INSERT INTO `Editors_Books_Crossref` VALUES(2,4);
INSERT INTO `Editors_Books_Crossref` VALUES(2,5);
INSERT INTO `Editors_Books_Crossref` VALUES(3,6);
INSERT INTO `Editors_Books_Crossref` VALUES(3,7);
INSERT INTO `Editors_Books_Crossref` VALUES(3,8);
INSERT INTO `Editors_Books_Crossref` VALUES(1,9);
INSERT INTO `Editors_Books_Crossref` VALUES(2,9);


-- --------------------------------------
--  Orders_Books_Customers_Crossref INPUT DATA
-- --------------------------------------

INSERT INTO `Orders_Books_Customers_Crossref` VALUES(1,1,1);
INSERT INTO `Orders_Books_Customers_Crossref` VALUES(2,4,1);
INSERT INTO `Orders_Books_Customers_Crossref` VALUES(3,6,1);
INSERT INTO `Orders_Books_Customers_Crossref` VALUES(4,3,2);
INSERT INTO `Orders_Books_Customers_Crossref` VALUES(4,5,2);
INSERT INTO `Orders_Books_Customers_Crossref` VALUES(5,8,3);
INSERT INTO `Orders_Books_Customers_Crossref` VALUES(6,9,3);
INSERT INTO `Orders_Books_Customers_Crossref` VALUES(7,1,4);
INSERT INTO `Orders_Books_Customers_Crossref` VALUES(7,2,4);
INSERT INTO `Orders_Books_Customers_Crossref` VALUES(7,7,4);
INSERT INTO `Orders_Books_Customers_Crossref` VALUES(8,2,1);
INSERT INTO `Orders_Books_Customers_Crossref` VALUES(8,2,2);
