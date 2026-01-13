SELECT DISTINCT c.DNI, c.nombre, c.apellido, c.direccion, l.nombreL

FROM Cliente c

INNER JOIN Localidad l ON (l.codigoPostal = c.cp)

INNER JOIN Pedido p ON (p.idCliente = c.idCliente)

INNER JOIN DetallePedido d ON (d.nroPedido = p.nroPedido)

WHERE (d.precioUnitario > 100000);