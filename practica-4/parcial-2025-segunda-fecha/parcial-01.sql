SELECT n.nombre, n.ciudad

FROM Equipo e

WHERE EXISTS (

    SELECT *

    FROM Partido p

    WHERE (p.idEquipoLocal = e.idEquipo OR p.idEquipoVisitante = e.idEquipo) AND YEAR (p.fecha) = 2023
)

AND NOT EXISTS (

    SELECT *

    FROM Partido p

    WHERE (p.idEquipoLocal = e.idEquipo OR p.idEquipoVisitante = e.idEquipo) AND YEAR (p.fecha) = 2022
)