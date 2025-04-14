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

DELIMITER //

DROP PROCEDURE IF EXISTS RegistrarVoto;

CREATE PROCEDURE RegistrarVoto(
    IN p_eleccionID INT,
    IN p_candidatoID INT,
    IN p_fechaVoto DATETIME
)
BEGIN
    DECLARE totalVotos INT;

    START TRANSACTION;

    INSERT INTO Voto (eleccionID, candidatoID, fechaVoto)
    VALUES (p_eleccionID, p_candidatoID, p_fechaVoto);

    SELECT COUNT(*) INTO totalVotos
    FROM Voto
    WHERE eleccionID = p_eleccionID;

    UPDATE Eleccion
    SET totalVotos = totalVotos
    WHERE eleccionID = p_eleccionID;


    UPDATE Postulacion p
    SET porcentaje = (
        SELECT IFNULL((COUNT(*) / totalVotos * 100), 0)
        FROM Voto v
        WHERE v.candidatoID = p.candidatoID AND v.eleccionID = p.eleccionID
    )
    WHERE p.eleccionID = p_eleccionID;

    DROP TEMPORARY TABLE IF EXISTS TempPosiciones;
    CREATE TEMPORARY TABLE TempPosiciones (
        postulacionID INT,
        nuevaPosicion INT
    );

    INSERT INTO TempPosiciones (postulacionID, nuevaPosicion)
    SELECT postulacionID,
           ROW_NUMBER() OVER (ORDER BY porcentaje DESC)
    FROM Postulacion
    WHERE eleccionID = p_eleccionID;
    UPDATE Postulacion p
    JOIN TempPosiciones tp ON p.postulacionID = tp.postulacionID
    SET p.posicion = tp.nuevaPosicion;

    COMMIT;

END $$

DELIMITER ;






CALL AgregarVotante ( 45552233, 'Laura Fernández', 24, 'laufer1@mail.com', 451222123);

CALL RegistrarVoto(1, 2, NOW());


CALL ObtenerCandidatosPorEleccion(1);



