-- Insertar Datos en la Tabla Votante
INSERT INTO Votante (votDNI, votNombreCompleto, votEdad, votEmail, numTelefono) VALUES
('12345678A', 'Juan Pérez', 30, 'juan.perez@email.com', '123-456-7890'),
('23456789B', 'María Gómez', 25, 'maria.gomez@email.com', '234-567-8901'),
('34567890C', 'Carlos Rodríguez', 40, 'carlos.rodriguez@email.com', '345-678-9012'),
('45678901D', 'Ana Fernández', 35, 'ana.fernandez@email.com', '456-789-0123'),
('56789012E', 'Luis Martínez', 50, 'luis.martinez@email.com', '567-890-1234'),
('67890123F', 'Laura Sánchez', 28, 'laura.sanchez@email.com', '678-901-2345'),
('78901234G', 'Pedro Ramírez', 33, 'pedro.ramirez@email.com', '789-012-3456'),
('89012345H', 'Gabriela Torres', 45, 'gabriela.torres@email.com', '890-123-4567'),
('90123456I', 'Martín Díaz', 27, 'martin.diaz@email.com', '901-234-5678'),
('01234567J', 'Elena Ríos', 32, 'elena.rios@email.com', '012-345-6789');

-- Insertar Datos en la Tabla Eleccion
INSERT INTO Eleccion (eleccionFecha, eleccionNombre, etapa, tipoEleccion) VALUES
('2025-06-01', 'Elecciones Presidenciales 2025', 'Primera Vuelta', 'Nacional'),
('2025-06-15', 'Elecciones Presidenciales 2025', 'Segunda Vuelta', 'Nacional'),
('2026-03-10', 'Elecciones Parlamentarias 2026', 'Única', 'Legislativa'),
('2026-10-05', 'Elecciones Regionales 2026', 'Única', 'Regional'),
('2027-11-20', 'Elecciones Municipales 2027', 'Única', 'Municipal'),
('2028-06-01', 'Elecciones Presidenciales 2028', 'Primera Vuelta', 'Nacional'),
('2028-06-15', 'Elecciones Presidenciales 2028', 'Segunda Vuelta', 'Nacional'),
('2029-04-12', 'Referéndum Constitucional 2029', 'Única', 'Nacional'),
('2030-09-08', 'Elecciones Gobernadores 2030', 'Única', 'Regional'),
('2031-05-14', 'Elecciones Municipales 2031', 'Única', 'Municipal');

-- Insertar Datos en la Tabla PartidoPolitico
INSERT INTO PartidoPolitico (nombrePartido, representantePartido, fechaFundacion) VALUES
('Partido Democrático', 'Ricardo López', '1990-05-15'),
('Partido Conservador', 'Lucía Castro', '1985-08-20'),
('Movimiento Liberal', 'José Fernández', '2000-11-03'),
('Alianza por la Justicia', 'Mariana Duarte', '2010-07-14'),
('Unión Nacional', 'Carlos Méndez', '1995-09-25'),
('Partido Progresista', 'Ana Beltrán', '2015-04-12'),
('Fuerza Ciudadana', 'Pedro Gutiérrez', '2018-02-28'),
('Movimiento Popular', 'Sofía Ramírez', '1978-06-22'),
('Coalición Social', 'Fernando Herrera', '2005-10-05'),
('Avance Nacional', 'Laura Espinoza', '1992-12-18');

-- Insertar Datos en la Tabla Candidato
INSERT INTO Candidato (canNombreCompleto, partidoID) VALUES
('Miguel Salinas', 1),
('Andrea Peña', 2),
('Jorge Mendieta', 3),
('Rosa Paredes', 4),
('Luis Bravo', 5),
('Carmen Escobar', 6),
('Felipe Guzmán', 7),
('Daniela Fuentes', 8),
('Manuel Torres', 9),
('Elisa Suárez', 10);

