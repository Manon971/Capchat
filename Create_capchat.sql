create database Capchat;

use Capchat;

CREATE TABLE Theme(
   IdTheme INT,
   NomTheme VARCHAR(50),
   PRIMARY KEY(IdTheme)
);

CREATE TABLE Artiste(
   IdArtiste INT,
   NomArtiste VARCHAR(50),
   PrenomArtiste VARCHAR(50),
   Admail VARCHAR(100),
   Mdp VARCHAR(100),
   PRIMARY KEY(IdArtiste)
);

CREATE TABLE Jeu(
   IdJeu INT,
   NomJeu VARCHAR(50),
   EmplacementJeu VARCHAR(100),
   IdTheme INT,
   IdArtiste INT,
   PRIMARY KEY(IdJeu),
   FOREIGN KEY(IdTheme) REFERENCES Theme(IdTheme),
   FOREIGN KEY(IdArtiste) REFERENCES Artiste(IdArtiste)
);

CREATE TABLE Image(
   IdImage INT,
   NomImage VARCHAR(50),
   EmplacementImage VARCHAR(100),
   Singulier BOOLEAN,
   Indice VARCHAR(100),      
   IdJeu INT,
   PRIMARY KEY(IdImage),
   FOREIGN KEY(IdJeu) REFERENCES Jeu(IdJeu)
);
