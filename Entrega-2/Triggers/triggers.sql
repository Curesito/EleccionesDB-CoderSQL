DELIMITER //

CREATE TRIGGER ActualizarPorcentajePosicion
AFTER INSERT ON Postulacion
FOR EACH ROW
BEGIN
    -- Actualiza el porcentaje de cada candidato basado en el total de votos por elección
    UPDATE Postulacion
    SET porcentaje = (
        SELECT (COUNT(*) / (SELECT COUNT(*) FROM Voto WHERE eleccionID = NEW.eleccionID) * 100)
        FROM Voto
        WHERE candidatoID = NEW.candidatoID AND eleccionID = NEW.eleccionID
    )
    WHERE postulacionID = NEW.postulacionID;

    -- Actualiza la posición del candidato basado en su porcentaje
    UPDATE Postulacion p
    SET p.posicion = (
        SELECT COUNT(*) + 1
        FROM Postulacion p2
        WHERE p2.eleccionID = NEW.eleccionID AND p2.porcentaje > p.porcentaje
    )
    WHERE p.postulacionID = NEW.postulacionID;
END //

DELIMITER ;

DELIMITER //

CREATE TRIGGER ActualizarTotalVotos
AFTER INSERT ON Voto
FOR EACH ROW
BEGIN
    -- Actualiza el número de votos totales para una elección específica
    UPDATE Eleccion
    SET totalVotos = (
        SELECT COUNT(*) FROM Voto WHERE eleccionID = NEW.eleccionID
    )
    WHERE eleccionID = NEW.eleccionID;
END //

DELIMITER ;
