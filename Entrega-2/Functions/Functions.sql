DELIMITER //

CREATE FUNCTION ObtenerPartidoYVotosGanador(
    p_eleccionID INT
) 
RETURNS VARCHAR(255)
DETERMINISTIC
BEGIN
    DECLARE partidoGanador VARCHAR(100);
    DECLARE votosGanador INT DEFAULT 0;
    DECLARE resultado VARCHAR(255);

    -- Obtener el partido y la cantidad de votos del candidato con más votos
    SELECT COALESCE(pp.nombrePartido, 'Independiente'), COUNT(v.votoID)
    INTO partidoGanador, votosGanador
    FROM Voto v
    JOIN Candidato c ON v.candidatoID = c.candidatoID
    LEFT JOIN PartidoPolitico pp ON c.partidoID = pp.partidoID
    WHERE v.eleccionID = p_eleccionID
    GROUP BY c.candidatoID, pp.nombrePartido
    ORDER BY COUNT(v.votoID) DESC
    LIMIT 1;

    -- Generar el resultado como texto
    SET resultado = CONCAT(
        'Partido ganador: ', partidoGanador, 
        ', Votos: ', votosGanador
    );

    RETURN resultado;
END //

DELIMITER ;

SELECT ObtenerPartidoYVotosGanador(1);

DELIMITER //

CREATE FUNCTION ObtenerPartidoGanador(
    p_eleccionID INT
) 
RETURNS VARCHAR(255)
DETERMINISTIC
BEGIN
    DECLARE partidoGanador VARCHAR(100);
    DECLARE porcentajeMax DECIMAL(5,2);

    -- Obtener el partido con el candidato más votado
    SELECT pp.nombrePartido, 
           IF(COUNT(v.votoID) > 0, (COUNT(v.votoID) / (SELECT COUNT(*) FROM Voto WHERE eleccionID = p_eleccionID)) * 100, 0)
    INTO partidoGanador, porcentajeMax
    FROM Candidato c
    JOIN PartidoPolitico pp ON c.partidoID = pp.partidoID
    JOIN Postulacion p ON p.candidatoID = c.candidatoID
    LEFT JOIN Voto v ON v.candidatoID = c.candidatoID AND v.eleccionID = p_eleccionID
    WHERE p.eleccionID = p_eleccionID
    GROUP BY pp.nombrePartido
    ORDER BY porcentajeMax DESC
    LIMIT 1;

    -- Devolver el resultado como una cadena de texto
    RETURN CONCAT('Partido: ', partidoGanador, ', Porcentaje: ', ROUND(porcentajeMax, 2), '%');
END //

DELIMITER ;




 SELECT ObtenerPartidoGanador(1);


