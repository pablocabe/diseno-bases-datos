SELECT DISTINCT p.nombreP, p.descripcion, p.precio, p.stock

FROM Producto p

WHERE NOT EXISTS (

    -- subconsulta

    SELECT *

    FROM Detalle d

    INNER JOIN Factura f ON (f.nroTicket = d.nroTicket)

    INNER JOIN Cliente c ON (c.idCliente = f.idCliente)

    WHERE d.idProducto = p.idProducto AND c.telefono LIKE '221%'

)

ORDER BY p.nombreP;