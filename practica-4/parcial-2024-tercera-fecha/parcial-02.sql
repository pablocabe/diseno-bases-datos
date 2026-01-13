SELECT p.nombre_proyecto

FROM Proyectos p

INNER JOIN Asignaciones a ON a.id_proyecto = p.id_proyecto

INNER JOIN Empleados e ON e.id_empleado = a.id_empleado

WHERE e.legajo = '3456/6'