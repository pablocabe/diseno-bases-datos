SELECT i.codItem, i.denominacion, i.precio, i.stock

FROM Item i

WHERE EXISTS (

    SELECT *

    FROM DetallePedido d1

    INNER JOIN Pedido p1 ON (p1.nroPedido = d1.nroPedido)

    WHERE d1.codItem = i.codItem AND YEAR (p1.fecha) = 2025
)

AND NOT EXISTS (

    SELECT *

    FROM DetallePedido d2

    INNER JOIN Pedido p2 ON (p2.nroPedido = d2.nroPedido)

    WHERE d2.codItem = i.codItem AND YEAR (p2.fecha) <> 2025
)