-- Insertar Datos en la Tabla Cargo
INSERT INTO Cargo (nombreCargo) VALUES
('Presidente'),
('Vicepresidente'),
('Senador'),
('Diputado'),
('Gobernador'),
('Alcalde'),
('Consejal'),
('Intendente'),
('Fiscal General'),
('Defensor del Pueblo');

-- Insertar Datos en la Tabla Postulacion (Candidato - Elección - Cargo)
INSERT INTO Postulacion (eleccionID, candidatoID, cargoID, porcentaje, posicion) VALUES
(1, 1, 1, 35.2, 2),
(1, 2, 1, 40.5, 1),
(3, 3, 3, 10.3, NULL),
(3, 4, 3, 8.7, NULL),
(5, 5, 6, 22.5, 3),
(6, 6, 1, 30.1, 1),
(6, 7, 1, 28.9, 2),
(8, 8, 9, 52.0, 1),
(9, 9, 5, 18.4, 4),
(10, 10, 6, 41.7, 1);

-- Insertar Datos en la Tabla HistorialVoto (Votantes Participando en Elecciones)
INSERT INTO HistorialVoto (votanteID, eleccionID) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 3),
(5, 3),
(6, 5),
(7, 6),
(8, 6),
(9, 8),
(10, 9);

-- Insertar Datos en la Tabla Voto (Registro de Votos, sin Votante Asociado)
INSERT INTO Voto (eleccionID, candidatoID, fechaVoto) VALUES
(1, 1, '2025-06-01 09:15:00'),
(1, 2, '2025-06-01 10:30:00'),
(1, 2, '2025-06-01 11:45:00'),
(1, 1, '2025-06-01 12:00:00'),
(3, 3, '2026-03-10 08:20:00'),
(3, 4, '2026-03-10 09:55:00'),
(5, 5, '2027-11-20 14:10:00'),
(6, 6, '2028-06-01 16:05:00'),
(6, 7, '2028-06-01 17:40:00'),
(8, 8, '2029-04-12 13:25:00');


-- Insertar datos de prueba en la tabla Eleccion
INSERT INTO Eleccion (eleccionFecha, eleccionNombre, etapa, tipoEleccion)
VALUES ('2025-06-01', 'Elección Nacional', 'Primera vuelta', 'Presidencial');

-- Insertar datos de prueba en la tabla Candidato
INSERT INTO Candidato (canNombreCompleto, partidoID)
VALUES ('Candidato A', 1), ('Candidato B', 2), ('Candidato C', 1);

-- Insertar datos de prueba en la tabla Postulacion
-- Insertar cada fila por separado para evitar el error de referencia a la misma tabla
INSERT INTO Postulacion (eleccionID, candidatoID, cargoID, porcentaje) 
VALUES (1, 1, 1, 30.5);

INSERT INTO Postulacion (eleccionID, candidatoID, cargoID, porcentaje) 
VALUES (1, 2, 1, 45.3);

INSERT INTO Postulacion (eleccionID, candidatoID, cargoID, porcentaje) 
VALUES (1, 3, 1, 24.2);



-- Insertar Datos en la Tabla Votante
INSERT INTO Votante (votDNI, votNombreCompleto, votEdad, votEmail, numTelefono) VALUES
('11223344A', 'Felipe González', 45, 'felipe.gonzalez@email.com', '112-233-4455'),
('22334455B', 'Lucía Ramírez', 38, 'lucia.ramirez@email.com', '223-344-5566'),
('33445566C', 'Roberto Pérez', 50, 'roberto.perez@email.com', '334-455-6677'),
('44556677D', 'Patricia Díaz', 28, 'patricia.diaz@email.com', '445-566-7788'),
('55667788E', 'José Martínez', 33, 'jose.martinez@email.com', '556-677-8899'),
('66778899F', 'Raquel López', 39, 'raquel.lopez@email.com', '667-788-9900'),
('77889900G', 'Ricardo Sánchez', 41, 'ricardo.sanchez@email.com', '778-899-0011'),
('88990011H', 'Alba Torres', 31, 'alba.torres@email.com', '889-900-1122'),
('99001122I', 'Pedro Rodríguez', 46, 'pedro.rodriguez@email.com', '990-011-2233'),
('00112233J', 'Esther González', 36, 'esther.gonzalez@email.com', '001-122-3344');

