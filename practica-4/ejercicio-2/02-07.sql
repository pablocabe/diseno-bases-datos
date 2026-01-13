SELECT DISTINCT a.especie

FROM Arbol a1

INNER JOIN Localidad l1 ON (l1.codigoPostal = a1.codigoPostal)

WHERE (l1.nombreL = 'La Plata')

AND a1.especie IN (

    SELECT a2.especie

    FROM Arbol a2

    INNER JOIN Localidad l2 ON (l2.codigoPostal = a2.codigoPostal)

    WHERE (l2.nombreL = 'Salta')
);