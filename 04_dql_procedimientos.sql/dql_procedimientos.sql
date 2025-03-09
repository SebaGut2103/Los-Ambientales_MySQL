-- Procedimientos

-- 1. procedimiento para actualizar el presupuesto de un proyecto
delimiter $$
create procedure actualizar_presupuesto_proyecto(
    in p_id_proyecto int,
    in p_nuevo_presupuesto decimal(12,2)
)
begin
    update proyecto set presupuesto = p_nuevo_presupuesto where id = p_id_proyecto;
end $$
delimiter;

-- 2. procedimiento para registrar un nuevo visitante
delimiter $$
create procedure registrar_visitante(
    in p_nombre varchar(50),
    in p_direccion text,
    in p_profesion varchar(100)
)
begin
    insert into visitante (nombre, direccion, profesion) values (p_nombre, p_direccion, p_profesion);
end $$
delimiter;

-- 3. procedimiento para registrar un nuevo vehículo
delimiter $$
create procedure registrar_vehiculo(
    in p_id_vigilancia int,
    in p_nombre varchar(50),
    in p_placa varchar(50),
    in p_tipo varchar(50),
    in p_modelo varchar(50),
    in p_vigencia int
)
begin
    insert into vehiculo (id_vigilancia, nombre, placa, tipo, modelo, vigencia) 
    values (p_id_vigilancia, p_nombre, p_placa, p_tipo, p_modelo, p_vigencia);
end $$
delimiter;

-- 4. procedimiento para registrar personal
delimiter $$
create procedure registrar_personal(
    in p_nombre varchar(50),
    in p_apellido1 varchar(60),
    in p_apellido2 varchar(60),
    in p_cedula varchar(100),
    in p_direccion text,
    in p_code_rol enum('001','002','003','004'),
    in p_rol varchar(100),
    in p_sueldo decimal(10,2)
)
begin
    insert into personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
    values (p_nombre, p_apellido1, p_apellido2, p_cedula, p_direccion, p_code_rol, p_rol, p_sueldo);
end $$
delimiter;

-- 5. procedimiento para registrar un nuevo parque
delimiter $$
create procedure registrar_parque(
    in p_nombre varchar(50),
    in p_fecha_declaracion date
)
begin
    insert into parque (nombre, fecha_declaracion) values (p_nombre, p_fecha_declaracion);
end $$
delimiter;

-- 6. procedimiento para actualizar información de un parque
delimiter $$
create procedure actualizar_parque(
    in p_id_parque int,
    in p_nombre varchar(50),
    in p_fecha_declaracion date
)
begin
    update parque set nombre = p_nombre, fecha_declaracion = p_fecha_declaracion where id = p_id_parque;
end $$
delimiter;

-- 7. procedimiento para registrar un área
delimiter $$
create procedure registrar_area(
    in p_nombre varchar(50),
    in p_extension decimal(10,2),
    in p_id_parque int
)
begin
    insert into area (nombre, extension, id_parque) values (p_nombre, p_extension, p_id_parque);
end $$
delimiter;

-- 10. procedimiento para actualizar la extensión de un área
delimiter $$
create procedure actualizar_extension_area(
    in p_id_area int,
    in p_nueva_extension decimal(10,2)
)
begin
    update area set extension = p_nueva_extension where id = p_id_area;
end $$
delimiter;

-- 11. procedimiento para registrar una especie en un área
delimiter $$
create procedure registrar_especie_area(
    in p_id_especie int,
    in p_id_area int,
    in p_cantidad int
)
begin
    insert into especie_area (id_especie, id_area, cantidad) values (p_id_especie, p_id_area, p_cantidad);
end $$
delimiter;

-- 12. procedimiento para actualizar la cantidad de una especie en un área
delimiter $$
create procedure actualizar_cantidad_especie_area(
    in p_id_especie int,
    in p_id_area int,
    in p_nueva_cantidad int
)
begin
    update especie_area set cantidad = p_nueva_cantidad where id_especie = p_id_especie and id_area = p_id_area;
end $$
delimiter;

-- 13. procedimiento para eliminar un visitante
delimiter $$
create procedure eliminar_visitante(
    in p_id_visitante int
)
begin
    delete from visitante where id = p_id_visitante;
end $$
delimiter;

