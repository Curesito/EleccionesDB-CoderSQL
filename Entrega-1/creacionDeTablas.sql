create database SistemaElecciones;


CREATE TABLE Votante (
    votanteID INT PRIMARY KEY AUTO_INCREMENT,
    votDNI VARCHAR(20) UNIQUE NOT NULL,
    votNombreCompleto VARCHAR(100) NOT NULL,
    votEdad INT NOT NULL,
    votEmail VARCHAR(100) UNIQUE NOT NULL,
    numTelefono VARCHAR(20) NOT NULL
);

CREATE TABLE Eleccion (
    eleccionID INT PRIMARY KEY AUTO_INCREMENT,
    eleccionFecha DATE NOT NULL,
    eleccionNombre VARCHAR(100) NOT NULL,
    etapa VARCHAR(50) NOT NULL,
    tipoEleccion VARCHAR(50) NOT NULL
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
    eleccionID INT,
    porcentaje DECIMAL(5, 2) NOT NULL, -- porcentaje de votos en 2 decimales
    posicion INT NOT NULL, -- referencia a la posicion en la eleccion
    FOREIGN KEY (eleccionID) REFERENCES Eleccion(eleccionID),
    FOREIGN KEY (partidoID) REFERENCES PartidoPolitico(partidoID)
);

CREATE TABLE Voto (
    vovotetoID INT PRIMARY KEY AUTO_INCREMENT,
    votanteID INT,
    candidatoID INT,
    eleccionID INT,
    fechaVoto DATETIME NOT NULL,
    FOREIGN KEY (votanteID) REFERENCES Votante(votanteID),
    FOREIGN KEY (candidatoID) REFERENCES Candidato(candidatoID),
    FOREIGN KEY (eleccionID) REFERENCES Eleccion(eleccionID)
);
