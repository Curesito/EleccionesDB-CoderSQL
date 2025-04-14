CREATE DATABASE SistemaEleccionesv1;
USE SistemaEleccionesv1;

CREATE TABLE votante (
    votanteID INT PRIMARY KEY AUTO_INCREMENT,
    votDNI VARCHAR(20) UNIQUE NOT NULL,
    votNombreCompleto VARCHAR(100) NOT NULL,
    votEdad INT NOT NULL,
    votEmail VARCHAR(100) UNIQUE NOT NULL,
    numTelefono VARCHAR(20) NOT NULL
);

CREATE TABLE eleccion (
    eleccionID INT PRIMARY KEY AUTO_INCREMENT,
    eleccionFecha DATE NOT NULL,
    eleccionNombre VARCHAR(100) NOT NULL,
    etapa VARCHAR(50) NOT NULL,
    tipoEleccion VARCHAR(50) NOT NULL
);
ALTER TABLE Eleccion ADD COLUMN totalVotos INT DEFAULT 0;

CREATE TABLE historialVoto (
    votanteEleccionID INT PRIMARY KEY AUTO_INCREMENT,
    votanteID INT,
    eleccionID INT,
    fechaVoto DATETIME NOT NULL,  -- Agregar la columna para registrar la fecha
    FOREIGN KEY (votanteID) REFERENCES Votante(votanteID),
    FOREIGN KEY (eleccionID) REFERENCES Eleccion(eleccionID)
);

CREATE TABLE PartidoPolitico (
    partidoID INT PRIMARY KEY AUTO_INCREMENT,
    nombrePartido VARCHAR(100) NOT NULL,
    representantePartido VARCHAR(100) NOT NULL,
    fechaFundacion DATE NOT NULL
);

CREATE TABLE Candidato (
    candidatoID INT PRIMARY KEY AUTO_INCREMENT,
    canNombreCompleto VARCHAR(100) NOT NULL,
    partidoID INT,
    FOREIGN KEY (partidoID) REFERENCES PartidoPolitico(partidoID)
);

CREATE TABLE Cargo (
    cargoID INT PRIMARY KEY AUTO_INCREMENT,
    nombreCargo VARCHAR(100) NOT NULL
);

CREATE TABLE postulacion (
    postulacionID INT PRIMARY KEY AUTO_INCREMENT,
    eleccionID INT,
    candidatoID INT,
    cargoID INT,
    porcentaje DECIMAL(5, 2) DEFAULT 0, 
    posicion INT DEFAULT NULL, 
    FOREIGN KEY (eleccionID) REFERENCES Eleccion(eleccionID),
    FOREIGN KEY (candidatoID) REFERENCES Candidato(candidatoID),
    FOREIGN KEY (cargoID) REFERENCES Cargo(cargoID)
);

CREATE TABLE Voto (
    votoID INT PRIMARY KEY AUTO_INCREMENT,
    eleccionID INT,
    candidatoID INT,
    fechaVoto DATETIME NOT NULL,
    FOREIGN KEY (eleccionID) REFERENCES Eleccion(eleccionID),
    FOREIGN KEY (candidatoID) REFERENCES Candidato(candidatoID)
);
