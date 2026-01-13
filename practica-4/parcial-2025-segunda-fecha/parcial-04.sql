SELECT j.nombre, j.apellido, j.altura, j.posicion

FROM Jugador j

WHERE EXISTS (

    SELECT *

    FROM Contrato c

    INNER JOIN Equipo e ON e.idEquipo = c.idEquipo

    WHERE (j.idJugador = c.idJugador) AND (j.altura > 2.10) AND (e.ciudad = 'Nueva York') AND (c.fecha_hasta > '2025-12-01')
)

ORDER BY j.apellido DESC;