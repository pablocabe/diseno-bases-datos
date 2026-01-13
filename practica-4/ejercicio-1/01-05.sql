-- es importante tener en cuenta que no se cuenta la
-- cantidad de unidades vendidas sino la cantidad de veces vendido

SELECT p.nombreP, p.descripcion, p.precio, COUNT(d.nroTicket) as cantVecesVendido

FROM Producto p

LEFT JOIN Detalle d ON (d.idProducto = p.idProducto)

GROUP BY p.idProducto, p.nombreP, p.descripcion, p.precio;
