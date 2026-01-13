SELECT DISTINCT m.nombre, m.especie, m.raza, m.f_nac

FROM Mascota m

INNER JOIN Aplicacion_Vacuna a ON (a.id_mascota = m.id_mascota)

WHERE (a.nombreV = 'Triple Felina') AND (a.precio < 10000);