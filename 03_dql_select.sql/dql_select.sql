-- Consultas

/*
 1. Estados de actual de los Parques 
*/

-- 1. Cantidad de Parques por Departamentos
select d.nombre as departamento, count(pd.id_parque) as total_parques
from departamento d
left join parque_departamento pd on d.id = pd.id_departamento
group by d.id;

-- 2. Superficie total de áreas protegidas por Parque
select p.nombre as parque, sum(a.extension) as total_extension
from parque p
left join area a on p.id = a.id_parque
group by p.id
order by total_extension desc;

-- 3. Obtener el parque más antiguo
select d.nombre as departamento, p.nombre as parque, p.fecha_declaración
from parque p
join parque_departamento pd on p.id = pd.id_parque
join departamento d on pd.id_departamento = d.id
where p.fecha_declaración = (
    select min(p2.fecha_declaración)
    from parque p2
    join parque_departamento pd2 on p2.id = pd2.id_parque
    where pd2.id_departamento = d.id
)
order by p.fecha_declaración asc;

-- 4. Mostrar el parque más grande en termino de extensión 
select p.nombre, sum(a.extension) as total_extension
from parque p
join area a on p.id = a.id_parque
group by p.id
order by total_extension desc
limit 1;

-- 5. Mostrar la cantidad de areas de cada Parque
select p.nombre, count(a.id) as total_areas
from parque p
join area a on p.id = a.id_parque
group by p.id;

/*
 2. Inventario de Especies
*/

-- 6. Contar cuantas especies hay de cada tipo
select tipo, count(id) as total_especies
from especie
group by tipo;

-- 7. Obtener el área con mayor cantidad de especies registradas.
select a.nombre, count(ea.id_especie) as total_especies
from area a
join especie_area ea on a.id = ea.id_area
group by a.id
order by total_especies desc
limit 1;

-- 8. Listar las especies presentes en cada área
select a.nombre as area, e.nom_cientifico as especie
from especie e
join especie_area ea on e.id = ea.id_especie
join area a on ea.id_area = a.id;

-- 9. Mostrar el área con más especies de tipo Animal
select a.nombre, count(e.id) as total_animales
from area a
join especie_area ea on a.id = ea.id_area
join especie e on ea.id_especie = e.id
where e.tipo = 'Animal'
group by a.id
order by total_animales desc
limit 1;

-- 10. Contar la cantidad de especies por parque
select p.nombre, count(distinct ea.id_especie) as total_especies
from parque p
join area a on p.id = a.id_parque
join especie_area ea on a.id = ea.id_area
group by p.id;

/*
3. Actividades del Personal  
*/

-- 11. Contar cuántos empleados hay por tipo de rol
select rol, count(id) as total_empleados
from personal
group by rol;

-- 12. Obtener el sueldo promedio por tipo de personal
select rol, avg(sueldo) as sueldo_promedio
from personal
group by rol;

-- 13. Mostrar el empleado con el sueldo más alto
select nombre, apellido1, apellido2, sueldo
from personal
order by sueldo desc
limit 1;

-- 14. Mostrar el número total de personal de conservación por especialidad
select especialidad, count(id) as total_personal
from conservacion
group by especialidad;

-- 15. Mostrar los investigadores junto con la cantidad de proyectos en los que participan
select p2.nombre, count(p.id_proyecto) as total_proyectos
from investigador i
join proyecto_investigador p on i.id = p.id_investigador
join personal p2 on i.id_personal = p2.id
group by i.id;

/*
 4. Estadísticas de proyectos de investigación
*/

-- 16. Contar el total de proyectos de investigación
select count(id) as total_proyectos 
from proyecto;

-- 17. Calcular el presupuesto total asignado a proyectos
select sum(presupuesto) as presupuesto_total 
from proyecto;

-- 18. Obtener el promedio de presupuesto por proyecto
select avg(presupuesto) as presupuesto_promedio 
from proyecto;

-- 19. Mostrar el proyecto con mayor cantidad de especies involucradas
select p.id, count(pe.id_especie) as total_especies
from proyecto p
join proyecto_especie pe on p.id = pe.id_proyecto
group by p.id
order by total_especies desc
limit 1;

