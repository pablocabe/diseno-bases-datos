SELECT d.nombre_departamento

FROM Departamentos d 

WHERE NOT EXISTS (

    SELECT *

    FROM Proyectos p

    WHERE p.id_departamento = d.id_departamento
);