SELECT m.nombre, m.especie, m.raza, m.f_nac

FROM Mascota m

WHERE EXISTS (
    
    SELECT *

    FROM Consulta c

    WHERE (c.id_mascota = m.id_mascota) AND (YEAR (c.fecha) = 2025)
);