-- Insertar Datos en la Tabla Eleccion
INSERT INTO Eleccion (eleccionFecha, eleccionNombre, etapa, tipoEleccion) VALUES
('2025-08-15', 'Elecciones Regionales 2025', 'Primera Vuelta', 'Regional'),
('2025-08-29', 'Elecciones Regionales 2025', 'Segunda Vuelta', 'Regional'),
('2026-05-01', 'Elecciones Presidenciales 2026', 'Única', 'Nacional'),
('2026-11-25', 'Elecciones Parlamentarias 2026', 'Única', 'Legislativa'),
('2027-07-10', 'Elecciones Municipales 2027', 'Única', 'Municipal'),
('2027-10-23', 'Elecciones Regionales 2027', 'Única', 'Regional'),
('2028-04-13', 'Elecciones Presidenciales 2028', 'Primera Vuelta', 'Nacional'),
('2028-04-27', 'Elecciones Presidenciales 2028', 'Segunda Vuelta', 'Nacional'),
('2029-09-05', 'Referéndum Nacional 2029', 'Única', 'Nacional'),
('2030-12-12', 'Elecciones Regionales 2030', 'Única', 'Regional');

-- Insertar Datos en la Tabla PartidoPolitico
INSERT INTO PartidoPolitico (nombrePartido, representantePartido, fechaFundacion) VALUES
('Partido Liberal', 'Carlos Martínez', '1998-04-11'),
('Movimiento Verde', 'Ana Gómez', '2001-07-15'),
('Frente Unido', 'Juan Pérez', '2008-02-05'),
('Partido Socialista', 'Lina Rodríguez', '1987-09-17'),
('Movimiento Progresista', 'Samuel Méndez', '2012-06-08'),
('Alianza Verde', 'Esteban Ruiz', '2016-11-23'),
('Frente Democrático', 'Pedro Molina', '1999-01-20'),
('Partido Libertad', 'Ricardo Herrera', '2013-09-30'),
('Movimiento Revolucionario', 'Silvia Vega', '2009-03-18'),
('Unión Patriótica', 'Felipe Suárez', '1997-05-14');

-- Insertar Datos en la Tabla Candidato
INSERT INTO Candidato (canNombreCompleto, partidoID) VALUES
('David García', 1),
('Claudia Mendoza', 2),
('Fernando Castro', 3),
('Jessica Silva', 4),
('Raúl Ortega', 5),
('Gabriela Rivera', 6),
('Javier Fernández', 7),
('Laura Molina', 8),
('Carlos Aguirre', 9),
('Paula Ramos', 10);

-- Insertar Datos en la Tabla Cargo
INSERT INTO Cargo (nombreCargo) VALUES
('Senador'),
('Gobernador'),
('Alcalde'),
('Consejal'),
('Ministro'),
('Fiscal General'),
('Defensor del Pueblo'),
('Presidente'),
('Vicepresidente'),
('Diputado');

-- Insertar Datos en la Tabla Postulacion (Candidato - Elección - Cargo)
INSERT INTO Postulacion (eleccionID, candidatoID, cargoID, porcentaje, posicion) VALUES
(1, 1, 2, 48.2, 1),
(1, 2, 1, 32.5, 2),
(2, 3, 2, 45.0, 1),
(2, 4, 3, 30.5, 2),
(3, 5, 4, 21.7, 1),
(4, 6, 5, 35.2, 1),
(5, 7, 6, 40.1, 1),
(6, 8, 7, 33.8, 2),
(7, 9, 8, 27.3, 3),
(8, 10, 9, 42.6, 1);

