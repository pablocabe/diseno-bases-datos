DELETE FROM DetallePedido

WHERE nroPedido IN (
    
    SELECT nroPedido

    FROM Pedido p

    INNER JOIN Cliente c ON (c.idCliente = p.idCliente)

    WHERE c.DNI = 40123456
);

DELETE FROM Pedido

WHERE idCliente IN (

    SELECT idCliente

    FROM Cliente

    WHERE DNI = 40123456

);