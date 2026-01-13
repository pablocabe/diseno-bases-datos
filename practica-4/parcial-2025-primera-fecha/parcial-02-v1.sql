SELECT DISTINCT i.codItem, i.denominacion, i.precio, i.stock

FROM Item i

INNER JOIN DetallePedido d ON (d.codItem = i.codItem)

INNER JOIN Pedido p ON (p.nroPedido = d.nroPedido)

WHERE YEAR (p.fecha) = 2025

AND i.codItem NOT IN (

    SELECT d2.codItem

    FROM DetallePedido d2

    INNER JOIN Pedido p2 ON (p2.nroPedido = d2.nroPedido)

    WHERE YEAR (p.fecha) <> 2025
);