-- 20. Listar las especies con la cantidad de proyectos en los que están involucradas
select e.nom_cientifico, count(p.id_proyecto) as total_proyectos
from especie e
join proyecto_especie p on e.id = p.id_especie
group by e.id;

/*
 5. Gestión de visitantes y ocupación de alojamientos
*/

-- 21. Contar la cantidad total de visitantes
select count(id) as total_visitantes 
from visitante;

-- 22. Contar cuántos visitantes hay por profesión
select profesion, count(id) as total
from visitante
group by profesion;

-- 23. Obtener el alojamiento con más visitantes registrados
select a.nombre, count(a.id_visitante) as total_visitantes
from alojamiento a
join visitante v on a.id_visitante = v.id
group by a.id
order by total_visitantes desc
limit 1;

-- 24. Mostrar los visitantes y los parques donde se han alojado
select v.nombre, p.nombre as parque
from visitante v
join alojamiento a on v.id = a.id_visitante
join parque p on a.id_parque = p.id;

-- 25. Contar la cantidad de alojamientos por categoría
select categoria, count(id) as total_alojamientos
from alojamiento
group by categoria;

/*
 6. Otras Consultas y subconsultas
*/

-- 26. Listar todos los parques con su fecha de declaración
select nombre, fecha_declaración from parque;

-- 27. Listar las áreas que tienen una extensión superior al promedio de todas las áreas
select nombre, extension
from area
where extension > (select avg(extension) from area);

-- 28. Número de áreas protegidas declaradas después del año 2002
select count(*) as total_areas
from parque
where fecha_declaración > '2002-01-01';

-- 29. Obtener la cantidad total de visitantes registrados en alojamientos dentro de cada parque, 
-- mostrando los parques en orden descendente según la cantidad de visitantes
select p.nombre, count(v.id) as total_visitantes
from parque p
join alojamiento a on p.id = a.id_parque
join visitante v on a.id_visitante = v.id
group by p.id
order by total_visitantes desc;

-- 30.  Listar los proyectos de investigación junto con el presupuesto total asignado.
select id, periodo, Presupuesto
from Proyecto
order by Presupuesto desc;

/* 31. Obtener el número total de especies diferentes registradas en cada parque, 
 considerando únicamente aquellas que tienen más de 10 registros en un área.
*/
select p.nombre as parque, count(distinct ea.id_especie) as total_especies
from parque p
join area a on p.id = a.id_parque
join especie_area ea on a.id = ea.id_area
where ea.cantidad > 10
group by p.nombre
order by total_especies desc;

-- 32. Listar los nombres de las áreas con una extensión mayor al promedio de todas las áreas.
select nombre, extension
from Area
where extension > (select avg(extension) from Area);

-- 33. Obtener la cantidad total de visitantes registrados en alojamientos por categoría
select a.categoria, count(v.id) as total_visitantes
from Alojamiento a
join Visitante v on a.id_visitante = v.id
group by a.categoria
order by total_visitantes desc;

-- 34. Mostrar el personal ordenado por tipo de rol y sueldo de mayor a menor
select nombre, apellido1, apellido2, rol, sueldo
from Personal
order by code_rol, sueldo desc;

-- 35. Mostrar el personal ordenado por tipo de rol y sueldo de mayor a menor.
select nombre, apellido1, apellido2, rol, sueldo
from personal p 
order by code_rol, sueldo desc;

-- 36. Contar cuántos vehículos de cada tipo hay registrados en vigilancia
select v.tipo, count(*) as total_vehiculos
from vehiculo v
group by v.tipo
order by total_vehiculos desc;

-- 37. Listar los parques declarados antes del año 2000 con su fecha de declaración.
select nombre, fecha_declaración
from Parque
where fecha_declaración < '2000-01-01'
order by fecha_declaración asc;

-- 38. Obtener el nombre de los investigadores que han participado en más de un proyecto.
SELECT i.id_personal, p.nombre, p.apellido1, COUNT(pi.id_proyecto) AS total_proyectos
FROM Investigador i
JOIN Proyecto_Investigador pi ON i.id = pi.id_investigador
JOIN Personal p ON i.id_personal = p.id
GROUP BY i.id_personal, p.nombre, p.apellido1
HAVING total_proyectos > 1;

