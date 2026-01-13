SELECT DISTINCT c.nombre, c.apellido, c.DNI, c.telefono, c.direccion

FROM Cliente c INNER JOIN Factura f ON (c.idCliente = f.idCliente)

WHERE f.fecha BETWEEN '2024-01-01' AND '2024-12-31'

-- subconsulta

AND c.idCliente NOT IN (

    SELECT idCliente

    FROM Factura

    WHERE fecha < '2024-01-01' OR fecha > '2024-12-31'

);