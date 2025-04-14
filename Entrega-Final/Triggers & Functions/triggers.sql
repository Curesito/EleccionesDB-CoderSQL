
DELIMITER //

CREATE TRIGGER EvitarVotoDoble
BEFORE INSERT ON historialVoto
FOR EACH ROW
BEGIN
    IF EXISTS (
        SELECT 1 FROM historialVoto
        WHERE votanteID = NEW.votanteID
          AND eleccionID = NEW.eleccionID
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Fraude detectado: este votante ya votó en esta elección.';
    END IF;
END //

DELIMITER ;

DELIMITER //

CREATE TRIGGER ActualizarTotalVotos
AFTER INSERT ON Voto
FOR EACH ROW
BEGIN

    UPDATE Eleccion
    SET totalVotos = (
        SELECT COUNT(*) FROM Voto WHERE eleccionID = NEW.eleccionID
    )
    WHERE eleccionID = NEW.eleccionID;
END //

DELIMITER ;

CALL RegistrarVoto(1, 2, NOW());
