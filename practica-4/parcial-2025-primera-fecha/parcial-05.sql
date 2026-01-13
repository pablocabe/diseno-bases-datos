SELECT DISTINCT c.DNI, c.nombre, c.apellido, c.telefono

FROM Cliente c

INNER JOIN Localidad l ON (l.codigoPostal = c.cp)

WHERE (l.nombreL = 'La Plata')

AND NOT EXISTS (

    SELECT *

    FROM Pedido p

    WHERE (p.idCliente = c.idCliente) AND (p.fecha BETWEEN '2025-01-01' AND '2025-06-30')
)

ORDER BY c.apellido, c.nombre;