-- 39. Listar los visitantes junto con la cantidad de alojamientos en los que han estado
select v.nombre, count(a.id) as total_alojamientos
from Visitante v
join Alojamiento a on v.id = a.id_visitante
group by v.nombre
order by total_alojamientos desc;

-- 40. Listar los parques con su cantidad total de áreas registradas, ordenados de mayor a menor

select p.nombre as parque, count(a.id) as total_areas
from parque p
left join area a on p.id = a.id_parque
group by p.id
order by total_areas desc;

-- 41. Obtener la extensión total de todas las áreas dentro de cada parque
select p.nombre as parque, coalesce(sum(a.extension), 0) as extension_total
from parque p
left join area a on p.id = a.id_parque
group by p.id
order by extension_total desc;

-- 42. Contar la cantidad total de especies registradas en todas las áreas del sistema
select count(distinct id_especie) as total_especies
from especie_area;

-- 43. Obtener el total de personal por cada rol en el sistema
select rol, count(*) as total_personal
from personal
group by rol
order by total_personal desc;

-- 44. Listar los proyectos con su presupuesto y la cantidad de especies involucradas
select p.id, p.presupuesto, count(pe.id_especie) as especies_involucradas
from proyecto p
left join proyecto_especie pe on p.id = pe.id_proyecto
group by p.id
order by presupuesto desc;

-- 45. Calcular el presupuesto total destinado a proyectos de investigación
select sum(presupuesto) as presupuesto_total
from proyecto;

-- 46. Encontrar el proyecto con mayor cantidad de investigadores asociados
select p.id, count(pi.id_investigador) as total_investigadores
from proyecto p
join proyecto_investigador pi on p.id = pi.id_proyecto
group by p.id
order by total_investigadores desc
limit 1;

-- 47. Cantidad total de visitantes registrados en el sistema
select count(*) as total_visitantes 
from visitante;

-- 48. Cantidad de proyectos registrados en el sistema
select count(*) as total_proyectos 
from proyecto;

-- 49. Promedio de presupuesto de los proyectos
select avg(presupuesto) as presupuesto_promedio 
from proyecto;

-- 50. Promedio de presupuesto de los proyectos
select avg(presupuesto) as presupuesto_promedio 
from proyecto;

-- 51. Cantidad de especies registradas en el sistema
select count(*) as total_especies 
from especie;

-- 52. Mostrar las especies que están presentes en al menos un área
select e.n
om_cientifico
from especie e
where e.id in (select distinct id_especie from especie_area);

-- 54. Cantidad de vehículos asignados a vigilancia
select count(*) as total_vehiculos 
from vehiculo;

-- 55. Cantidad de vigilantes registrados en el sistema
select count(*) as total_vigilantes 
from vigilancia;

-- 56. Cantidad de investigadores registrados en el sistema
select count(*) as total_investigadores 
from investigador;

-- 57. Cantidad de personal de conservación en el sistema
select count(*) as total_personal_conservacion 
from conservacion;

-- 58. Cantidad de alojamientos en cada parque
select p.nombre as parque, count(a.id) as total_alojamientos
from parque p
join alojamiento a on p.id = a.id_parque
group by p.nombre
order by total_alojamientos desc;

-- 59. Cantidad de proyectos asociados a cada investigador
select i.id as id_investigador, count(pi.id_proyecto) as total_proyectos
from investigador i
join proyecto_investigador pi on i.id = pi.id_investigador
group by i.id
order by total_proyectos desc;

-- 60. Obtener la cantidad de visitantes registrados en cada parque, ordenados de mayor a menor
select p.nombre as parque, count(v.id) as total_visitantes
from parque p
join alojamiento a on p.id = a.id_parque
join visitante v on a.id_visitante = v.id
group by p.id
order by total_visitantes desc;

-- 61. Listar especies registradas y presupuestos de proyectos con sus respectivas categorías.
select nom_cientifico as nombre, 'Especie registrada' as categoria, 'Especie' as tipo from especie
union
select cast(presupuesto as char), 'Presupuesto de proyecto' as categoria, 'Proyecto' as tipo from proyecto;

-- 62. Listar todos los visitantes y personal de gestión con su nombre, indicando si son visitantes o personal
select nombre, 'visitante' as tipo from visitante
union
select nombre, 'personal de gestión' as tipo from personal where code_rol = '001';

