-- Eventos
delimiter //

-- 1. generar reporte semanal de visitantes y alojamientos
create event generar_reporte_visitantes_alojamientos
on schedule every 7 day
do
insert into reportes_visitantes_alojamientos (fecha, total_visitantes, total_alojamientos)
select curdate(), count(distinct v.id), count(a.id)
from visitante v
left join alojamiento a on v.id = a.id_visitante;

-- 2. actualizar inventario de especies semanalmente
create event actualizar_inventario_especies
on schedule every 7 day
do
update especie_area set cantidad = cantidad + floor(rand() * 10);

-- 3. limpiar registros de visitantes inactivos cada mes
create event limpiar_visitantes_inactivos
on schedule every 1 month
do
delete from visitante where id not in (select id_visitante from alojamiento);

-- 4. actualizar sueldos del personal anualmente
create event actualizar_sueldos_personal
on schedule every 1 year
do
update personal set sueldo = sueldo * 1.05 where sueldo is not null;

-- 5. verificar vigencia de vehículos mensualmente
create event verificar_vigencia_vehiculos
on schedule every 1 month
do
update vehiculo set vigencia = vigencia - 1 where vigencia > 0;

-- 6. eliminar proyectos sin actividad cada 6 meses
create event eliminar_proyectos_inactivos
on schedule every 6 month
do
delete from proyecto where id not in (select id_proyecto from proyecto_investigador);

-- 7. recalcular presupuesto de proyectos trimestralmente
create event recalcular_presupuesto_proyectos
on schedule every 3 month
do
update proyecto set presupuesto = presupuesto * 1.02;

-- 8. archivar datos de vigilancia anualmente
create event archivar_vigilancia
on schedule every 1 year
do
insert into archivo_vigilancia select * from vigilancia;

-- 9. asignar nuevas áreas a personal de conservación cada 3 meses
create event asignar_areas_conservacion
on schedule every 3 month
do
update conservacion set especialidad = 'general' where especialidad is null;

-- 10. generar reporte mensual de especies en peligro
create event reporte_especies_peligro
on schedule every 1 month
do
insert into reportes_especies_peligro (fecha, total)
select curdate(), count(*) from especie_area where cantidad < 10;

-- 11. actualizar categorías de alojamiento semestralmente
create event actualizar_categorias_alojamiento
on schedule every 6 month
do
update alojamiento set categoria = 'premium' where categoria = 'standard';

-- 12. eliminar reservas de alojamiento vencidas diariamente
create event eliminar_reservas_vencidas
on schedule every 1 day
do
delete from alojamiento where id_visitante in (select id from visitante where datediff(curdate(), fecha_reserva) > 30);

-- 13. verificar estado de parques cada 6 meses
create event verificar_estado_parques
on schedule every 6 month
do
update parque set estado = 'mantenimiento' where id in (select id_parque from area where extension < 100);

-- 14. reasignar vehículos en vigilancia anualmente
create event reasignar_vehiculos
on schedule every 1 year
do
update vehiculo set id_vigilancia = (select id from vigilancia order by rand() limit 1);

-- 15. calcular visitas promedio por parque trimestralmente
create event calcular_visitas_promedio
on schedule every 3 month
do
insert into reportes_visitas_promedio (fecha, parque, visitas)
select curdate(), id_parque, avg(cantidad) from visitante group by id_parque;

-- 16. asignar nuevos proyectos a investigadores cada 6 meses
create event asignar_proyectos_investigadores
on schedule every 6 month
do
insert into proyecto_investigador (id_investigador, id_proyecto)
select id, (select id from proyecto order by rand() limit 1) from investigador;

-- 17. generar informe anual de costos de proyectos
create event informe_costos_proyectos
on schedule every 1 year
do
insert into reportes_costos_proyectos (fecha, total)
select curdate(), sum(presupuesto) from proyecto;

-- 18. actualizar cantidad de especies detectadas cada 2 semanas
create event actualizar_especies_detectadas
on schedule every 14 day
do
update especie_area set cantidad = cantidad + floor(rand() * 5);

-- 19. verificar personal sin asignación de áreas trimestralmente
create event verificar_personal_sin_areas
on schedule every 3 month
do
update personal set code_rol = '003' where id not in (select id_personal from conservacion);

-- 20. eliminar especies sin registro de áreas anualmente
create event eliminar_especies_sin_areas
on schedule every 1 year
do
delete from especie where id not in (select id_especie from especie_area);

//
delimiter ;
