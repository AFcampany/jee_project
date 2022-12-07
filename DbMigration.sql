
DROP DATABASE IF EXISTS commerciale;
CREATE DATABASE commerciale;
USE commerciale;

CREATE TABLE client (
    id_client INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom_client VARCHAR(35) NOT NULL,
    telephone VARCHAR(10) NOT NULL,
    email VARCHAR(100) NOT NULL
) ENGINE=InnoDB;
DROP table article;
CREATE TABLE article (
    reference_article INT(10) AUTO_INCREMENT PRIMARY KEY,
    nom_article VARCHAR(255) NOT NULL,
    quantite INT(10) NOT NULL,
    prix_vente FLOAT(20) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE facture (
    num_facture INT(10) AUTO_INCREMENT PRIMARY KEY,
    date_facture TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    mode_paiement INT(1) NOT NULL,
    id_client INT(10) NOT NULL
    
) ENGINE=InnoDB;

CREATE TABLE ligne_facture (
    reference_article INT(10) NOT NULL ,
    num_facture INT(10) NOT NULL,
    quantite_vendue INT(10) NOT NULL,
    PRIMARY KEY(reference_article, num_facture),
    CONSTRAINT fk_article FOREIGN KEY(reference_article) REFERENCES article(reference_article) 
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT fk_facture FOREIGN KEY(num_facture) REFERENCES facture(num_facture) 
        ON UPDATE CASCADE
        ON DELETE CASCADE
) ENGINE=InnoDB;



-- insertion
INSERT INTO client (nom_client, telephone, email) 
    VALUES ( ?, ?, ? );
INSERT INTO article ( nom_article, quantite, prix_vente, id_client ) 
    VALUES( ?, ?, ?, ? );

INSERT INTO facture ( date_facture, mode_paiement, id_client ) 
    VALUES ( ?, ?, ? );

INSERT INTO ligne_facture VALUES ( ?, ?, ? );
-- selection
SELECT quantite_vendue FROM ligne_facture l, facture f WHERE
    f.num_facture = l.num_facture;

SELECT quantite_vendue FROM ligne_facture l, article a WHERE
    a.reference_article = l.reference_article;

SELECT * FROM facture;

SELECT nom_article, quantite, prix_vente FROM article;

SELECT nom_client, telephone, email FROM client;
-- fin
