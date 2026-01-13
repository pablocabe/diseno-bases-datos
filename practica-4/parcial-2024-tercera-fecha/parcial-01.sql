SELECT DISTINCT e.nombre, e.apellido, d.nombre_departamento

FROM Empleado e

INNER JOIN Departamento d ON d.id_departamento = e.id_departamento;