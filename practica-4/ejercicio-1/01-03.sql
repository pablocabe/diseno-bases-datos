SELECT DISTINCT p1.nombreP, p1.descripcion, p1.precio, p1.stock

FROM Producto p1

INNER JOIN Detalle d1 ON (d1.idProducto = p1.idProducto)

INNER JOIN Factura f1 ON (f1.nroTicket = d1.nroTicket)

INNER JOIN Cliente c1 ON (c1.idCliente = f1.idCliente)

WHERE (c1.DNI = 45789456)

AND p1.idProducto NOT IN (

    SELECT d2.idProducto

    FROM Detalle d2

    INNER JOIN Factura f2 ON (f2.nroTicket = d2.nroTicket)

    INNER JOIN Cliente c2 ON (c2.idCliente = f2.idCliente)

    WHERE (c2.apellido = 'Garcia')

);