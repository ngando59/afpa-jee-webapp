CREATE DATABASE db_webapp;

USE db_webapp;

CREATE TABLE tbl_public (
	id INT(5) NOT NULL AUTO_INCREMENT,
	name VARCHAR(255) NOT NULL,
	PRIMARY KEY (id)
);

INSERT INTO tbl_public(name) VALUES
	("Homme"),
	("Femme"),
	("Bébé"),
	("Produit alimentaire"),
	("Mixte");

CREATE TABLE tbl_category (
	id INT(5) NOT NULL AUTO_INCREMENT,
	name VARCHAR(255) NOT NULL,
	tag VARCHAR(255) NOT NULL,
	PRIMARY KEY (id),
	UNIQUE INDEX tag (tag)
);

INSERT INTO tbl_category(name, tag) VALUES
	("Fast food", "fast-food"),
	("Mode bébé", "mode-bebe"),
	("Casquettes", "casquettes"),
	("Chaussures", "chaussures"),
	("Débardeurs", "debardeurs"),
	("Sweets", "sweets"),
	("T-shirts", "t-shirts"),
	("Vestes", "vestes");


	CREATE TABLE tbl_product (
		id INT(5) NOT NULL AUTO_INCREMENT,
		title VARCHAR(255) NOT NULL,
		thumbnail VARCHAR(255) NOT NULL,
		description TEXT NOT NULL,
		price DECIMAL(5,2) NOT NULL,
		public_id INT(5) NOT NULL,
		category_id INT(5) NOT NULL,
		PRIMARY KEY (id),
		CONSTRAINT fk_public FOREIGN KEY (public_id) REFERENCES tbl_public (id),
		CONSTRAINT fk_category FOREIGN KEY (category_id) REFERENCES tbl_category (id)
	);

	# For each database:
	ALTER DATABASE db_webapp CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
	ALTER TABLE tbl_public CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
	ALTER TABLE tbl_public CHANGE name name VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
	ALTER TABLE tbl_category CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
	ALTER TABLE tbl_category CHANGE name name VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
	ALTER TABLE tbl_product CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
	ALTER TABLE tbl_product CHANGE title title VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
	ALTER TABLE tbl_product CHANGE description description VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

		INSERT INTO tbl_product(title, thumbnail, description, price, public_id, category_id) VALUES
		("Chicken Burger", "fast-food/964.jpg", "Chicken Burgur poivron", 5.90, 4, 1),
		("Beef Burger", "fast-food/989.jpg", "Beef Burger poivron tomate", 6.90, 4, 1),
		("Buffalo Burger", "fast-food/1184.jpg", "Buffalo Burger + roquette", 4.90, 4, 1),
		("Cheese Burger", "fast-food/buns-burger-thermomix-800x600.jpg", "Cheese Burger + bacon", 3.90, 4, 1),
		("American Burger", "fast-food/cure-dents-bois-drapeau-americain-pour-burger_3460_2_IS.jpg", "American burger", 6.90, 4, 1),
		("Onion Burger", "fast-food/e6bd1824-f35e-4431-abc8-d4bc0dd8f087.jpg", "Onion Burger", 4.99, 4, 1),
		("Triple Burger", "fast-food/miam-burger.png", "Triple Burger", 9.90, 4, 1),
		("Supreme Burger", "fast-food/mini-burgers-thermomix-800x600.jpg", "Supreme Burger", 12.90, 4, 1),
		("IN EXTENSO Chaussettes", "mode-bebe/13320375959582.jpg", "Lot de 2 paires de chaussettes bouclettes bébé fille", 1.49, 3, 2),
		("POYET MOTTE Gigoteuse", "mode-bebe/13607187349534.jpg", "Gigoteuse hiver zipée avec passage ceinture et manches amovibles gris", 18.90, 3, 2),
		("IN EXTENSO Gigoteuse evolutive blanc/gris", "mode-bebe/13791317393438.jpg", "Gigoteuse évolutive velours blanc/gris Petite Balade", 19.90, 3, 2),
		("IN EXTENSO Gigoteuse evolutive blanc/rose", "mode-bebe/13791325814814.jpg", "Gigoteuse évolutive en velours blanc/rose Licorne", 19.90, 3, 2),
		("IN EXTENSO Sweet", "mode-bebe/13813155102750.jpg", "Sweet bébé garçon", 9.90, 3, 2),
		("IN EXTENSO Salopette", "mode-bebe/13832089632798.jpg", "Ensemble salopette molleton + t-shirt bébé garçon", 16.99, 3, 2),
		("IN EXTENSO Ensemble", "mode-bebe/13832048640030.jpg", "Ensemble t-shirt + gilet + pantalon molleton bébé garçon", 19.99, 3, 2),
		("IN EXTENSO Sweet", "mode-bebe/13813194293278.jpg", "Sweet bébé fille", 9.99, 3, 2),
		("IN EXTENSO Ensemble robe/gilet", "mode-bebe/13832069021726.jpg", "Ensemble robe + gilet + legging bébé fille", 16.99, 3, 2),
		("IN EXTENSO Ensemble faux 2 en 1", "mode-bebe/13832113520670.jpg", "Ensemble faux 2 en 1 bébé", 12.99, 3, 2),
		("Casquette 97", "casquettes/yrrho_14.png", "Casquette Yrrho-ik 97", 5.99, 5, 3),
		("Casquette Cameroun", "casquettes/yrrho_15.png", "Casquette Yrrho-ik Cameroun", 5.49, 5, 3),
		("Casquette Guyana", "casquettes/yrrho_16.png", "Casquette Yrrho-ik rouge guyana", 4.99, 5, 3),
		("Casquette Madinina", "casquettes/yrrho_17.png", "Casquette Madinina masdras", 10.90, 5, 3),
		("Casquette Gwada", "casquettes/yrrho_18.png", "Casquette Gwada masdras", 9.50, 5, 3),
		("StanSmith Collector", "chaussures/yrrho_19.png", "StanSmith Yrrho Collector", 99.99, 1, 4),
		("Puma madras", "chaussures/yrrho_20.png", "Pume Yrrho-ik madras", 110.00, 1, 4),
		("Yrrho Lion", "chaussures/yrrho_21.png", "Yrrho Lion Collector", 59.90, 1, 4),
		("Yrrho Rasta", "chaussures/yrrho_22.png", "Yrrho Rasta Collector", 69.99, 1, 4),
		("Air Force Masdras", "chaussures/yrrho_27.png", "Air Force Masdras Yrrho collector", 99.99, 1, 4),
		("iso 97 deb. Rose ", "debardeurs/iso97_06.png", "iso 97 debardeur rose ", 9.99, 2, 5),
		("iso 97 deb. Noir ", "debardeurs/iso97_07.png", "iso 97 debardeur Noir ", 9.99, 2, 5),
		("Iso 97 Sweet", "debardeurs/iso97_08.png", "Iso 97 Sweet sans manches", 9.99, 2, 5),
		("Rasta Playa", "debardeurs/yrrho_06.png", "Yrrho Rasta playa", 4.99, 2, 5),
		("I luv NY", "debardeurs/yrrho_07.png", "I luv NY Yrrho", 5.99, 2, 5),
		("Sweet Bordeaux Madinina", "sweets/iso97_09.png", "Sweet Bordeaux Madinina ISO 97", 29.99, 5, 6),
		("Sweet Rouge ISO 97", "sweets/iso97_10.png", "Sweet Rouge ISO 97", 29.99, 5, 6),
		("Sweet bleu Marshall", "sweets/yrrho_08.png", "Sweet bleu Marshall Yrrho-ik", 29.99, 5, 6),
		("Sweet Gris West-indies", "sweets/yrrho_09.png", "Sweet Gris West-indies Yrrho-ik", 29.99, 5, 6),
		("Sweet Capoeira", "sweets/yrrho_13.png", "Sweet Capoeira Yrrho-ik", 29.99, 5, 6),
		("Iso 97 ", "t-shirts/iso97_01.png", "T-Shirt ISO 97 ", 14.99, 1, 7),
		("Iso 97 Madinina ", "t-shirts/iso97_02.png", "T-Shirt  Iso 97 Madinina", 14.99, 1, 7),
		("Iso 97 red", "t-shirts/iso97_03.png", "T-Shirt Iso 97 red", 14.99, 1, 7),
		("Iso 97 Colibri", "t-shirts/iso97_04.png", "T-Shirt iso 97 femme colibri", 14.99, 2, 7),
		("Iso 97", "t-shirts/iso97_05.png", "T-Shirt femme iso 97", 14.99, 2, 7),
		("Baby Milo DJ", "t-shirts/yrrho_01.png", "T-Shirt femme Baby Milo DJ", 14.99, 2, 7),
		("Baby Milo Brasil", "t-shirts/yrrho_02.png", "T-shirt Baby Milo Brasil", 14.99, 2, 7),
		("Baby Milo France", "t-shirts/yrrho_03.png", "T-shirt Baby Milo France", 14.99, 2, 7),
		("Mad's Boy", "t-shirts/yrrho_04.png", "T-shirt Mad's Boy", 15.99, 1, 7),
		("Yrrho manche longue", "t-shirts/yrrho_05.png", "T-shirt Yrrho manches longues", 16.99, 1, 7),
		("Veste Mad", "vestes/iso_12.png", "Veste Mad Iso 97", 39.99, 1, 8),
		("Veste Yrrho", "vestes/yrrho_10.png", "Veste retro Yrrho-ik", 39.99, 1, 8),
		("Veste Mad's Rasta", "vestes/yrrho_11.png", "Veste Mad's Rasta yrrho-ik", 39.99, 1, 8),
		("Veste Lion Rasta", "vestes/yrrho_12.png", "Veste Lion Rasta yrrho-ik", 39.99, 1, 8),
		("Veste CMR", "vestes/yrrho_26.png", "Veste CMR yrrho-ik", 39.99, 1, 8);

CREATE TABLE tbl_person (
			id INT(11) NOT NULL AUTO_INCREMENT,
			civilite VARCHAR(5) NOT NULL,
 			nom VARCHAR(255) NOT NULL,
 			prenom VARCHAR(255) NOT NULL,
 			dateNaissance VARCHAR(255) NOT NULL,
 			email VARCHAR(255) NOT NULL UNIQUE,
 			password VARCHAR(255) NOT NULL,
 			telephone VARCHAR(55) NOT NULL,
 			numeroEtRue VARCHAR(255) NOT NULL,
 			ville VARCHAR(255) NOT NULL,
 			departement VARCHAR(255) NOT NULL,
 			pays VARCHAR(255) NOT NULL,
			PRIMARY KEY (id)
);
ALTER TABLE tbl_person ADD user_grant VARCHAR(5) NULL CONSTRAINT default_grant DEFAULT null WITH VALUES;
