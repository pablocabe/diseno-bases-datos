SELECT p.idPartido, p.fecha, p.equipoLocal, p.equipoVisitante

FROM Partido p

WHERE EXISTS (

    SELECT *

    FROM Equipo e

    WHERE e.idEquipo = p.idEquipoLocal AND e.conferencia = 'Oeste'
)

AND EXISTS (

    SELECT *

    FROM Equipo e

    WHERE e.idEquipo = p.idEquipoVisitante AND e.conferencia = 'Oeste'
)