SELECT e.nombre, e.apellido, e.legajo

FROM Empleados Empleados

WHERE NOT EXISTS (

    SELECT *

    FROM Asignaciones a

    WHERE a.id_empleado = e.id_empleado
);