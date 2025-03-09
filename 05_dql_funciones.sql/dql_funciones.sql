-- Funciones

-- 1.Superficie total de parques por departamento
delimiter &&
create function superficie_total_departamento(id_dep int) returns decimal(12,2)
deterministic
begin
    declare total decimal(12,2);
    select sum(a.extension) into total
    from area a
    join parque_departamento pd on a.id_parque = pd.id_parque
    where pd.id_departamento = id_dep;
    return coalesce(total, 0);
end&&
delimiter ;

-- 2. Cantidad total de especies por área
delimiter &&
create function total_especies_area(id_area int) returns int
deterministic
begin
    declare total int;
    select sum(cantidad) into total
    from especie_area
    where id_area = id_area;
    return coalesce(total, 0);
end&&
delimiter ;

-- 3. Número de parques por departamento
delimiter &&
create function parques_por_departamento(id_dep int) returns int
deterministic
begin
    declare total int;
    select count(distinct pd.id_parque) into total
    from parque_departamento pd
    where pd.id_departamento = id_dep;
    return total;
end&&
delimiter ;

-- 4. Cantidad de especies por tipo en un área
delimiter &&
create function especies_por_tipo(id_area int, tipo_especie enum('vegetal', 'animal', 'mineral')) returns int
deterministic
begin
    declare total int;
    select count(e.id) into total
    from especie_area ea
    join especie e on ea.id_especie = e.id
    where ea.id_area = id_area and e.tipo = tipo_especie;
    return total;
end&&
delimiter ;

-- 5. Cálculo del presupuesto total de proyectos de un periodo
delimiter &&
create function presupuesto_proyectos(periodo_proyecto varchar(50)) returns decimal(12,2)
deterministic
begin
    declare total decimal(12,2);
    select sum(presupuesto) into total
    from proyecto
    where periodo = periodo_proyecto;
    return coalesce(total, 0);
end&&
delimiter ;

-- 6. Costo operativo promedio de proyectos
delimiter &&
create function costo_promedio_proyectos() returns decimal(12,2)
deterministic
begin
    declare promedio decimal(12,2);
    select avg(presupuesto) into promedio from proyecto;
    return coalesce(promedio, 0);
end&&
delimiter ;

-- 7. Número total de personal por tipo
delimiter &&
create function total_personal_por_tipo(tipo_codigo enum("001", "002", "003", "004")) returns int
deterministic
begin
    declare total int;
    select count(id) into total
    from personal
    where code_rol = tipo_codigo;
    return total;
end&&
delimiter ;

-- 8. Total de visitantes en un parque
delimiter &&
create function total_visitantes_parque(id_parque int) returns int
deterministic
begin
    declare total int;
    select count(v.id) into total
    from visitante v
    join alojamiento a on v.id = a.id_visitante
    where a.id_parque = id_parque;
    return coalesce(total, 0);
end&&
delimiter ;

-- 9. Número de investigadores en un proyecto
delimiter &&
create function total_investigadores_proyecto(id_proyecto int) returns int
deterministic
begin
    declare total int;
    select count(id_investigador) into total
    from proyecto_investigador
    where id_proyecto = id_proyecto;
    return coalesce(total, 0);
end&&
delimiter ;

-- 10. Número de vehículos asignados a vigilancia
delimiter &&
create function total_vehiculos_vigilancia(id_vigilancia int) returns int
deterministic
begin
    declare total int;
    select count(id) into total
    from vehiculo
    where id_vigilancia = id_vigilancia;
    return coalesce(total, 0);
end&&
delimiter ;

-- 11. Número de áreas en un parque
delimiter &&
create function total_areas_parque(id_parque int) returns int
deterministic
begin
    declare total int;
    select count(id) into total
    from area
    where id_parque = id_parque;
    return coalesce(total, 0);
end&&
delimiter ;

-- 12. Sueldo total del personal por tipo
delimiter &&
create function sueldo_total_personal(tipo_codigo enum("001", "002", "003", "004")) returns decimal(12,2)
deterministic
begin
    declare total decimal(12,2);
    select sum(sueldo) into total
    from personal
    where code_rol = tipo_codigo;
    return coalesce(total, 0);
end&&
delimiter ;

-- 13. Cantidad de visitantes por profesión
delimiter &&
create function total_visitantes_profesion(profesion_visitante varchar(100)) returns int
deterministic
begin
    declare total int;
    select count(id) into total
    from visitante
    where profesion = profesion_visitante;
    return coalesce(total, 0);
end&&
delimiter ;

-- 14. Cantidad de proyectos que investigan una especie
delimiter &&
create function total_proyectos_especie(id_especie int) returns int
deterministic
begin
    declare total int;
    select count(id_proyecto) into total
    from proyecto_especie
    where id_especie = id_especie;
    return coalesce(total, 0);
end&&
delimiter ;

-- 15. Cantidad de conservacionistas por especialidad
delimiter &&
create function total_conservacion_especialidad(especialidad_nombre varchar(100)) returns int
deterministic
begin
    declare total int;
    select count(id) into total
    from conservacion
    where especialidad = especialidad_nombre;
    return coalesce(total, 0);
end&&
delimiter ;

-- 16. Número de parques por entidad responsable
delimiter &&
create function parques_por_entidad(id_entidad int) returns int
deterministic
begin
    declare total int;
    select count(distinct pd.id_parque) into total
    from parque_departamento pd
    join departamento d on pd.id_departamento = d.id
    where d.id_ent_responsable = id_entidad;
    return coalesce(total, 0);
end&&
delimiter ;

-- 17. Número de especies en todos los parques
delimiter &&
create function total_especies_parques() returns int
deterministic
begin
    declare total int;
    select count(distinct id_especie) into total from especie_area;
    return total;
end&&
delimiter ;

-- 18. Número de proyectos en un periodo específico
delimiter &&
create function total_proyectos_periodo(periodo_proyecto varchar(50)) returns int
deterministic
begin
    declare total int;
    select count(id) into total from proyecto where periodo = periodo_proyecto;
    return coalesce(total, 0);
end&&
delimiter ;

-- 19. Total de personal asignado a vigilancia
delimiter &&
create function total_personal_vigilancia() returns int
deterministic
begin
    declare total int;
    select count(id) into total from vigilancia;
    return coalesce(total, 0);
end&&
delimiter ;

-- 20. Cantidad de alojamientos por categoría
delimiter &&
create function total_alojamientos_categoria(categoria_nombre varchar(100)) returns int
deterministic
begin
    declare total int;
    select count(id) into total from alojamiento where categoria = categoria_nombre;
    return coalesce(total, 0);
end&&
delimiter ;