-- 63. Mostrar todas las áreas y los alojamientos en los parques con su respectivo nombre y clasificación
select nombre, 'área' as tipo from area
union
select nombre, 'alojamiento' as tipo from alojamiento;

-- 64. Obtener una lista combinada de todas las especies investigadas en proyectos y las especies registradas en áreas
select e.nom_cientifico, 'proyecto' as tipo
from especie e
join proyecto_especie pe on e.id = pe.id_especie
union
select e.nom_cientifico, 'área' as tipo
from especie e
join especie_area ea on e.id = ea.id_especie;

-- 65. Listar todos los nombres de personal, indicando si son investigadores o personal de conservación
select p.nombre, 'investigador' as tipo
from personal p
join investigador i on p.id = i.id_personal
union
select p.nombre, 'conservación' as tipo
from personal p
join conservacion c on p.id = c.id_personal;

-- 66. Obtener una lista de los vehículos registrados junto con los parques en los que operan, sin repetir nombres
select v.nombre, 'vehículo' as tipo from vehiculo v
union
select p.nombre, 'parque' as tipo from parque p;

-- 67. Listar todas las entidades responsables y los departamentos registrados
select nombre, 'entidad responsable' as tipo from entidad_responsable
union
select nombre, 'departamento' as tipo from departamento;

-- 68. Obtener todos los proyectos y las especialidades de conservación existentes
select cast(p.periodo as char) as descripcion, 'proyecto' as tipo from proyecto p
union
select c.especialidad as descripcion, 'conservación' as tipo from conservacion c;

-- 69. Mostrar los alojamientos y los vehículos registrados en la base de datos
select nombre, 'alojamiento' as tipo from alojamiento
union
select nombre, 'vehículo' as tipo from vehiculo;

-- 70. Listar los nombres de los parques y los nombres de los investigadores en una sola consulta
select nombre, 'parque' as tipo from parque
union
select p.nombre, 'investigador' as tipo from personal p
join investigador i on p.id = i.id_personal;

-- 71. Obtener todas las especies cuyo nombre vulgar contenga la letra "a"
select * 
from especie where locate('a', nom_vulgar) > 0;

-- 72. Obtener todos los alojamientos cuyo nombre contenga "eco"
select * 
from alojamiento where locate('eco', nombre) > 0;

-- 73. Obtener todos los proyectos cuyo período contenga la fecha "2024"
select * 
from proyecto where locate('2024', periodo) > 0;

-- 74. Listar todos los departamentos cuyo nombre contenga "norte"
select * 
from departamento where locate('norte', nombre) > 0;

-- 75. Obtener todas las especialidades de conservación que contengan "agua"
select * 
from conservacion where locate('agua', especialidad) > 0;

-- 76. Listar los visitantes cuya profesión contenga "biólogo"
select * 
from visitante where locate('biólogo', profesion) > 0;

-- 77. Obtener todos los vehículos cuya placa contenga "J"
select * 
from vehiculo where locate('J', placa) > 0;

-- 78. Listar todos los parques cuyo nombre contenga "reserva"
select * 
from parque where locate('reserva', nombre) > 0;

-- 79. Listar todas las especies cuyo nombre vulgar contenga "verde" y se encuentren en áreas registradas
select e.*
from especie e
join especie_area ea on e.id = ea.id_especie
where locate('verde', e.nom_vulgar) > 0;

-- 80. Obtener todas las áreas y parques cuyo nombre contenga "montaña"
select nombre, 'área' as tipo from area where locate('montaña', nombre) > 0
union
select nombre, 'parque' as tipo from parque where locate('montaña', nombre) > 0;

-- 81. Listar los visitantes y el personal cuyo nombre contenga "ana"
select nombre, 'visitante' as tipo from visitante where locate('ana', nombre) > 0
union
select nombre, 'personal' as tipo from personal where locate('ana', nombre) > 0;

-- 82. Listar los alojamientos y visitantes cuyo nombre contenga "eco
select nombre, 'alojamiento' as tipo from alojamiento where locate('eco', nombre) > 0
union
select nombre, 'visitante' as tipo from visitante where locate('eco', nombre) > 0;

-- 83. Listar parques y departamentos que contengan "nacional"
select nombre, 'parque' as tipo from parque where locate('nacional', nombre) > 0
union
select nombre, 'departamento' as tipo from departamento where locate('nacional', nombre) > 0;

