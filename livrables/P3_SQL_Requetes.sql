Create TABLE Contrat(
Contrat_ID INT PRIMARY KEY, 
No_voie INT NOT NULL,
B_T_Q CHAR (1) NOT NULL ,
Type_de_voie VARCHAR (4) NOT NULL,
Voie VARCHAR (50) NOT NULL,
Code_dep_code_commune VARCHAR (6),
Code_postal INT NOT NULL,
Surface INT NOT NULL, 
Type_local VARCHAR (11) NOT NULL,
Occupation VARCHAR (12) NOT NULL,
Type_contrat VARCHAR (20)NOT NULL,
Formule VARCHAR (9)NOT NULL,
Valeur_declaree_biens VARCHAR (12)NOT NULL,
Prix_cotisation_mensuel INT NOT NULL
);Create Table Region(
Code_dep_code_commune VARCHAR (6) PRIMARY KEY,
reg_code INT,
reg_nom VARCHAR (50) NOT NULL,
aca_nom VARCHAR (50) NOT NULL,
dep_nom VARCHAR (70) NOT NULL,
com_nom_maj_court VARCHAR (50) NOT NULL,
dep_code VARCHAR (50) NOT NULL,
dep_nom_num VARCHAR (50) NOT NULL
);ALTER TABLE Contrat
ADD CONSTRAINT fk_contrat_region
FOREIGN KEY (Code_dep_code_commune)
REFERENCES Region(Code_dep_code_commune);
