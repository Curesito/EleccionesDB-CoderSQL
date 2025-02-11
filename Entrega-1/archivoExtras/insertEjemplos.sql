INSERT INTO Votante (votDNI, votNombreCompleto, votEdad, votEmail, numTelefono) VALUES
('12345678A', 'Juan Perez', 35, 'juan.perez@email.com', '123456789'),
('87654321B', 'Maria Lopez', 28, 'maria.lopez@email.com', '987654321'),
('45612378C', 'Carlos Gomez', 42, 'carlos.gomez@email.com', '456789123');

INSERT INTO Eleccion (eleccionFecha, eleccionNombre, etapa, tipoEleccion) VALUES
('2024-11-05', 'Elecciones Presidenciales 2024', 'Primera Vuelta', 'Presidencial'),
('2024-12-10', 'Elecciones Presidenciales 2024', 'Segunda Vuelta', 'Presidencial');

INSERT INTO PartidoPolitico (nombrePartido, representantePartido, fechaFundacion) VALUES
('Partido Liberal', 'Jose Martinez', '1980-06-15'),
('Partido Conservador', 'Ana Fernandez', '1975-09-22'),
('Partido Independiente', 'Luis Ramirez', '1995-03-30');

INSERT INTO Candidato (canNombreCompleto, partidoID, eleccionID, porcentaje, posicion) VALUES
('Pedro Gonzalez', 1, 1, 34.56, 1),
('Laura Torres', 2, 1, 30.12, 2),
('Miguel Suarez', 3, 1, 35.32, 3);

INSERT INTO Voto (votanteID, candidatoID, eleccionID, fechaVoto) VALUES
(1, 1, 1, '2024-11-05 08:30:00'),
(2, 2, 1, '2024-11-05 09:15:00'),
(3, 3, 1, '2024-11-05 10:00:00');

SELECT * FROM votante;
SELECT * FROM eleccion;
SELECT * FROM partidopolitico;
SELECT * FROM voto;
SELECT * FROM candidato;