-- 14. procedimiento para eliminar un proyecto de investigación
delimiter $$
create procedure eliminar_proyecto(
    in p_id_proyecto int
)
begin
    delete from proyecto where id = p_id_proyecto;
end $$
delimiter ;

-- 15. procedimiento para obtener el presupuesto total de los proyectos en un periodo
delimiter $$
create procedure obtener_presupuesto_total(
    in p_periodo varchar(50)
)
begin
    select sum(presupuesto) as total_presupuesto from proyecto where periodo = p_periodo;
end $$
delimiter ;

-- 14. procedimiento para actualizar el presupuesto de un proyecto
delimiter $$
create procedure actualizar_presupuesto_proyecto(
    in p_id_proyecto int,
    in p_nuevo_presupuesto decimal(12,2)
)
begin
    update proyecto set presupuesto = p_nuevo_presupuesto where id = p_id_proyecto;
end $$
delimiter ;

-- 15. procedimiento para registrar un nuevo visitante
delimiter $$
create procedure registrar_visitante(
    in p_nombre varchar(50),
    in p_direccion text,
    in p_profesion varchar(100)
)
begin
    insert into visitante (nombre, direccion, profesion) values (p_nombre, p_direccion, p_profesion);
end $$
delimiter ;

-- 16. procedimiento para registrar un nuevo vehículo
delimiter $$
create procedure registrar_vehiculo(
    in p_id_vigilancia int,
    in p_nombre varchar(50),
    in p_placa varchar(50),
    in p_tipo varchar(50),
    in p_modelo varchar(50),
    in p_vigencia int
)
begin
    insert into vehiculo (id_vigilancia, nombre, placa, tipo, modelo, vigencia) 
    values (p_id_vigilancia, p_nombre, p_placa, p_tipo, p_modelo, p_vigencia);
end $$
delimiter ;

-- 17. procedimiento para registrar personal
delimiter $$
create procedure registrar_personal(
    in p_nombre varchar(50),
    in p_apellido1 varchar(60),
    in p_apellido2 varchar(60),
    in p_cedula varchar(100),
    in p_direccion text,
    in p_code_rol enum('001','002','003','004'),
    in p_rol varchar(100),
    in p_sueldo decimal(10,2)
)
begin
    insert into personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
    values (p_nombre, p_apellido1, p_apellido2, p_cedula, p_direccion, p_code_rol, p_rol, p_sueldo);
end $$
delimiter;

-- 18. procedimiento para registrar un nuevo parque junto con su relación con departamentos
delimiter $$
create procedure registrar_parque_departamento(
    in p_nombre varchar(50),
    in p_fecha_declaracion date,
    in p_id_departamento int
)
begin
    declare p_id_parque int;
    insert into parque (nombre, fecha_declaracion) values (p_nombre, p_fecha_declaracion);
    set p_id_parque = last_insert_id();
    insert into parque_departamento (id_parque, id_departamento) values (p_id_parque, p_id_departamento);
end $$
delimiter ;

-- 19. procedimiento para reasignar una especie de un área a otra
delimiter $$
create procedure mover_especie_area(
    in p_id_especie int,
    in p_id_area_origen int,
    in p_id_area_destino int,
    in p_cantidad int
)
begin
    declare cantidad_actual int;
    select cantidad into cantidad_actual from especie_area where id_especie = p_id_especie and id_area = p_id_area_origen;
    if cantidad_actual >= p_cantidad then
        update especie_area set cantidad = cantidad_actual - p_cantidad where id_especie = p_id_especie and id_area = p_id_area_origen;
        insert into especie_area (id_especie, id_area, cantidad) values (p_id_especie, p_id_area_destino, p_cantidad) 
        on duplicate key update cantidad = cantidad + p_cantidad;
    end if;
end $$
delimiter ;

-- 20. procedimiento para calcular el costo total de un proyecto de investigación con base en especies involucradas
delimiter $$
create procedure calcular_costo_proyecto(
    in p_id_proyecto int,
    out costo_total decimal(12,2)
)
begin
    select sum(ea.cantidad * 1000) into costo_total
    from especie_area ea
    join proyecto_especie pe on ea.id_especie = pe.id_especie
    where pe.id_proyecto = p_id_proyecto;
end $$
delimiter ;


