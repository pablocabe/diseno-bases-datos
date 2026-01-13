SELECT DISTINCT p.DNI, p.nombre, p.apellido, p.fnac, l.nombreL

FROM Localidad l

INNER JOIN Podador p ON (p.codigoPostalVive = l.codigoPostal)

INNER JOIN Poda poda ON (poda.nroArbol = p.nroArbol)

WHERE p.apellido LIKE '%ata' AND YEAR (poda.fecha) = 2024

ORDER BY p.apellido, p.nombre;