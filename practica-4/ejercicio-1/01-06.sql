SELECT DISTINCT c.nombre, c.apellido, c.DNI, c.telefono, c.direccion

FROM Cliente c

WHERE EXISTS (

    SELECT *

    FROM Factura f

    INNER JOIN Detalle d ON (d.nroTicket = f.nroTicket)

    INNER JOIN Producto p ON (p.idProducto = d.idProducto)

    WHERE (f.idCliente = c.idCliente) AND (p.nombreP = 'prod1')

)

AND EXISTS (

    SELECT *

    FROM Factura f

    INNER JOIN Detalle d ON (d.nroTicket = f.nroTicket)

    INNER JOIN Producto p ON (p.idProducto = d.idProducto)

    WHERE (f.idCliente = c.idCliente) AND (p.nombreP = 'prod2')
)

AND NOT EXISTS (
    SELECT *

    FROM Factura f

    INNER JOIN Detalle d ON (d.nroTicket = f.nroTicket)

    INNER JOIN Producto p ON (p.idProducto = d.idProducto)

    WHERE (f.idCliente = c.idCliente) AND (p.nombreP = 'prod3')
)