SELECT p.DNI, p.apellido, p.nombre, p.telefono, p.fnac

FROM Podador p

INNER JOIN Poda poda ON (poda.DNI = p.DNI)

INNER JOIN Arbol a ON (a.nroArbol = poda.nroArbol)

WHERE (a.especie = 'Coniferas')

AND NOT EXISTS (

    SELECT *

    FROM Poda poda2

    INNER JOIN Arbol a2 ON (a2.nroArbol = poda2.nroArbol)

    WHERE poda2.DNI = p.DNI AND (a2.especie <> 'Coniferas')
);