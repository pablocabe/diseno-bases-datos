SELECT c.nombre, c.apellido, c.contacto, COUNT(m.id_mascota)

FROM Cliente c

INNER JOIN Mascota m ON m.dni_cliente = c.dni

GROUP BY c.dni, c.nombre, c.apellido, c.contacto

HAVING COUNT (m.id_mascota) > 2

ORDER BY COUNT (m.id_mascota) DESC;