-- Usuarios

-- 1. administrador
create role administrador;
grant all privileges on Los_Ambientales.* to administrador;

-- 2. gestor parques
create role gestor_parques;
grant select, insert, update, delete on Parque to gestor_parques;
grant select, insert, update, delete on Area to gestor_parques;
grant select, insert, update, delete on Especie to gestor_parques;
-- 3. investigador
create role investigador;
grant select on Proyecto to investigador;
grant select on Especie to investigador;

-- 4.auditor
create role auditor;
grant select on Proyecto to auditor;
grant select on Personal to auditor;

-- 5. encargado visitantes
create role encargado_visitantes;
grant select, insert, update, delete on Visitante to encargado_visitantes;
grant select, insert, update, delete on Alojamiento to encargado_visitantes;

-- Aplicación de cambios
flush privileges;