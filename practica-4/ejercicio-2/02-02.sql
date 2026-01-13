SELECT DISTINCT p.DNI, p.nombre, p.apellido, p.fnac, l.nombreL

FROM Localidad l

INNER JOIN Podador p ON (p.codigoPostalVive = l.codigoPostal)

INNER JOIN Poda poda ON (poda.DNI = p.DNI)

WHERE YEAR (poda.fecha) = 2023