-- Insertar Datos en la Tabla HistorialVoto (Votantes Participando en Elecciones)
INSERT INTO HistorialVoto (votanteID, eleccionID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- Insertar Datos en la Tabla Voto (Registro de Votos, sin Votante Asociado)
INSERT INTO Voto (eleccionID, candidatoID, fechaVoto) VALUES
(1, 1, '2025-08-15 09:10:00'),
(1, 2, '2025-08-15 09:35:00'),
(2, 3, '2025-08-29 10:45:00'),
(2, 4, '2025-08-29 11:25:00'),
(3, 5, '2026-05-01 12:00:00'),
(3, 6, '2026-05-01 12:30:00'),
(4, 7, '2026-11-25 14:15:00'),
(5, 8, '2027-07-10 16:05:00'),
(6, 9, '2027-10-23 18:10:00'),
(7, 10, '2028-04-13 10:55:00');

-- Insertar Datos en la Tabla Eleccion
INSERT INTO Eleccion (eleccionFecha, eleccionNombre, etapa, tipoEleccion) VALUES
('2026-08-15', 'Elecciones Nacionales 2026', 'Primera vuelta', 'Presidencial'),
('2026-08-29', 'Elecciones Nacionales 2026', 'Segunda vuelta', 'Presidencial'),
('2027-02-10', 'Elecciones Regionales 2027', 'Única', 'Regional');

-- Insertar Datos en la Tabla Candidato
INSERT INTO Candidato (canNombreCompleto, partidoID) VALUES
('Carlos Sánchez', 2),
('María Díaz', 3),
('Elena García', 4);

-- Insertar Datos en la Tabla Postulacion
INSERT INTO Postulacion (eleccionID, candidatoID, cargoID, porcentaje) VALUES
(1, 1, 2, 50.0),
(1, 2, 1, 45.3),
(2, 3, 4, 52.0);


INSERT INTO Votante (votDNI, votNombreCompleto, votEdad, votEmail, numTelefono) VALUES
('12345678', 'Juan Pérez', 30, 'juaan.perez@email.com', '5551234567'),
('23456789', 'María López', 25, 'maria.lopez@email.com', '5552345678'),
('34567890', 'Carlos García', 40, 'carloss.garcia@email.com', '5553456789'),
('45678901', 'Ana Sánchez', 35, 'ana.sanchez@email.com', '5554567890'),
('56789012', 'Luis Martínez', 28, 'luiss.martinez@email.com', '5555678901'),
('67890123', 'Patricia Fernández', 22, 'patricia.fernandez@email.com', '5556789012'),
('78901234', 'Jorge González', 33, 'jorge.gonzalez@email.com', '5557890123'),
('89012345', 'Laura Rodríguez', 29, 'laura.rodriguez@email.com', '5558901234'),
('90123456', 'Pedro Díaz', 31, 'pedro.diaz@email.com', '5559012345'),
('01234567', 'Isabel López', 27, 'isabel.lopez@email.com', '5550123456'),
('12345001', 'David Sánchez', 32, 'david.sanchez@email.com', '5551234500'),
('23456002', 'Elena García', 23, 'elena.garcia@email.com', '5552345601'),
('34567003', 'Fernando Pérez', 38, 'fernando.perez@email.com', '5553456702'),
('45678004', 'Sofía Martínez', 41, 'sofia.martinez@email.com', '5554567803'),
('56789005', 'Oscar González', 34, 'oscar.gonzalez@email.com', '5555678904'),
('67890106', 'Carmen López', 26, 'carmen.lopez@email.com', '5556789015'),
('78901207', 'Raúl Rodríguez', 36, 'raul.rodriguez@email.com', '5557890126'),
('89012308', 'Teresa Sánchez', 30, 'teresa.sanchez@email.com', '5558901237'),
('90123409', 'Manuel Fernández', 45, 'manuel.fernandez@email.com', '5559012348'),
('01234510', 'Dolores García', 29, 'dolores.garcia@email.com', '5550123459'),
('12345011', 'Antonio Pérez', 52, 'antonio.perez@email.com', '5551234510'),
('23456012', 'Marta González', 39, 'marta.gonzalez@email.com', '5552345611'),
('34567013', 'Pablo López', 48, 'pablo.lopez@email.com', '5553456712'),
('45678014', 'Beatriz Sánchez', 24, 'beatriz.sanchez@email.com', '5554567813'),
('56789015', 'Juanita Fernández', 26, 'juanita.fernandez@email.com', '5555678914'),
('67890116', 'Carlos Rodríguez', 34, 'carlosss.rodriguez@email.com', '5556789017'),
('78901217', 'Elisa Pérez', 22, 'elisa.perez@email.com', '5557890128'),
('89012318', 'Víctor González', 29, 'victor.gonzalez@email.com', '5558901239'),
('90123419', 'José López', 37, 'jose.lopez@email.com', '5559012340'),
('01234520', 'Juliana Sánchez', 33, 'juliana.sanchez@email.com', '5550123460');

INSERT INTO Eleccion (eleccionFecha, eleccionNombre, etapa, tipoEleccion, totalVotos) VALUES
('2025-05-01', 'Elección Presidencial', 'Primera vuelta', 'Presidencial', 0),
('2025-06-01', 'Elección Gobernatorial', 'Primera vuelta', 'Gobernatorial', 0),
('2025-05-01', 'Elección Municipal', 'Primera vuelta', 'Municipal', 0),
('2025-06-01', 'Elección Parlamentaria', 'Primera vuelta', 'Parlamentaria', 0),
('2025-05-01', 'Elección Presidencial', 'Segunda vuelta', 'Presidencial', 0),
('2025-06-01', 'Elección Regional', 'Primera vuelta', 'Regional', 0),
('2025-05-01', 'Elección Universitaria', 'Primera vuelta', 'Universitaria', 0),
('2025-06-01', 'Elección Nacional', 'Primera vuelta', 'Nacional', 0),
('2025-05-01', 'Elección Presidencial', 'Primera vuelta', 'Presidencial', 0),
('2025-06-01', 'Elección de Alcaldes', 'Primera vuelta', 'Municipal', 0),
('2025-05-01', 'Elección Presidencial', 'Primera vuelta', 'Presidencial', 0),
('2025-06-01', 'Elección de Diputados', 'Primera vuelta', 'Parlamentaria', 0),
('2025-05-01', 'Elección de Gobernadores', 'Primera vuelta', 'Gobernatorial', 0),
('2025-06-01', 'Elección Nacional', 'Primera vuelta', 'Nacional', 0),
('2025-05-01', 'Elección Regional', 'Segunda vuelta', 'Regional', 0),
('2025-06-01', 'Elección Universitaria', 'Segunda vuelta', 'Universitaria', 0),
('2025-05-01', 'Elección Presidencial', 'Primera vuelta', 'Presidencial', 0),
('2025-06-01', 'Elección Gobernamental', 'Primera vuelta', 'Gobernatorial', 0),
('2025-05-01', 'Elección Nacional', 'Primera vuelta', 'Nacional', 0),
('2025-06-01', 'Elección de Alcaldes', 'Primera vuelta', 'Municipal', 0),
('2025-05-01', 'Elección Parlamentaria', 'Segunda vuelta', 'Parlamentaria', 0),
('2025-06-01', 'Elección Universitaria', 'Primera vuelta', 'Universitaria', 0),
('2025-05-01', 'Elección Regional', 'Primera vuelta', 'Regional', 0),
('2025-06-01', 'Elección Municipal', 'Primera vuelta', 'Municipal', 0),
('2025-05-01', 'Elección Parlamentaria', 'Primera vuelta', 'Parlamentaria', 0),
('2025-06-01', 'Elección Nacional', 'Primera vuelta', 'Nacional', 0),
('2025-05-01', 'Elección de Gobernadores', 'Segunda vuelta', 'Gobernatorial', 0),
('2025-06-01', 'Elección Regional', 'Primera vuelta', 'Regional', 0),
('2025-05-01', 'Elección Presidencial', 'Segunda vuelta', 'Presidencial', 0);

INSERT INTO PartidoPolitico (nombrePartido, representantePartido, fechaFundacion) VALUES
('Partido de la Libertad', 'Juan Pérez', '1990-03-12'),
('Partido Nacional', 'Carlos García', '1985-06-21'),
('Partido Progreso', 'Ana López', '2001-08-15'),
('Partido Ciudadano', 'Luis Sánchez', '1998-05-30'),
('Partido del Pueblo', 'Patricia Fernández', '2005-09-19'),
('Partido Verde', 'Jorge González', '2010-07-09'),
('Partido Democrático', 'Laura Rodríguez', '2012-10-01'),
('Partido Reformista', 'Pedro Díaz', '2000-01-22'),
('Partido Liberal', 'Isabel López', '1992-11-10'),
('Partido del Trabajo', 'David Sánchez', '1995-04-18'),
('Partido Popular', 'Elena García', '1980-02-25'),
('Partido Unido', 'Fernando Pérez', '2004-12-03'),
('Partido Socialista', 'Sofía Martínez', '1986-05-14'),
('Partido Alternativa', 'Oscar González', '2015-06-07'),
('Partido Revolucionario', 'Carmen López', '1999-11-30'),
('Partido Independiente', 'Raúl Rodríguez', '2009-08-17'),
('Partido Futuro', 'Teresa Sánchez', '2006-04-05'),
('Partido Nuevo', 'Manuel Fernández', '2007-09-21'),
('Partido Avanzada', 'Dolores García', '1993-10-11'),
('Partido Verde Ecologista', 'Antonio Pérez', '2011-07-25'),
('Partido de la Justicia', 'Marta González', '2003-12-17'),
('Partido Progresista', 'Pablo López', '2008-02-28'),
('Partido Unidos por la Paz', 'Beatriz Sánchez', '2014-06-19'),
('Partido de los Trabajadores', 'Juanita Fernández', '2002-09-05'),
('Partido Popular Nacional', 'Carlos Rodríguez', '1997-01-15'),
('Partido de la Gente', 'Elisa Pérez', '2001-10-12'),
('Partido Patriota', 'Víctor González', '2004-03-22'),
('Partido la Esperanza', 'José López', '2016-02-18'),
('Partido Democracia Social', 'Juliana Sánchez', '2018-05-10');

INSERT INTO Candidato (canNombreCompleto, partidoID) VALUES
('Juan Pérez', 1),
('Carlos García', 2),
('Ana López', 3),
('Luis Sánchez', 4),
('Patricia Fernández', 5),
('Jorge González', 6),
('Laura Rodríguez', 7),
('Pedro Díaz', 8),
('Isabel López', 9),
('David Sánchez', 10),
('Elena García', 11),
('Fernando Pérez', 12),
('Sofía Martínez', 13),
('Oscar González', 14),
('Carmen López', 15),
('Raúl Rodríguez', 16),
('Teresa Sánchez', 17),
('Manuel Fernández', 18),
('Dolores García', 19),
('Antonio Pérez', 20),
('Marta González', 21),
('Pablo López', 22),
('Beatriz Sánchez', 23),
('Juanita Fernández', 24),
('Carlos Rodríguez', 25),
('Elisa Pérez', 26),
('Víctor González', 27),
('José López', 28),
('Juliana Sánchez', 29),
('Luis Rodríguez', 30);

INSERT INTO Cargo (nombreCargo) VALUES
('Presidente'),
('Gobernador'),
('Alcalde'),
('Diputado'),
('Senador'),
('Ministro'),
('Vicepresidente'),
('Subgobernador'),
('Asesor'),
('Director'),
('Secretario'),
('Tesorero'),
('Jefe de campaña'),
('Coordinador de campaña'),
('Líder de partido'),
('Embajador'),
('Director de comunicaciones'),
('Jefe de relaciones internacionales'),
('Asesor de políticas públicas'),
('Líder regional'),
('Asesor político'),
('Director de seguridad pública'),
('Presidente de comisión'),
('Vicepresidente de comisión'),
('Líder de bancada'),
('Director general'),
('Asesor legislativo'),
('Coordinador de políticas públicas'),
('Director de planificación estratégica'),
('Asesor electoral');

INSERT INTO Postulacion (eleccionID, candidatoID, cargoID, porcentaje) VALUES
(1, 1, 1, 50.0),
(1, 2, 1, 45.0),
(1, 3, 1, 40.0),
(1, 4, 1, 35.0),
(1, 5, 1, 30.0),
(2, 6, 2, 55.0),
(2, 7, 2, 50.0),
(2, 8, 2, 45.0),
(2, 9, 2, 40.0),
(2, 10, 2, 30.0),
(3, 11, 3, 60.0),
(3, 12, 3, 55.0),
(3, 13, 3, 50.0),
(3, 14, 3, 45.0),
(3, 15, 3, 35.0),
(4, 16, 4, 70.0),
(4, 17, 4, 65.0),
(4, 18, 4, 60.0),
(4, 19, 4, 55.0),
(4, 20, 4, 50.0),
(5, 21, 5, 80.0),
(5, 22, 5, 75.0),
(5, 23, 5, 70.0),
(5, 24, 5, 65.0),
(5, 25, 5, 60.0),
(6, 26, 6, 90.0),
(6, 27, 6, 85.0),
(6, 28, 6, 80.0),
(6, 29, 6, 75.0),
(6, 30, 6, 70.0);


INSERT INTO Voto (eleccionID, candidatoID, fechaVoto) VALUES
(1, 1, '2025-05-01 08:00:00'),
(1, 2, '2025-05-01 09:00:00'),
(1, 3, '2025-05-01 10:00:00'),
(1, 4, '2025-05-01 11:00:00'),
(1, 5, '2025-05-01 12:00:00'),
(2, 6, '2025-06-01 08:00:00'),
(2, 7, '2025-06-01 09:00:00'),
(2, 8, '2025-06-01 10:00:00'),
(2, 9, '2025-06-01 11:00:00'),
(2, 10, '2025-06-01 12:00:00'),
(3, 11, '2025-05-01 08:00:00'),
(3, 12, '2025-05-01 09:00:00'),
(3, 13, '2025-05-01 10:00:00'),
(3, 14, '2025-05-01 11:00:00'),
(3, 15, '2025-05-01 12:00:00'),
(4, 16, '2025-06-01 08:00:00'),
(4, 17, '2025-06-01 09:00:00'),
(4, 18, '2025-06-01 10:00:00'),
(4, 19, '2025-06-01 11:00:00'),
(4, 20, '2025-06-01 12:00:00'),
(5, 21, '2025-05-01 08:00:00'),
(5, 22, '2025-05-01 09:00:00'),
(5, 23, '2025-05-01 10:00:00'),
(5, 24, '2025-05-01 11:00:00'),
(5, 25, '2025-05-01 12:00:00'),
(6, 26, '2025-06-01 08:00:00'),
(6, 27, '2025-06-01 09:00:00'),
(6, 28, '2025-06-01 10:00:00'),
(6, 29, '2025-06-01 11:00:00'),
(6, 30, '2025-06-01 12:00:00');



