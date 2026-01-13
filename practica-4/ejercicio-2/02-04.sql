SELECT DISTINCT a.especie, a.anios, a.calle, a.nroArbol, l.nombreL

FROM Localidad l

INNER JOIN Arbol a ON (a.codigoPostal = l.codigoPostal)

INNER JOIN Poda poda1 ON (poda1.nroArbol = a.nroArbol)

WHERE YEAR (poda1.fecha) = 2022

AND a.nroArbol NOT IN (

    SELECT poda2.nroArbol

    FROM Poda poda2

    WHERE YEAR (poda2.fecha) = 2023
);