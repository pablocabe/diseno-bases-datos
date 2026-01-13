SELECT l.nombreL, l.descripcion, l.nroHabitantes

FROM Localidad l

INNER JOIN Arbol a ON (a.codigoPostal = l.codigoPostal)

GROUP BY l.codigoPostal, l.nombreL, l.descripcion, l.nroHabitantes

HAVING COUNT (a.nroArbol) < 5;