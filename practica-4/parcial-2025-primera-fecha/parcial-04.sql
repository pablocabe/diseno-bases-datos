SELECT i.denominacion, i.precio, i.stock, SUM(d.cantidad)

FROM Item i

INNER JOIN DetallePedido d ON (d.codItem = i.codItem)

INNER JOIN Pedido p ON (p.nroPedido = d.nroPedido)

WHERE MONTH (p.fecha) = 10 AND YEAR (p.fecha) = 2025

GROUP BY i.codItem, i.denominacion, i.precio, i.stock

HAVING SUM (d.cantidad) > 100;