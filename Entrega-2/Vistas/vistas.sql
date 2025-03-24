-- Vista del historial de votos
CREATE VIEW VistaPorcentajesEleccion AS
SELECT 
    e.eleccionID, 
    e.eleccionNombre, 
    c.canNombreCompleto AS candidato, 
    pp.nombrePartido, 
    ca.nombreCargo, 
    p.porcentaje
FROM Postulacion p
JOIN Candidato c ON p.candidatoID = c.candidatoID
JOIN PartidoPolitico pp ON c.partidoID = pp.partidoID
JOIN Eleccion e ON p.eleccionID = e.eleccionID
JOIN Cargo ca ON p.cargoID = ca.cargoID
WHERE p.porcentaje = (
    SELECT MAX(porcentaje)
    FROM Postulacion
    WHERE eleccionID = e.eleccionID
);

-- Vista de postulantes por partido
CREATE VIEW VistaPostulantesPorPartido AS
SELECT 
    pp.nombrePartido, 
    c.canNombreCompleto AS candidato, 
    e.eleccionNombre, 
    ca.nombreCargo, 
    p.porcentaje, 
    p.posicion
FROM Postulacion p
JOIN Candidato c ON p.candidatoID = c.candidatoID
JOIN PartidoPolitico pp ON c.partidoID = pp.partidoID
JOIN Eleccion e ON p.eleccionID = e.eleccionID
JOIN Cargo ca ON p.cargoID = ca.cargoID;

-- Vista del historial de votos
CREATE VIEW VistaHistorialVotos AS
SELECT 
    hv.votanteID, 
    v.votoID, 
    e.eleccionNombre, 
    c.canNombreCompleto AS candidato, 
    pp.nombrePartido, 
    v.fechaVoto
FROM HistorialVoto hv
JOIN Voto v ON hv.eleccionID = v.eleccionID
JOIN Candidato c ON v.candidatoID = c.candidatoID
JOIN PartidoPolitico pp ON c.partidoID = pp.partidoID
JOIN Eleccion e ON v.eleccionID = e.eleccionID;

SELECT * FROM VistaHistorialVotos;
SELECT * FROM VistaPostulantesPorPartido;
SELECT * FROM VistaPorcentajesEleccion;

