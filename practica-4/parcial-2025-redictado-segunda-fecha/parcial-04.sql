SELECT m.nombre, m.especie, m.raza, m.f_nac

FROM Mascota m

WHERE EXISTS (

    SELECT *

    FROM Consulta co

    WHERE (co.id_mascota = m.id_mascota) AND (co.diagnostico = 'Rabia')
)

AND NOT EXISTS (

    SELECT *

    FROM Aplicacion_Vacuna a

    WHERE (a.id_mascota = m.id_mascota) AND (a.nombreV = 'Antirrábica')
);