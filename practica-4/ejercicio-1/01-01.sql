SELECT c.nombre, c.apellido, c.DNI, c.telefono, c.direccion

FROM Cliente c

WHERE c.apellido LIKE 'Pe%'

ORDER BY c.DNI ASC;