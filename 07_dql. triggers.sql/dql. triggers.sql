-- Triggers
-- 1. Actualiza el inventario de especies al insertar una nueva especie en un área
delimiter //
create trigger actualizar_inventario_insert
after insert on especie_area
for each row
begin
    update especie set cantidad = cantidad + new.cantidad where id = new.id_especie;
end;
//
delimiter ;

-- 2. Reduce el inventario al eliminar una especie de un área
delimiter //
create trigger actualizar_inventario_delete
after delete on especie_area
for each row
begin
    update especie set cantidad = cantidad - old.cantidad where id = old.id_especie;
end;
//
delimiter ;

-- 3. Ajusta el inventario al actualizar la cantidad de una especie en un área
delimiter //
create trigger actualizar_inventario_update
after update on especie_area
for each row
begin
    update especie set cantidad = cantidad - old.cantidad + new.cantidad where id = new.id_especie;
end;
//
delimiter ;

-- 4. Verifica que la cantidad de especies en un área no sea negativa
delimiter //
create trigger validar_cantidad_especie
before update on especie_area
for each row
begin
    if new.cantidad < 0 then
        set new.cantidad = 0;
    end if;
end;
//
delimiter ;

-- 5. Impide eliminar un área si tiene especies registradas
delimiter //
create trigger prevenir_eliminar_area
before delete on area
for each row
begin
    if (select count(*) from especie_area where id_area = old.id) > 0 then
        signal sqlstate '45000' set message_text = 'No se puede eliminar el área, tiene especies registradas.';
    end if;
end;
//
delimiter ;

-- 6. Registra cambios salariales en un historial
delimiter //
create trigger registrar_cambio_sueldo
after update on personal
for each row
begin
    if old.sueldo <> new.sueldo then
        insert into historial_salarial (id_personal, sueldo_anterior, sueldo_nuevo, fecha_cambio)
        values (new.id, old.sueldo, new.sueldo, now());
    end if;
end;
//
delimiter ;

-- 7. Impide que el sueldo de un empleado sea negativo
delimiter //
create trigger validar_sueldo_personal
before update on personal
for each row
begin
    if new.sueldo < 0 then
        signal sqlstate '45000' set message_text = 'El sueldo no puede ser negativo.';
    end if;
end;
//
delimiter ;

-- 8. Impide eliminar personal con registros en otras tablas
delimiter //
create trigger prevenir_eliminar_personal
before delete on personal
for each row
begin
    if (select count(*) from vigilancia where id_personal = old.id) > 0
    or (select count(*) from gestion where id_personal = old.id) > 0
    or (select count(*) from investigacion where id_personal = old.id) > 0
    or (select count(*) from conservacion where id_personal = old.id) > 0 then
        signal sqlstate '45000' set message_text = 'No se puede eliminar el personal, tiene registros asociados.';
    end if;
end;
//
delimiter ;

-- 9. Registra cambios de rol en el historial de movimientos
delimiter //
create trigger registrar_movimiento_personal
after update on personal
for each row
begin
    if old.code_rol <> new.code_rol then
        insert into historial_movimientos (id_personal, rol_anterior, rol_nuevo, fecha_cambio)
        values (new.id, old.rol, new.rol, now());
    end if;
end;
//
delimiter ;

-- 10. Previene la asignación de un rol no válido
delimiter //
create trigger validar_rol_personal
before insert on personal
for each row
begin
    if new.code_rol not in ('001', '002', '003', '004') then
        signal sqlstate '45000' set message_text = 'Rol no válido.';
    end if;
end;
//
delimiter ;

-- 11. Registrar al visitante en una tabla de historia
delimiter //
create trigger registrar_ingreso_visitante
after insert on visitante
for each row
begin
    insert into historial_visitantes (id_visitante, fecha_ingreso)
    values (new.id, now());
end;
//
delimiter ;

-- 12. Verifica que un visitante no tenga más de un alojamiento en el mismo parque
delimiter //
create trigger validar_alojamiento_unico
before insert on alojamiento
for each row
begin
    if (select count(*) from alojamiento where id_visitante = new.id_visitante and id_parque = new.id_parque) > 0 then
        signal sqlstate '45000' set message_text = 'El visitante ya tiene un alojamiento en este parque.';
    end if;
end;
//
delimiter ;

-- 13. Previene la eliminación de visitantes con alojamientos activos
delimiter //
create trigger prevenir_eliminar_visitante
before delete on visitante
for each row
begin
    if (select count(*) from alojamiento where id_visitante = old.id) > 0 then
        signal sqlstate '45000' set message_text = 'No se puede eliminar el visitante, tiene un alojamiento asignado.';
    end if;
end;
//
delimiter ;

-- 14. Actualiza el número de visitantes en el parque al agregar uno nuevo
delimiter //
create trigger actualizar_numero_visitantes
after insert on visitante
for each row
begin
    update parque set num_visitantes = num_visitantes + 1 where id = (select id_parque from alojamiento where id_visitante = new.id);
end;
//
delimiter ;

-- 15. Reduce el número de visitantes en el parque al eliminar un visitante
delimiter //
create trigger actualizar_numero_visitantes_eliminar
after delete on visitante
for each row
begin
    update parque set num_visitantes = num_visitantes - 1 where id = (select id_parque from alojamiento where id_visitante = old.id);
end;
//
delimiter ;

-- 16. Previene asignar un vehículo a más de un personal de vigilancia
delimiter //
create trigger validar_vehiculo_unico
before insert on vehiculo
for each row
begin
    if (select count(*) from vehiculo where id_vigilancia = new.id_vigilancia) > 0 then
        signal sqlstate '45000' set message_text = 'El personal ya tiene un vehículo asignado.';
    end if;
end;
//
delimiter ;

-- 17. Registra cambios de vehículos asignados a personal de vigilancia
delimiter //
create trigger registrar_cambio_vehiculo
after update on vehiculo
for each row
begin
    if old.id_vigilancia <> new.id_vigilancia then
        insert into historial_vehiculos (id_vigilancia_anterior, id_vigilancia_nueva, id_vehiculo, fecha_cambio)
        values (old.id_vigilancia, new.id_vigilancia, new.id, now());
    end if;
end;
//
delimiter ;

-- 18. Bloquea la asignación de un vehículo si la vigencia es menor o igual a 0
delimiter //
create trigger validar_vigencia_vehiculo
before insert on vehiculo
for each row
begin
    if new.vigencia <= 0 then
        signal sqlstate '45000' set message_text = 'La vigencia del vehículo debe ser mayor a 0.';
    end if;
end;
//
delimiter ;

-- 19. Previene la eliminación de un vehículo si está en uso
delimiter //
create trigger prevenir_eliminar_vehiculo
before delete on vehiculo
for each row
begin
    if (select count(*) from vigilancia where id = old.id_vigilancia) > 0 then
        signal sqlstate '45000' set message_text = 'No se puede eliminar el vehículo, está asignado a personal de vigilancia.';
    end if;
end;
//
delimiter ;

-- 20. Ajusta la vigencia del vehículo al actualizar el modelo
delimiter //
create trigger actualizar_vigencia_vehiculo
after update on vehiculo
for each row
begin
    if old.modelo <> new.modelo then
        update vehiculo 
        set vigencia = vigencia + 2
        where id = new.id;
    end if;
end;
//
delimiter ;

