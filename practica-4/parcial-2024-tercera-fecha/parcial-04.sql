SELECT d.nombre_departamento, COUNT (e.id_empleado)

FROM Departamentos d

INNER JOIN Empleados e ON e.id_departamento = d.id_departamento

GROUP BY d.id_departamento, d.nombre_departamento