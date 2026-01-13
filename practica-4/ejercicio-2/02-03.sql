SELECT a.especie, a.calle, a.nro, l.nombreL

FROM Arbol a

INNER JOIN Localidad l ON (l.codigoPostal = a.codigoPostal)

WHERE NOT EXISTS (

    SELECT *

    FROM Poda p

    WHERE (p.nroArbol = a.nroArbol)
);