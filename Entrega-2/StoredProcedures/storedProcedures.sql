DELIMITER //

CREATE PROCEDURE ObtenerCandidatosPorEleccion(IN p_eleccionID INT)
BEGIN
    SELECT 
        c.candidatoID, 
        c.canNombreCompleto, 
        pp.nombrePartido, 
        ca.nombreCargo, 
        p.porcentaje, 
        p.posicion
    FROM Postulacion p
    JOIN Candidato c ON p.candidatoID = c.candidatoID
    JOIN PartidoPolitico pp ON c.partidoID = pp.partidoID
    JOIN Cargo ca ON p.cargoID = ca.cargoID
    WHERE p.eleccionID = p_eleccionID
    ORDER BY p.posicion ASC;
END //

DELIMITER ;


DELIMITER //

CREATE PROCEDURE AgregarVotante(
    IN p_votDNI VARCHAR(20),
    IN p_votNombreCompleto VARCHAR(100),
    IN p_votEdad INT,
    IN p_votEmail VARCHAR(100),
    IN p_numTelefono VARCHAR(20)
)
BEGIN
    INSERT INTO Votante (votDNI, votNombreCompleto, votEdad, votEmail, numTelefono)
    VALUES (p_votDNI, p_votNombreCompleto, p_votEdad, p_votEmail, p_numTelefono);
END $$


CREATE PROCEDURE RegistrarVoto(
    IN p_eleccionID INT,
    IN p_candidatoID INT,
    IN p_fechaVoto DATETIME
)
BEGIN
    INSERT INTO Voto (eleccionID, candidatoID, fechaVoto)
    VALUES (p_eleccionID, p_candidatoID, p_fechaVoto);
END $$

DELIMITER ;


CALL AgregarVotante ( 45555233, 'Laura Fernández', 24, 'laufer@mail.com', 451222123);

CALL RegistrarVoto(1, 2, '2025-06-01 10:15:00');

CALL ObtenerCandidatosPorEleccion(1);
