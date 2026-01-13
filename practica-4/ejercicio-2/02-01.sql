SELECT DISTINCT a.especie, a.anios, a.nro, l.nombreL

FROM Localidad l

INNER JOIN Arbol a ON (a.codigoPostal = l.codigoPostal)

INNER JOIN Poda p ON (poda.nroArbol = a.nroArbol)

INNER JOIN Podador p ON (p.DNI = poda.DNI)

WHERE (p.nombre = 'Juan' AND p.apellido = 'Perez')
      OR (p.nombre = 'Jose' AND p.apellido = 'Garcia');