-- 84. Obtener el número total de visitantes por cada parque 
select p.nombre as parque, count(v.id) AS total_visitantes  
from parque p  
join alojamiento a on p.id = a.id_parque  
join visitante v on a.id_visitante = v.id  
group by p.nombre  
order by total_visitantes desc;

-- 85. Listar los periodos de los proyectos junto con la cantidad de especies investigadas en cada uno
select pr.periodo as proyecto, count(pe.id_especie ) as total_especies  
from proyecto pr  
join  proyecto_especie pe on pr.id = pe.id_proyecto  
group by pr.id  
order by total_especies desc;

-- 86. Mostrar el personal de conservación con su especialidad y el parque donde trabajan
select per.nombre, per.apellido1, c.especialidad, p.nombre as parque  
from personal per  
join conservacion c on per.id = c.id_personal  
join parque_departamento pd on pd.id_departamento = per.id  
join parque p on pd.id_parque = p.id;

-- 87. Listar los visitantes que se han alojado en algún parque
select v.nombre, v.profesion  
from visitante v  
where exists (select 1 from alojamiento a where a.id_visitante = v.id);

-- 88. Mostrar los investigadores que han participado en proyectos
select per.nombre, per.apellido1  
from personal per  
where exists (select 1 from investigador i where i.id_personal = per.id);

-- 89. Mostrar los proyectos con un presupuesto superior a la media de todos los proyectos
select periodo, presupuesto  
from proyecto  
having presupuesto > (select avg(presupuesto) from proyecto);

-- 90. Obtener los investigadores que han trabajado en más de 2 proyectos
select v.nombre, count(a.id) AS total_estancias  
from visitante v  
join alojamiento a on v.id = a.id_visitante  
group by v.id  
order by total_estancias desc  
limit 3;

-- 91. Mostrar los 10 empleados con los sueldos más altos
select nombre, apellido1, sueldo  
from personal  
order by sueldo desc  
limit 10;

-- 92. Obtener los diferentes tipos de roles en el personal
select distinct rol  
from personal;

-- 93. Mostrar los visitantes cuya profesión es única en la base de datos
select v.nombre, v.profesion  
from visitante v  
where (select count(*) from visitante where profesion = v.profesion) = 1;

-- 94. Obtener el personal cuyo sueldo sea el más alto de la base de datos
select nombre, apellido1, sueldo  
from personal  
where sueldo = (select max(sueldo) from personal);

-- 95. número total de proyectos activos en cada parque
select p.nombre as parque, count(distinct pr.id) as total_proyectos
from proyecto pr
join parque_departamento pd on pr.id = pd.id_parque
join parque p on pd.id_parque = p.id
group by p.nombre
order by total_proyectos desc;

-- 96. personal de conservación especializado en flora
select pe.nombre, pe.apellido1, pe.apellido2, c.especialidad
from personal pe
join conservacion c on pe.id = c.id_personal

-- 97. Cantidad de visitantes por profesión en cada parque
select p.nombre as parque, v.profesion, count(v.id) as cantidad_visitantes
from Visitante v
join Alojamiento aon v.id = a.id_visitante
join Parque p on a.id_parque = p.id
group by p.nombre, v.profesion
order by p.nombre, cantidad_visitantes desc;

-- 98. Presupuesto total invertido en proyectos por tipo de especie
select e.tipo, sum(pr.Presupuesto) as presupuesto_total
from Proyecto pr
join Proyecto_Especie pe on pr.id = pe.id_proyecto
join Especie e ON pe.id_especie = e.id
group by e.tipo
order by presupuesto_total desc;

-- 99. Vehículos asignados a cada personal de vigilancia
select per.nombre, per.apellido1, per.apellido2, v.nombre as vehiculo, v.placa, v.tipo, v.modelo
from Personal per
join Vigilancia vi on per.id = vi.id_personal
join Vehiculo v on vi.id = v.id_vigilancia
order by per.nombre, v.tipo;

-- 100. Promedio de sueldo por tipo de personal
select code_rol, rol, round(avg(sueldo), 2) as sueldo_promedio
from Personal
group by code_rol, rol
order by sueldo_promedio desc;
