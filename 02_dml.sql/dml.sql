use Los_Ambientales;
-- Inserciones

-- 1. Las 50 inserciones de la tabla Entidad Responsable
insert into Entidad_Responsable (nombre) values
('Ministerio de Medio Ambiente'),
('Agencia Nacional de Conservación'),
('Fundación Vida Verde'),
('Reserva Natural Los Pinos'),
('Parques Nacionales Unidos'),
('Organización para la Biodiversidad'),
('Consejo de Áreas Protegidas'),
('Ecosistemas Sostenibles'),
('Guardianes del Bosque'),
('Instituto de Investigación Ecológica'),
('Programa de Recuperación Ambiental'),
('Asociación de Protección de Fauna'),
('Alianza Verde Global'),
('Corporación de Bosques y Selvas'),
('Proyecto Naturaleza Viva'),
('Centro de Estudios de la Naturaleza'),
('Reserva Ecológica Monte Azul'),
('Patrimonio Natural del País'),
('EcoDesarrollo Sustentable'),
('Red de Parques Naturales'),
('Sociedad para la Conservación'),
('Fundación Selva Viva'),
('Gestión de Ecosistemas Naturales'),
('Unidad de Protección Ambiental'),
('Programa de Áreas Silvestres'),
('Centro para la Protección del Agua'),
('Iniciativa Verde'),
('Estrategia de Conservación de Bosques'),
('Organización Mundial de Fauna'),
('Santuario Natural El Roble'),
('Plan de Protección de Especies'),
('Centro de Estudios de la Biodiversidad'),
('Fundación Amigos del Bosque'),
('Cooperativa de Reservas Naturales'),
('Parque Natural Los Cedros'),
('Grupo de Conservación Ambiental'),
('EcoGuardianes'),
('Instituto de Protección Forestal'),
('Alianza por los Ríos'),
('Consejo Nacional de Reservas'),
('Asociación de Protección del Hábitat'),
('Reserva Natural El Manantial'),
('Corporación para la Vida Silvestre'),
('Ecosistemas y Biodiversidad'),
('Parques y Reservas Ecológicas'),
('Instituto de Estudios Ambientales'),
('Programa de Restauración de Ecosistemas'),
('Comisión para la Conservación'),
('Proyecto Fauna y Flora'),
('Centro de Innovación Ambiental'),
('Red de Conservación Natural');

-- 2. Las 50 inserciones de la tabla Departamento
insert into Departamento (nombre, id_ent_responsable) values
('Amazonas', 1),
('Antioquia', 2),
('Arauca', 3),
('Atlántico', 4),
('Bolívar', 5),
('Boyacá', 6),
('Caldas', 7),
('Caquetá', 8),
('Casanare', 9),
('Cauca', 10),
('Cesar', 11),
('Chocó', 12),
('Córdoba', 13),
('Cundinamarca', 14),
('Guainía', 15),
('Guaviare', 16),
('Huila', 17),
('La Guajira', 18),
('Magdalena', 19),
('Meta', 20),
('Nariño', 21),
('Norte de Santander', 22),
('Putumayo', 23),
('Quindío', 24),
('Risaralda', 25),
('San Andrés y Providencia', 26),
('Santander', 27),
('Sucre', 28),
('Tolima', 29),
('Valle del Cauca', 30),
('Vaupés', 31),
('Vichada', 32),
-- Departamentos inventados
('Sierra Verde', 33),
('Montaña Azul', 34),
('Río Esmeralda', 35),
('Bosque Alto', 36),
('Costa Dorada', 37),
('Selva Serena', 38),
('Llanos del Sol', 39),
('Amazonía Central', 40),
('Río Cristal', 41),
('Bahía Verde', 42),
('Reserva Natural Andina', 43),
('Montañas del Sur', 44),
('Valle Escondido', 45),
('Páramo Norte', 46),
('Laguna Azul', 47),
('Tierra Viva', 48),
('Nueva Esperanza', 49),
('Altiplano Central', 50);

-- 3. Las 50 inserciones de la tabla Parque
insert into Parque (nombre, fecha_declaración) values
('Parque Nacional Sierra Nevada', '1985-06-12'),
('Parque Natural Los Páramos', '1992-09-25'),
('Reserva Ecológica Monte Verde', '2001-04-18'),
('Parque Nacional Río Claro', '1980-07-10'),
('Santuario de Fauna La Laguna', '1998-03-30'),
('Parque Nacional Bosque Nuboso', '2005-08-14'),
('Reserva Natural Selva Dorada', '2010-11-20'),
('Parque Nacional Cascadas del Sol', '1995-05-06'),
('Parque Ecológico Valle Escondido', '1988-12-03'),
('Reserva Natural Llanos del Norte', '2002-07-22'),
('Parque Nacional Costa Azul', '1993-10-11'),
('Santuario Natural Isla Verde', '2008-06-17'),
('Parque Nacional Montañas del Sur', '1999-05-25'),
('Reserva Biológica Los Robles', '2015-09-09'),
('Parque Nacional Río Cristal', '1975-03-15'),
('Área Protegida La Ceiba', '2007-12-01'),
('Reserva Ecológica Pantano Verde', '2013-08-07'),
('Parque Nacional Las Cascadas', '1982-01-28'),
('Santuario Natural de la Amazonía', '2018-11-14'),
('Parque Nacional Páramo de Oro', '1990-07-19'),
('Reserva Forestal Cañón del Sol', '1996-02-29'),
('Parque Nacional Laguna Azul', '2003-09-23'),
('Santuario de Fauna Río Esmeralda', '2009-06-05'),
('Parque Nacional Selva Alta', '1984-12-18'),
('Reserva Natural Valle del Trébol', '2011-04-02'),
('Parque Nacional Estepa Dorada', '1997-11-08'),
('Área Protegida Bosque de Niebla', '2016-05-14'),
('Parque Nacional Sierra Verde', '1978-09-27'),
('Reserva Natural Mar de Jade', '2004-07-01'),
('Santuario de Fauna y Flora Los Cedros', '1991-03-12'),
('Parque Nacional Cumbres Nevadas', '2019-10-09'),
('Área Protegida Altiplano Sereno', '1989-06-20'),
('Parque Nacional Bahía Turquesa', '2006-08-29'),
('Reserva Natural Colinas del Viento', '2014-02-18'),
('Parque Nacional Montes de Cristal', '1994-12-07'),
('Santuario de Vida Silvestre Río Verde', '2000-09-15'),
('Parque Nacional Dunas Doradas', '2020-11-22'),
('Reserva Biológica Mariposa Azul', '1987-05-30'),
('Parque Nacional Bosque del Jaguar', '1992-04-13'),
('Área Protegida Gran Sabana', '2008-10-03'),
('Parque Nacional Río Claro', '2012-07-28'),
('Santuario de Aves Bosque Nativo', '2017-06-25'),
('Parque Nacional Cueva del Puma', '1981-11-05'),
('Reserva Forestal Lago Espejo', '1995-02-14'),
('Parque Nacional Roca del Águila', '1979-08-09'),
('Santuario de Fauna y Flora El Nogal', '2005-03-21'),
('Parque Nacional Loma Hermosa', '2010-12-11'),
('Reserva Natural Ríos de Oro', '1983-09-30'),
('Parque Nacional Bosque de Cipreses', '2001-01-07'),
( 'Parque Nacional Los Katíos', '1974-06-06');

-- 4. Las 50 inserciones de la tabla Parque Departamento
insert into Parque_Departamento (id_parque, id_departamento) values
(1, 5), (2, 12), (3, 8), (4, 15), (5, 20),
(6, 25), (7, 30), (8, 35), (9, 40), (10, 45),
(11, 50), (12, 1), (13, 6), (14, 11), (15, 16),
(16, 21), (17, 26), (18, 31), (19, 36), (20, 41),
(21, 46), (22, 2), (23, 7), (24, 13), (25, 18),
(26, 23), (27, 28), (28, 33), (29, 38), (30, 43),
(31, 48), (32, 3), (33, 9), (34, 14), (35, 19),
(36, 24), (37, 29), (38, 34), (39, 39), (40, 44),
(41, 49), (42, 4), (43, 10), (44, 17), (45, 22),
(46, 27), (47, 32), (48, 37), (49, 42), (50, 47);

-- 5. Las 50 inserciones de la tabla Area
insert into Area (nombre, extension, id_parque)values
('Bosque Encantado', 120.50, 1),
('Lago Cristalino', 85.30, 2),
('Montaña Azul', 200.75, 3),
('Cueva Escondida', 50.10, 4),
('Cascada Dorada', 95.60, 5),
('Sendero del Jaguar', 130.20, 6),
('Laguna Mística', 70.80, 7),
('Río Esmeralda', 155.40, 8),
('Dunas del Viento', 90.25, 9),
('Cañón del Silencio', 180.90, 10),
('Pradera Brillante', 210.60, 11),
('Manglar Profundo', 60.75, 12),
('Acantilado de las Águilas', 145.30, 13),
('Selva Esmeralda', 175.90, 14),
('Isla del Sol', 80.50, 15),
('Monte Nevado', 250.00, 16),
('Humedales Sagrados', 110.40, 17),
('Reserva de los Pumas', 200.20, 18),
('Cueva del Murciélago', 45.30, 19),
('Desierto Florido', 95.10, 20),
('Arrecife de Coral', 300.75, 21),
('Playa Escondida', 120.50, 22),
('Colina de los Venados', 135.40, 23),
('Valle Encantado', 160.80, 24),
('Bosque de Niebla', 190.25, 25),
('Pantano Misterioso', 85.60, 26),
('Fuente Termal', 78.90, 27),
('Llanura de Oro', 210.30, 28),
('Río de los Delfines', 250.60, 29),
('Cordillera del Trueno', 300.40, 30),
('Costa del Tesoro', 95.75, 31),
('Estepa Solitaria', 120.90, 32),
('Marismas del Norte', 145.30, 33),
('Santuario de las Aves', 160.80, 34),
('Bosque de Bambú', 180.60, 35),
('Caverna Mística', 55.90, 36),
('Glaciar Eterno', 280.50, 37),
('Laguna Encantada', 70.30, 38),
('Duna Blanca', 100.20, 39),
('Sabana Salvaje', 220.40, 40),
('Acantilado Azul', 90.75, 41),
('Monte Espectral', 160.50, 42),
('Bahía Tranquila', 140.30, 43),
('Cueva del Dragón', 50.60, 44),
('Jardín Botánico', 85.20, 45),
('Playa Serena', 130.75, 46),
('Valle del Trueno', 170.40, 47),
('Río Cristalino', 195.60, 48),
('Bosque Mágico', 210.80, 49),
('Santuario Natural', 250.90, 50);

-- 6. Las 50 inserciones de la tabla Especie

-- Animales (20)
INSERT INTO Especie (nom_cientifico, nom_vulgar, tipo) VALUES 
('Panthera onca', 'Jaguar', 'Animal');

INSERT INTO Especie (nom_cientifico, nom_vulgar, tipo) VALUES 
('Cebus capucinus', 'Mono capuchino', 'Animal');

INSERT INTO Especie (nom_cientifico, nom_vulgar, tipo) VALUES 
('Tremarctos ornatus', 'Oso de anteojos', 'Animal');

INSERT INTO Especie (nom_cientifico, nom_vulgar, tipo) VALUES 
('Hydrochoerus hydrochaeris', 'Chigüiro', 'Animal');

INSERT INTO Especie (nom_cientifico, nom_vulgar, tipo) VALUES 
('Crax alberti', 'Paujil de pico azul', 'Animal');

INSERT INTO Especie (nom_cientifico, nom_vulgar, tipo) VALUES 
('Atelopus varius', 'Rana arlequín', 'Animal');

INSERT INTO Especie (nom_cientifico, nom_vulgar, tipo) VALUES 
('Ramphastos tucanus', 'Tucán de pico amarillo', 'Animal');

INSERT INTO Especie (nom_cientifico, nom_vulgar, tipo) VALUES 
('Saguinus oedipus', 'Tití cabeciblanco', 'Animal');

INSERT INTO Especie (nom_cientifico, nom_vulgar, tipo) VALUES 
('Dermochelys coriacea', 'Tortuga laúd', 'Animal');

INSERT INTO Especie (nom_cientifico, nom_vulgar, tipo) VALUES 
('Crocodylus intermedius', 'Caimán llanero', 'Animal');

INSERT INTO Especie (nom_cientifico, nom_vulgar, tipo) VALUES 
('Pteronura brasiliensis', 'Nutria gigante', 'Animal');

INSERT INTO Especie (nom_cientifico, nom_vulgar, tipo) VALUES 
('Myrmecophaga tridactyla', 'Oso hormiguero gigante', 'Animal');

INSERT INTO Especie (nom_cientifico, nom_vulgar, tipo) VALUES 
('Harpia harpyja', 'Águila harpía', 'Animal');

INSERT INTO Especie (nom_cientifico, nom_vulgar, tipo) VALUES 
('Leptodactylus pentadactylus', 'Rana toro amazónica', 'Animal');

INSERT INTO Especie (nom_cientifico, nom_vulgar, tipo) VALUES 
('Amazona ochrocephala', 'Loro real amazónico', 'Animal');

INSERT INTO Especie (nom_cientifico, nom_vulgar, tipo) VALUES 
('Dendrobates leucomelas', 'Rana venenosa amarilla', 'Animal');

INSERT INTO Especie (nom_cientifico, nom_vulgar, tipo) VALUES 
('Eunectes murinus', 'Anaconda verde', 'Animal');

INSERT INTO Especie (nom_cientifico, nom_vulgar, tipo) VALUES 
('Phoenicopterus ruber', 'Flamenco rosado', 'Animal');

INSERT INTO Especie (nom_cientifico, nom_vulgar, tipo) VALUES 
('Sciurus granatensis', 'Ardilla colombiana', 'Animal');

INSERT INTO Especie (nom_cientifico, nom_vulgar, tipo) VALUES 
('Odontophorus strophium', 'Perdiz santandereana', 'Animal');


-- Vegetales(15)
INSERT INTO Especie (nom_cientifico, nom_vulgar, tipo) VALUES 
('Quercus robur', 'Roble', 'Vegetal');

INSERT INTO Especie (nom_cientifico, nom_vulgar, tipo) VALUES 
('Pinus sylvestris', 'Pino silvestre', 'Vegetal');

INSERT INTO Especie (nom_cientifico, nom_vulgar, tipo) VALUES 
('Olea europaea', 'Olivo', 'Vegetal');

INSERT INTO Especie (nom_cientifico, nom_vulgar, tipo) VALUES 
('Coffea arabica', 'Cafetillo', 'Vegetal');

INSERT INTO Especie (nom_cientifico, nom_vulgar, tipo) VALUES 
('Ficus carica', 'Higuera', 'Vegetal');

INSERT INTO Especie (nom_cientifico, nom_vulgar, tipo) VALUES 
('Zea mays', 'Maíz', 'Vegetal');

INSERT INTO Especie (nom_cientifico, nom_vulgar, tipo) VALUES 
('Triticum aestivum', 'Trigo', 'Vegetal');

INSERT INTO Especie (nom_cientifico, nom_vulgar, tipo) VALUES 
('Oryza sativa', 'Arroz', 'Vegetal');

INSERT INTO Especie (nom_cientifico, nom_vulgar, tipo) VALUES 
('Daucus carota', 'Zanahoria', 'Vegetal');

INSERT INTO Especie (nom_cientifico, nom_vulgar, tipo) VALUES 
('Solanum lycopersicum', 'Tomate', 'Vegetal');

INSERT INTO Especie (nom_cientifico, nom_vulgar, tipo) VALUES 
('Capsicum annuum', 'Pimiento', 'Vegetal');

INSERT INTO Especie (nom_cientifico, nom_vulgar, tipo) VALUES 
('Prunus persica', 'Durazno', 'Vegetal');

INSERT INTO Especie (nom_cientifico, nom_vulgar, tipo) VALUES 
('Mangifera indica', 'Mango', 'Vegetal');

INSERT INTO Especie (nom_cientifico, nom_vulgar, tipo) VALUES 
('Persea americana', 'Aguacate', 'Vegetal');

INSERT INTO Especie (nom_cientifico, nom_vulgar, tipo) VALUES 
('Theobroma cacao', 'Cacao', 'Vegetal');

-- Minerales(15)

INSERT INTO Especie (nom_cientifico, nom_vulgar, tipo) VALUES 
('SiO₂', 'Cuarzo', 'Mineral');

INSERT INTO Especie (nom_cientifico, nom_vulgar, tipo) VALUES 
('Fe₂O₃', 'Hematita', 'Mineral');

INSERT INTO Especie (nom_cientifico, nom_vulgar, tipo) VALUES 
('CaCO₃', 'Calcita', 'Mineral');

INSERT INTO Especie (nom_cientifico, nom_vulgar, tipo) VALUES 
('Al₂SiO₅', 'Andalucita', 'Mineral');

INSERT INTO Especie (nom_cientifico, nom_vulgar, tipo) VALUES 
('Mg₃Si₄O₁₀(OH)₂', 'Talco', 'Mineral');

INSERT INTO Especie (nom_cientifico, nom_vulgar, tipo) VALUES 
('NaCl', 'Halita', 'Mineral');

INSERT INTO Especie (nom_cientifico, nom_vulgar, tipo) VALUES 
('KAlSi₃O₈', 'Ortosa', 'Mineral');

INSERT INTO Especie (nom_cientifico, nom_vulgar, tipo) VALUES 
('FeS₂', 'Pirita', 'Mineral');

INSERT INTO Especie (nom_cientifico, nom_vulgar, tipo) VALUES 
('CuFeS₂', 'Calcopirita', 'Mineral');

INSERT INTO Especie (nom_cientifico, nom_vulgar, tipo) VALUES 
('CaF₂', 'Fluorita', 'Mineral');

INSERT INTO Especie (nom_cientifico, nom_vulgar, tipo) VALUES 
('ZrSiO₄', 'Circón', 'Mineral');

INSERT INTO Especie (nom_cientifico, nom_vulgar, tipo) VALUES 
('C', 'Diamante', 'Mineral');

INSERT INTO Especie (nom_cientifico, nom_vulgar, tipo) VALUES 
('C', 'Grafito', 'Mineral');

INSERT INTO Especie (nom_cientifico, nom_vulgar, tipo) VALUES 
('Be₃Al₂Si₆O₁₈', 'Berilo', 'Mineral');

INSERT INTO Especie (nom_cientifico, nom_vulgar, tipo) VALUES 
('CaSO₄·2H₂O', 'Yeso', 'Mineral');

-- 7. Las 50 inserciones de la tabla Especie Area
INSERT INTO Especie_Area (id_especie, id_area, cantidad) VALUES 
(1,  1, 50), (2,  1, 30), (3,  1, 20), (4,  2, 40), (5,  2, 25),
(6,  2, 35), (7,  3, 45), (8,  3, 55), (9,  3, 60), (10,  4, 22),
(11, 4, 18), (12, 4, 26), (13, 5, 33), (14, 5, 29), (15, 5, 41),
(16, 6, 38), (17, 6, 44), (18, 6, 52), (19, 7, 19), (20, 7, 23),
(21, 7, 31), (22, 8, 37), (23, 8, 27), (24, 8, 21), (25, 9, 42),
(26, 9, 36), (27, 9, 50), (28, 10, 48), (29, 10, 34), (30, 10, 39),
(31, 1, 28), (32, 2, 32), (33, 3, 54), (34, 4, 47), (35, 5, 43),
(36, 6, 46), (37, 7, 49), (38, 8, 53), (39, 9, 20), (40, 10, 24),
(41, 1, 15), (42, 2, 17), (43, 3, 14), (44, 4, 12), (45, 5, 16),
(46, 6, 13), (47, 7, 11), (48, 8, 10), (49, 9, 9), (50, 10, 8);

-- 8. Las 50 inserciones de la tabla Proyecto
INSERT INTO Proyecto (Presupuesto, periodo) VALUES 
(150000.00, '2024-2025'),
(200000.50, '2023-2026'),
(300500.75, '2022-2025'),
(120000.00, '2025-2027'),
(450000.00, '2023-2028'),
(180000.30, '2024-2026'),
(220000.45, '2022-2024'),
(600000.00, '2023-2027'),
(750000.25, '2024-2029'),
(50000.00, '2022-2023'),
(90000.00, '2023-2024'),
(275000.60, '2025-2028'),
(400000.00, '2023-2026'),
(125000.00, '2022-2024'),
(350000.75, '2024-2027'),
(1000000.00, '2023-2030'),
(175000.80, '2022-2025'),
(250000.00, '2025-2029'),
(550000.00, '2023-2028'),
(320000.00, '2024-2026'),
(280000.40, '2022-2023'),
(130000.00, '2025-2027'),
(160000.50, '2023-2026'),
(375000.00, '2022-2025'),
(425000.75, '2023-2028'),
(60000.00, '2024-2026'),
(710000.90, '2022-2024'),
(825000.00, '2025-2029'),
(140000.00, '2023-2027'),
(275500.00, '2024-2028'),
(310000.00, '2022-2023'),
(490000.60, '2023-2026'),
(520000.00, '2025-2027'),
(680000.00, '2024-2029'),
(900000.00, '2022-2026'),
(1025000.50, '2023-2030'),
(300000.00, '2024-2026'),
(155000.00, '2022-2025'),
(210000.75, '2023-2027'),
(435000.80, '2025-2028'),
(80000.00, '2024-2025'),
(275000.00, '2022-2024'),
(365000.60, '2023-2026'),
(470000.00, '2025-2027'),
(520000.50, '2024-2029'),
(180000.00, '2022-2023'),
(290000.00, '2023-2028'),
(710000.00, '2024-2026'),
(990000.00, '2025-2030'),
(875000.00, '2023-2029');


-- 9. Las 50 inserciones de la tabla Proyecto Especie
INSERT INTO Proyecto_Especie (id_proyecto, id_especie) VALUES 
(1, 5), (1, 12), (2, 7), (2, 18), (3, 25),
(3, 30), (4, 3), (4, 9), (5, 14), (5, 20),
(6, 1), (6, 6), (7, 22), (7, 27), (8, 8),
(8, 19), (9, 4), (9, 15), (10, 23), (10, 28),
(11, 2), (11, 13), (12, 10), (12, 26), (13, 17),
(13, 31), (14, 21), (14, 32), (15, 11), (15, 29),
(16, 33), (16, 37), (17, 40), (17, 41), (18, 34),
(18, 39), (19, 16), (19, 35), (20, 24), (20, 38),
(21, 36), (21, 42), (22, 44), (22, 45), (23, 43),
(23, 46), (24, 47), (24, 48), (25, 49), (25, 50);

-- 10. Las 50 inserciones de la tabla Personal
INSERT INTO Personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
VALUES ('Carlos', 'González', 'Martínez', '1000001', 'Calle 123, Ciudad A', '001', 'Personal de Gestión', 2500.00);

INSERT INTO Personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
VALUES ('María', 'Fernández', 'López', '1000002', 'Avenida 456, Ciudad B', '001', 'Personal de Gestión', 2600.00);

INSERT INTO Personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
VALUES ('Luis', 'Ramírez', 'Sánchez', '1000003', 'Carrera 789, Ciudad C', '001', 'Personal de Gestión', 2550.00);

INSERT INTO Personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
VALUES ('Ana', 'Torres', 'Díaz', '1000004', 'Calle 321, Ciudad D', '001', 'Personal de Gestión', 2400.00);

INSERT INTO Personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
VALUES ('Javier', 'Ruiz', 'Gómez', '1000005', 'Avenida 654, Ciudad E', '001', 'Personal de Gestión', 2450.00);

INSERT INTO Personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
VALUES ('Sofía', 'Hernández', 'Castro', '1000006', 'Carrera 987, Ciudad F', '002', 'Personal de Vigilancia', 2800.00);

INSERT INTO Personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
VALUES ('Andrés', 'Ortiz', 'Molina', '1000007', 'Calle 741, Ciudad G', '002', 'Personal de Vigilancia', 2900.00);

INSERT INTO Personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
VALUES ('Elena', 'Jiménez', 'Silva', '1000008', 'Avenida 852, Ciudad H', '002', 'Personal de Vigilancia', 2750.00);

INSERT INTO Personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
VALUES ('Fernando', 'Ríos', 'Vega', '1000009', 'Carrera 963, Ciudad I', '002', 'Personal de Vigilancia', 2850.00);

INSERT INTO Personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
VALUES ('Valeria', 'Castillo', 'Peña', '1000010', 'Calle 147, Ciudad J', '002', 'Personal de Vigilancia', 2950.00);

INSERT INTO Personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
VALUES ('Daniel', 'Morales', 'Salazar', '1000011', 'Avenida 258, Ciudad K', '003', 'Personal de Conservación', 2700.00);

INSERT INTO Personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
VALUES ('Patricia', 'Pérez', 'Mejía', '1000012', 'Carrera 369, Ciudad L', '003', 'Personal de Conservación', 2650.00);

INSERT INTO Personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
VALUES ('Miguel', 'Cabrera', 'Rosales', '1000013', 'Calle 159, Ciudad M', '003', 'Personal de Conservación', 2750.00);

INSERT INTO Personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
VALUES ('Claudia', 'Figueroa', 'Navarro', '1000014', 'Avenida 753, Ciudad N', '003', 'Personal de Conservación', 2600.00);

INSERT INTO Personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
VALUES ('Ricardo', 'Guerrero', 'Soto', '1000015', 'Carrera 852, Ciudad O', '003', 'Personal de Conservación', 2550.00);

INSERT INTO Personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
VALUES ('Gabriela', 'Lara', 'Montoya', '1000016', 'Calle 357, Ciudad P', '004', 'Personal Investigador', 3100.00);

INSERT INTO Personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
VALUES ('José', 'Mendoza', 'Aguilar', '1000017', 'Avenida 468, Ciudad Q', '004', 'Personal Investigador', 3200.00);

INSERT INTO Personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
VALUES ('Camila', 'Rojas', 'Pacheco', '1000018', 'Carrera 579, Ciudad R', '004', 'Personal Investigador', 3150.00);

INSERT INTO Personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
VALUES ('Francisco', 'Serrano', 'Álvarez', '1000019', 'Calle 951, Ciudad S', '004', 'Personal Investigador', 3050.00);

INSERT INTO Personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
VALUES ('Natalia', 'Acosta', 'Fuentes', '1000020', 'Avenida 753, Ciudad T', '004', 'Personal Investigador', 3250.00);

INSERT INTO Personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
VALUES ('Héctor', 'Núñez', 'Bravo', '1000021', 'Calle 369, Ciudad U', '001', 'Personal de Gestión', 2550.00);

INSERT INTO Personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
VALUES ('Lucía', 'Medina', 'Escobar', '1000022', 'Avenida 753, Ciudad V', '001', 'Personal de Gestión', 2500.00);

INSERT INTO Personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
VALUES ('Felipe', 'Santos', 'Rivas', '1000023', 'Carrera 852, Ciudad W', '001', 'Personal de Gestión', 2450.00);

INSERT INTO Personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
VALUES ('Diana', 'Pineda', 'Herrera', '1000024', 'Calle 357, Ciudad X', '001', 'Personal de Gestión', 2600.00);

INSERT INTO Personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
VALUES ('Martín', 'Cordero', 'Palacios', '1000025', 'Avenida 468, Ciudad Y', '001', 'Personal de Gestión', 2700.00);

INSERT INTO Personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
VALUES ('Raúl', 'Benítez', 'Campos', '1000026', 'Carrera 579, Ciudad Z', '002', 'Personal de Vigilancia', 2900.00);

INSERT INTO Personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
VALUES ('Carmen', 'Velasco', 'Carrillo', '1000027', 'Calle 951, Ciudad AA', '002', 'Personal de Vigilancia', 2850.00);

INSERT INTO Personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
VALUES ('Tomás', 'Delgado', 'Méndez', '1000028', 'Avenida 753, Ciudad BB', '002', 'Personal de Vigilancia', 2750.00);

INSERT INTO Personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
VALUES ('Lorena', 'Esquivel', 'López', '1000029', 'Carrera 159, Ciudad CC', '002', 'Personal de Vigilancia', 2800.00);

INSERT INTO Personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
VALUES ('Emanuel', 'Barrios', 'Villarreal', '1000030', 'Calle 357, Ciudad DD', '002', 'Personal de Vigilancia', 2950.00);

INSERT INTO Personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
VALUES ('Silvia', 'Peña', 'Bustamante', '1000031', 'Avenida 468, Ciudad EE', '003', 'Personal de Conservación', 2650.00);

INSERT INTO Personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
VALUES ('Esteban', 'Montes', 'Alonso', '1000032', 'Carrera 579, Ciudad FF', '003', 'Personal de Conservación', 2700.00);

INSERT INTO Personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
VALUES ('Rocío', 'Arévalo', 'Ferrer', '1000033', 'Calle 951, Ciudad GG', '003', 'Personal de Conservación', 2750.00);

INSERT INTO Personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
VALUES ('Joaquín', 'López', 'Carmona', '1000034', 'Avenida 753, Ciudad HH', '003', 'Personal de Conservación', 2600.00);

INSERT INTO Personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
VALUES ('Isabel', 'Quintana', 'Bermúdez', '1000035', 'Carrera 159, Ciudad II', '003', 'Personal de Conservación', 2550.00);

INSERT INTO Personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
VALUES ('Gonzalo', 'Salas', 'Hidalgo', '1000036', 'Calle 357, Ciudad JJ', '004', 'Personal Investigador', 3100.00);

INSERT INTO Personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
VALUES ('Teresa', 'Orozco', 'Carranza', '1000037', 'Avenida 468, Ciudad KK', '004', 'Personal Investigador', 3200.00);

INSERT INTO Personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
VALUES ('Pablo', 'Hurtado', 'Arenas', '1000038', 'Carrera 579, Ciudad LL', '004', 'Personal Investigador', 3150.00);

INSERT INTO Personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
VALUES ('Lorena', 'Pacheco', 'Bustos', '1000039', 'Calle 951, Ciudad MM', '004', 'Personal Investigador', 3050.00);

INSERT INTO Personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
VALUES ('Germán', 'Meza', 'Galindo', '1000040', 'Avenida 753, Ciudad NN', '004', 'Personal Investigador', 3250.00);

INSERT INTO Personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
VALUES ('Ángela', 'Rosales', 'Beltrán', '1000041', 'Carrera 159, Ciudad OO', '001', 'Personal de Gestión', 2500.00);

INSERT INTO Personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
VALUES ('Iván', 'Tovar', 'Ortega', '1000042', 'Calle 357, Ciudad PP', '002', 'Personal de Vigilancia', 2900.00);

INSERT INTO Personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
VALUES ('Claudio', 'Espinoza', 'Ruvalcaba', '1000043', 'Avenida 468, Ciudad QQ', '003', 'Personal de Conservación', 2650.00);

INSERT INTO Personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
VALUES ('Natalia', 'Cáceres', 'Valdez', '1000044', 'Carrera 579, Ciudad RR', '004', 'Personal Investigador', 3150.00);

INSERT INTO Personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
VALUES ('Roberto', 'Segura', 'Muñoz', '1000045', 'Calle 951, Ciudad SS', '002', 'Personal de Vigilancia', 2850.00);

INSERT INTO Personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
VALUES ('Verónica', 'Gaitán', 'Lemus', '1000046', 'Avenida 753, Ciudad TT', '001', 'Personal de Gestión', 2700.00);

INSERT INTO Personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
VALUES ('Adrián', 'Villalobos', 'Bautista', '1000047', 'Carrera 159, Ciudad UU', '003', 'Personal de Conservación', 2750.00);

INSERT INTO Personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
VALUES ('Beatriz', 'Morales', 'Sáenz', '1000048', 'Calle 789, Ciudad VV', '004', 'Personal Investigador', 3300.00);

INSERT INTO Personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
VALUES ('Ricardo', 'Navarro', 'Fuentes', '1000049', 'Avenida 963, Ciudad WW', '003', 'Personal de Conservación', 2800.00);

INSERT INTO Personal (nombre, apellido1, apellido2, cedula, direccion, code_rol, rol, sueldo) 
VALUES ('Elena', 'Padilla', 'Mendoza', '1000050', 'Carrera 147, Ciudad XX', '002', 'Personal de Vigilancia', 2950.00);

-- 11. Las 50 inserciones de la tabla Investigador

INSERT INTO Investigador (id_personal) VALUES (1);
INSERT INTO Investigador (id_personal) VALUES (2);
INSERT INTO Investigador (id_personal) VALUES (3);
INSERT INTO Investigador (id_personal) VALUES (4);
INSERT INTO Investigador (id_personal) VALUES (5);
INSERT INTO Investigador (id_personal) VALUES (6);
INSERT INTO Investigador (id_personal) VALUES (7);
INSERT INTO Investigador (id_personal) VALUES (8);
INSERT INTO Investigador (id_personal) VALUES (9);
INSERT INTO Investigador (id_personal) VALUES (10);
INSERT INTO Investigador (id_personal) VALUES (11);
INSERT INTO Investigador (id_personal) VALUES (12);
INSERT INTO Investigador (id_personal) VALUES (13);
INSERT INTO Investigador (id_personal) VALUES (14);
INSERT INTO Investigador (id_personal) VALUES (15);
INSERT INTO Investigador (id_personal) VALUES (16);
INSERT INTO Investigador (id_personal) VALUES (17);
INSERT INTO Investigador (id_personal) VALUES (18);
INSERT INTO Investigador (id_personal) VALUES (19);
INSERT INTO Investigador (id_personal) VALUES (20);
INSERT INTO Investigador (id_personal) VALUES (21);
INSERT INTO Investigador (id_personal) VALUES (22);
INSERT INTO Investigador (id_personal) VALUES (23);
INSERT INTO Investigador (id_personal) VALUES (24);
INSERT INTO Investigador (id_personal) VALUES (25);
INSERT INTO Investigador (id_personal) VALUES (26);
INSERT INTO Investigador (id_personal) VALUES (27);
INSERT INTO Investigador (id_personal) VALUES (28);
INSERT INTO Investigador (id_personal) VALUES (29);
INSERT INTO Investigador (id_personal) VALUES (30);
INSERT INTO Investigador (id_personal) VALUES (31);
INSERT INTO Investigador (id_personal) VALUES (32);
INSERT INTO Investigador (id_personal) VALUES (33);
INSERT INTO Investigador (id_personal) VALUES (34);
INSERT INTO Investigador (id_personal) VALUES (35);
INSERT INTO Investigador (id_personal) VALUES (36);
INSERT INTO Investigador (id_personal) VALUES (37);
INSERT INTO Investigador (id_personal) VALUES (38);
INSERT INTO Investigador (id_personal) VALUES (39);
INSERT INTO Investigador (id_personal) VALUES (40);
INSERT INTO Investigador (id_personal) VALUES (41);
INSERT INTO Investigador (id_personal) VALUES (42);
INSERT INTO Investigador (id_personal) VALUES (43);
INSERT INTO Investigador (id_personal) VALUES (44);
INSERT INTO Investigador (id_personal) VALUES (45);
INSERT INTO Investigador (id_personal) VALUES (46);
INSERT INTO Investigador (id_personal) VALUES (47);
INSERT INTO Investigador (id_personal) VALUES (48);
INSERT INTO Investigador (id_personal) VALUES (49);
INSERT INTO Investigador (id_personal) VALUES (50);

-- 12. Las 50 inserciones de la tabla Proyecto Investigador
INSERT INTO Proyecto_Investigador (id_investigador, id_proyecto) VALUES (1, 1);
INSERT INTO Proyecto_Investigador (id_investigador, id_proyecto) VALUES (2, 2);
INSERT INTO Proyecto_Investigador (id_investigador, id_proyecto) VALUES (3, 3);
INSERT INTO Proyecto_Investigador (id_investigador, id_proyecto) VALUES (4, 4);
INSERT INTO Proyecto_Investigador (id_investigador, id_proyecto) VALUES (5, 5);
INSERT INTO Proyecto_Investigador (id_investigador, id_proyecto) VALUES (6, 6);
INSERT INTO Proyecto_Investigador (id_investigador, id_proyecto) VALUES (7, 7);
INSERT INTO Proyecto_Investigador (id_investigador, id_proyecto) VALUES (8, 8);
INSERT INTO Proyecto_Investigador (id_investigador, id_proyecto) VALUES (9, 9);
INSERT INTO Proyecto_Investigador (id_investigador, id_proyecto) VALUES (10, 10);
INSERT INTO Proyecto_Investigador (id_investigador, id_proyecto) VALUES (11, 11);
INSERT INTO Proyecto_Investigador (id_investigador, id_proyecto) VALUES (12, 12);
INSERT INTO Proyecto_Investigador (id_investigador, id_proyecto) VALUES (13, 13);
INSERT INTO Proyecto_Investigador (id_investigador, id_proyecto) VALUES (14, 14);
INSERT INTO Proyecto_Investigador (id_investigador, id_proyecto) VALUES (15, 15);
INSERT INTO Proyecto_Investigador (id_investigador, id_proyecto) VALUES (16, 16);
INSERT INTO Proyecto_Investigador (id_investigador, id_proyecto) VALUES (17, 17);
INSERT INTO Proyecto_Investigador (id_investigador, id_proyecto) VALUES (18, 18);
INSERT INTO Proyecto_Investigador (id_investigador, id_proyecto) VALUES (19, 19);
INSERT INTO Proyecto_Investigador (id_investigador, id_proyecto) VALUES (20, 20);
INSERT INTO Proyecto_Investigador (id_investigador, id_proyecto) VALUES (21, 21);
INSERT INTO Proyecto_Investigador (id_investigador, id_proyecto) VALUES (22, 22);
INSERT INTO Proyecto_Investigador (id_investigador, id_proyecto) VALUES (23, 23);
INSERT INTO Proyecto_Investigador (id_investigador, id_proyecto) VALUES (24, 24);
INSERT INTO Proyecto_Investigador (id_investigador, id_proyecto) VALUES (25, 25);
INSERT INTO Proyecto_Investigador (id_investigador, id_proyecto) VALUES (26, 26);
INSERT INTO Proyecto_Investigador (id_investigador, id_proyecto) VALUES (27, 27);
INSERT INTO Proyecto_Investigador (id_investigador, id_proyecto) VALUES (28, 28);
INSERT INTO Proyecto_Investigador (id_investigador, id_proyecto) VALUES (29, 29);
INSERT INTO Proyecto_Investigador (id_investigador, id_proyecto) VALUES (30, 30);
INSERT INTO Proyecto_Investigador (id_investigador, id_proyecto) VALUES (31, 31);
INSERT INTO Proyecto_Investigador (id_investigador, id_proyecto) VALUES (32, 32);
INSERT INTO Proyecto_Investigador (id_investigador, id_proyecto) VALUES (33, 33);
INSERT INTO Proyecto_Investigador (id_investigador, id_proyecto) VALUES (34, 34);
INSERT INTO Proyecto_Investigador (id_investigador, id_proyecto) VALUES (35, 35);
INSERT INTO Proyecto_Investigador (id_investigador, id_proyecto) VALUES (36, 36);
INSERT INTO Proyecto_Investigador (id_investigador, id_proyecto) VALUES (37, 37);
INSERT INTO Proyecto_Investigador (id_investigador, id_proyecto) VALUES (38, 38);
INSERT INTO Proyecto_Investigador (id_investigador, id_proyecto) VALUES (39, 39);
INSERT INTO Proyecto_Investigador (id_investigador, id_proyecto) VALUES (40, 40);
INSERT INTO Proyecto_Investigador (id_investigador, id_proyecto) VALUES (41, 41);
INSERT INTO Proyecto_Investigador (id_investigador, id_proyecto) VALUES (42, 42);
INSERT INTO Proyecto_Investigador (id_investigador, id_proyecto) VALUES (43, 43);
INSERT INTO Proyecto_Investigador (id_investigador, id_proyecto) VALUES (44, 44);
INSERT INTO Proyecto_Investigador (id_investigador, id_proyecto) VALUES (45, 45);
INSERT INTO Proyecto_Investigador (id_investigador, id_proyecto) VALUES (46, 46);
INSERT INTO Proyecto_Investigador (id_investigador, id_proyecto) VALUES (47, 47);
INSERT INTO Proyecto_Investigador (id_investigador, id_proyecto) VALUES (48, 48);
INSERT INTO Proyecto_Investigador (id_investigador, id_proyecto) VALUES (49, 49);
INSERT INTO Proyecto_Investigador (id_investigador, id_proyecto) VALUES (50, 50);

-- 13. Las 50 inserciones de la tabla Gestion
INSERT INTO Gestion (id_personal) VALUES (1);
INSERT INTO Gestion (id_personal) VALUES (2);
INSERT INTO Gestion (id_personal) VALUES (3);
INSERT INTO Gestion (id_personal) VALUES (4);
INSERT INTO Gestion (id_personal) VALUES (5);
INSERT INTO Gestion (id_personal) VALUES (6);
INSERT INTO Gestion (id_personal) VALUES (7);
INSERT INTO Gestion (id_personal) VALUES (8);
INSERT INTO Gestion (id_personal) VALUES (9);
INSERT INTO Gestion (id_personal) VALUES (10);
INSERT INTO Gestion (id_personal) VALUES (11);
INSERT INTO Gestion (id_personal) VALUES (12);
INSERT INTO Gestion (id_personal) VALUES (13);
INSERT INTO Gestion (id_personal) VALUES (14);
INSERT INTO Gestion (id_personal) VALUES (15);
INSERT INTO Gestion (id_personal) VALUES (16);
INSERT INTO Gestion (id_personal) VALUES (17);
INSERT INTO Gestion (id_personal) VALUES (18);
INSERT INTO Gestion (id_personal) VALUES (19);
INSERT INTO Gestion (id_personal) VALUES (20);
INSERT INTO Gestion (id_personal) VALUES (21);
INSERT INTO Gestion (id_personal) VALUES (22);
INSERT INTO Gestion (id_personal) VALUES (23);
INSERT INTO Gestion (id_personal) VALUES (24);
INSERT INTO Gestion (id_personal) VALUES (25);
INSERT INTO Gestion (id_personal) VALUES (26);
INSERT INTO Gestion (id_personal) VALUES (27);
INSERT INTO Gestion (id_personal) VALUES (28);
INSERT INTO Gestion (id_personal) VALUES (29);
INSERT INTO Gestion (id_personal) VALUES (30);
INSERT INTO Gestion (id_personal) VALUES (31);
INSERT INTO Gestion (id_personal) VALUES (32);
INSERT INTO Gestion (id_personal) VALUES (33);
INSERT INTO Gestion (id_personal) VALUES (34);
INSERT INTO Gestion (id_personal) VALUES (35);
INSERT INTO Gestion (id_personal) VALUES (36);
INSERT INTO Gestion (id_personal) VALUES (37);
INSERT INTO Gestion (id_personal) VALUES (38);
INSERT INTO Gestion (id_personal) VALUES (39);
INSERT INTO Gestion (id_personal) VALUES (40);
INSERT INTO Gestion (id_personal) VALUES (41);
INSERT INTO Gestion (id_personal) VALUES (42);
INSERT INTO Gestion (id_personal) VALUES (43);
INSERT INTO Gestion (id_personal) VALUES (44);
INSERT INTO Gestion (id_personal) VALUES (45);
INSERT INTO Gestion (id_personal) VALUES (46);
INSERT INTO Gestion (id_personal) VALUES (47);
INSERT INTO Gestion (id_personal) VALUES (48);
INSERT INTO Gestion (id_personal) VALUES (49);
INSERT INTO Gestion (id_personal) VALUES (50);

-- 14. Las 50 inserciones de la tabla Visitante
INSERT INTO Visitante (nombre, direccion, profesion, id_gestion) VALUES 
('Carlos Rodríguez', 'Calle 10 #45-67, Bogotá', 'Biólogo', 1),
('María Fernández', 'Avenida Siempre Viva #123, Medellín', 'Ingeniera Ambiental', 2),
('Juan Pérez', 'Carrera 5 #78-90, Cali', 'Ecólogo', 3),
('Ana Gómez', 'Diagonal 25 #14-56, Barranquilla', 'Turismóloga', 4),
('Luis Herrera', 'Calle 8 #32-21, Cartagena', 'Fotógrafo', 5),
('Elena Morales', 'Avenida del Río #56, Bucaramanga', 'Espeleóloga', 6),
('Daniel Ramírez', 'Calle 20 #50-15, Manizales', 'Guía Turístico', 7),
('Sofía López', 'Carrera 12 #34-89, Pereira', 'Periodista', 8),
('Ricardo Torres', 'Calle 6 #78-34, Cúcuta', 'Veterinario', 9),
('Gabriela Castro', 'Avenida Central #56-12, Ibagué', 'Bióloga', 10),
('Fernando Mendoza', 'Calle 3 #22-11, Neiva', 'Ecoturista', 11),
('Laura Nieto', 'Carrera 9 #44-33, Armenia', 'Botánica', 12),
('Diego Suárez', 'Diagonal 10 #65-90, Popayán', 'Zoólogo', 13),
('Camila Vargas', 'Calle 7 #18-76, Pasto', 'Agrónoma', 14),
('José Ríos', 'Avenida del Bosque #99, Villavicencio', 'Geólogo', 15),
('Valentina Restrepo', 'Carrera 15 #50-40, Tunja', 'Antropóloga', 16),
('Andrés Castaño', 'Calle 12 #33-21, Montería', 'Ingeniero Forestal', 17),
('Paola Jiménez', 'Avenida 1 de Mayo #101, Florencia', 'Ecologista', 18),
('Javier Cardona', 'Calle 25 #88-76, Quibdó', 'Topógrafo', 19),
('Mónica Sepúlveda', 'Carrera 22 #99-50, Leticia', 'Investigadora', 20),
('Esteban Herrera', 'Avenida Los Andes #55-90, San Andrés', 'Instructor de Buceo', 21),
('Nathalia Guzmán', 'Calle 3 #15-80, Riohacha', 'Oceanógrafa', 22),
('Hugo Martínez', 'Carrera 8 #40-12, Valledupar', 'Abogado Ambiental', 23),
('Diana Paredes', 'Diagonal 20 #65-22, Yopal', 'Microbióloga', 24),
('Alejandro Serrano', 'Calle 45 #78-99, Mitú', 'Ingeniero Hidráulico', 25),
('Patricia León', 'Avenida del Sol #34-67, Inírida', 'Arqueóloga', 26),
('Francisco Muñoz', 'Carrera 6 #44-22, San José del Guaviare', 'Ingeniero Agrónomo', 27),
('Silvia Velásquez', 'Calle 8 #12-34, Puerto Carreño', 'Paleontóloga', 28),
('Roberto Espinoza', 'Avenida Panamericana #101, Santa Marta', 'Guardaparques', 29),
('Marcela Ávila', 'Carrera 11 #67-89, Buenaventura', 'Ambientalista', 30),
('Wilson Ortega', 'Diagonal 5 #78-34, Ipiales', 'Climatólogo', 31),
('Tatiana Ruiz', 'Calle 9 #88-56, Guaviare', 'Ecologista', 32),
('Ernesto Peña', 'Avenida del Lago #99, Barranca', 'Biólogo Marino', 33),
('Daniela Garzón', 'Carrera 7 #21-80, Girardot', 'Zootecnista', 34),
('Ángel Castro', 'Calle 4 #50-20, Sincelejo', 'Fotógrafo de Naturaleza', 35),
('Manuela Medina', 'Avenida del Bosque #45-76, Fusagasugá', 'Geógrafa', 36),
('Pablo Perdomo', 'Carrera 16 #78-45, Duitama', 'Turismólogo', 37),
('Verónica Camacho', 'Calle 2 #33-67, Chiquinquirá', 'Ingeniera Civil', 38),
('Oscar Pineda', 'Avenida Norte #88-32, Turbo', 'Químico Ambiental', 39),
('Clara Villalba', 'Carrera 10 #55-76, Tuluá', 'Botánica', 40),
('Mateo Salcedo', 'Calle 15 #78-99, Magangué', 'Sociólogo', 41),
('Luciana Ocampo', 'Avenida Los Pinos #45-78, Caucasia', 'Ecologista', 42),
('Rafael Espinosa', 'Carrera 22 #12-34, Acacías', 'Antropólogo', 43),
('Natalia Cardozo', 'Calle 3 #40-99, Ocaña', 'Microbióloga', 44),
('Emilio Márquez', 'Avenida Las Palmas #50-78, El Banco', 'Abogado Ambiental', 45),
('Isabel Montoya', 'Carrera 5 #12-67, San Gil', 'Bióloga', 46),
('Joaquín Barrera', 'Calle 7 #99-12, Ciénaga', 'Ingeniero Forestal', 47),
('Estefanía Vargas', 'Avenida del Mar #66-78, Lorica', 'Paleontóloga', 48),
('Julio Gaitán', 'Carrera 13 #45-99, Apartadó', 'Topógrafo', 49),
('Carolina Rincón', 'Calle 6 #88-56, Melgar', 'Ingeniera Ambiental', 50);

-- 15. Las 50 inserciones de la tabla Alojamiento
INSERT INTO Alojamiento (nombre, categoria, id_parque, id_visitante) VALUES 
('EcoLodge Amazonas', 'Cabaña', 1, 1),
('Refugio Andino', 'Hotel', 2, 2),
('Posada del Río', 'Hostal', 3, 3),
('Cabañas Monteverde', 'Cabaña', 4, 4),
('EcoCamp Los Nevados', 'Glamping', 5, 5),
('Reserva Natural Yaku', 'Cabaña', 6, 6),
('Hotel Selva Viva', 'Hotel', 7, 7),
('Cabañas El Edén', 'Cabaña', 8, 8),
('Lodge El Bosque', 'Glamping', 9, 9),
('Hostal Senderos', 'Hostal', 10, 10),
('Parque EcoVillas', 'Cabaña', 11, 11),
('Glamping Aventura Verde', 'Glamping', 12, 12),
('Casa de Campo Mirador', 'Hostal', 13, 13),
('Hotel Ecológico Naturaleza', 'Hotel', 14, 14),
('Refugio de Montaña', 'Cabaña', 15, 15),
('Cabañas del Sol', 'Cabaña', 16, 16),
('Lodge Los Farallones', 'Glamping', 17, 17),
('Posada La Cascada', 'Hostal', 18, 18),
('Hotel Montaña Azul', 'Hotel', 19, 19),
('Refugio Selva Mística', 'Cabaña', 20, 20),
('Campamento Los Pinos', 'Glamping', 21, 21),
('EcoHogar La Montaña', 'Hostal', 22, 22),
('Cabañas del Río', 'Cabaña', 23, 23),
('Hotel Verde Natural', 'Hotel', 24, 24),
('Glamping Las Estrellas', 'Glamping', 25, 25),
('Posada del Sendero', 'Hostal', 26, 26),
('EcoParque Las Lomas', 'Cabaña', 27, 27),
('Cabañas del Lago', 'Cabaña', 28, 28),
('Hotel Aventura', 'Hotel', 29, 29),
('Lodge El Refugio', 'Glamping', 30, 30),
('Campamento Yarumal', 'Cabaña', 31, 31),
('Posada Los Vientos', 'Hostal', 32, 32),
('EcoLodge del Amazonas', 'Glamping', 33, 33),
('Cabañas del Bosque', 'Cabaña', 34, 34),
('Hotel Natural', 'Hotel', 35, 35),
('Refugio Río Verde', 'Cabaña', 36, 36),
('Hostal Camino Verde', 'Hostal', 37, 37),
('Glamping Cascadas del Sol', 'Glamping', 38, 38),
('Cabañas El Paraíso', 'Cabaña', 39, 39),
('EcoHotel Los Andes', 'Hotel', 40, 40),
('Reserva Ecológica Amanecer', 'Cabaña', 41, 41),
('Lodge Niebla Azul', 'Glamping', 42, 42),
('Hostal Montaña Verde', 'Hostal', 43, 43),
('Cabañas Orquídea', 'Cabaña', 44, 44),
('Hotel Selva Dorada', 'Hotel', 45, 45),
('Refugio de los Andes', 'Cabaña', 46, 46),
('Glamping Tierra Viva', 'Glamping', 47, 47),
('Cabañas La Esperanza', 'Cabaña', 48, 48),
('Hotel Naturaleza Viva', 'Hotel', 49, 49),
('Posada del Valle', 'Hostal', 50, 50);

-- 16. Las 50 inserciones de la tabla Vigilancia
INSERT INTO Vigilancia (id_personal) VALUES 
(1), (2), (3), (4), (5), (6), (7), (8), (9), (10),
(11), (12), (13), (14), (15), (16), (17), (18), (19), (20),
(21), (22), (23), (24), (25), (26), (27), (28), (29), (30),
(31), (32), (33), (34), (35), (36), (37), (38), (39), (40),
(41), (42), (43), (44), (45), (46), (47), (48), (49), (50);

-- 17. Las 50 inserciones de la tabla Vehiculo
INSERT INTO Vehiculo (id_vigilancia, nombre, placa, tipo, modelo, vigencia) VALUES 
(1, 'Ferrari SF90 Stradale', 'ITA001', 'Superdeportivo', '2023', 6),
(2, 'Lamborghini Aventador SVJ', 'ITA002', 'Superdeportivo', '2022', 5),
(3, 'Nissan GT-R Nismo', 'JPN001', 'Superdeportivo', '2023', 6),
(4, 'Lexus LFA', 'JPN002', 'Superdeportivo', '2021', 4),
(5, 'Chevrolet Corvette Z06', 'USA001', 'Superdeportivo', '2023', 6),
(6, 'Ford GT', 'USA002', 'Superdeportivo', '2022', 5),
(7, 'Toyota Hilux', 'ABC123', 'Camioneta', '2022', 5),
(8, 'Ford Ranger', 'DEF456', 'Camioneta', '2021', 4),
(9, 'Jeep Wrangler', 'GHI789', 'Todoterreno', '2023', 6),
(10, 'Nissan Frontier', 'JKL012', 'Camioneta', '2020', 3),
(11, 'Yamaha Grizzly', 'MNO345', 'Cuatrimoto', '2022', 5),
(12, 'Honda CRF450L', 'PQR678', 'Motocicleta', '2021', 4),
(13, 'Polaris Ranger', 'STU901', 'UTV', '2023', 6),
(14, 'Land Rover Defender', 'VWX234', 'Todoterreno', '2020', 3),
(15, 'Suzuki KingQuad', 'YZA567', 'Cuatrimoto', '2021', 4),
(16, 'Kawasaki Mule', 'BCD890', 'UTV', '2022', 5),
(17, 'Chevrolet Silverado', 'EFG123', 'Camioneta', '2021', 4),
(18, 'GMC Sierra', 'HIJ456', 'Camioneta', '2020', 3),
(19, 'RAM 1500', 'KLM789', 'Camioneta', '2023', 6),
(20, 'Toyota Tacoma', 'NOP012', 'Camioneta', '2022', 5),
(21, 'Honda Pioneer', 'QRS345', 'UTV', '2021', 4),
(22, 'Can-Am Outlander', 'TUV678', 'Cuatrimoto', '2020', 3),
(23, 'Ford Bronco', 'WXY901', 'Todoterreno', '2023', 6),
(24, 'Dodge Durango', 'ZAB234', 'SUV', '2021', 4),
(25, 'Jeep Cherokee', 'CDE567', 'SUV', '2022', 5),
(26, 'Subaru Outback', 'FGH890', 'SUV', '2020', 3),
(27, 'Tesla Cybertruck', 'IJK123', 'Camioneta', '2024', 7),
(28, 'Yamaha Kodiak', 'LMN456', 'Cuatrimoto', '2021', 4),
(29, 'Kawasaki Teryx', 'OPQ789', 'UTV', '2022', 5),
(30, 'Mercedes-Benz G-Class', 'RST012', 'Todoterreno', '2023', 6),
(31, 'BMW X5', 'UVW345', 'SUV', '2021', 4),
(32, 'Audi Q7', 'XYZ678', 'SUV', '2020', 3),
(33, 'Lexus GX', 'ABC901', 'SUV', '2023', 6),
(34, 'Porsche Cayenne', 'DEF234', 'SUV', '2022', 5),
(35, 'Ferrari Purosangue', 'GHI567', 'SUV', '2024', 7),
(36, 'Bentley Bentayga', 'JKL890', 'SUV', '2021', 4),
(37, 'Rolls-Royce Cullinan', 'MNO123', 'SUV', '2022', 5),
(38, 'Range Rover Sport', 'PQR456', 'Todoterreno', '2020', 3),
(39, 'Volkswagen Amarok', 'STU789', 'Camioneta', '2023', 6),
(40, 'Hyundai Santa Cruz', 'VWX012', 'Camioneta', '2021', 4),
(41, 'Rivian R1T', 'YZA345', 'Camioneta', '2024', 7),
(42, 'Lucid Gravity', 'BCD678', 'SUV', '2023', 6),
(43, 'Ford F-150 Lightning', 'EFG901', 'Camioneta', '2024', 7),
(44, 'Chevrolet Colorado', 'HIJ234', 'Camioneta', '2022', 5),
(45, 'GMC Hummer EV', 'KLM567', 'Todoterreno', '2023', 6),
(46, 'Tesla Model X', 'NOP890', 'SUV', '2021', 4),
(47, 'RAM TRX', 'QRS123', 'Camioneta', '2022', 5),
(48, 'Honda Ridgeline', 'TUV456', 'Camioneta', '2020', 3),
(49, 'Nissan Titan', 'WXY789', 'Camioneta', '2023', 6),
(50, 'Chevrolet Blazer', 'RST890', 'SUV', '2020', 3);

-- 18. Las 50 inserciones de la tabla Conservacion
INSERT INTO Conservacion (id_personal, especialidad) VALUES
(1, 'Botánica'),
(2, 'Zoología'),
(3, 'Gestión de recursos naturales'),
(4, 'Manejo de ecosistemas'),
(5, 'Ornitología'),
(6, 'Herpetología'),
(7, 'Entomología'),
(8, 'Conservación de mamíferos'),
(9, 'Ecología de humedales'),
(10, 'Restauración ecológica'),
(11, 'Conservación de anfibios'),
(12, 'Silvicultura'),
(13, 'Gestión de especies invasoras'),
(14, 'Educación ambiental'),
(15, 'Control biológico de plagas'),
(16, 'Etnobotánica'),
(17, 'Biología marina'),
(18, 'Recuperación de especies en peligro'),
(19, 'Agricultura sostenible'),
(20, 'Conservación de suelos'),
(21, 'Manejo de vida silvestre'),
(22, 'Investigación forestal'),
(23, 'Protección de arrecifes coralinos'),
(24, 'Gestión de reservas naturales'),
(25, 'Manejo de parques nacionales'),
(26, 'Protección de flora endémica'),
(27, 'Rehabilitación de fauna'),
(28, 'Monitorización de biodiversidad'),
(29, 'Técnicas de reforestación'),
(30, 'Evaluación de impacto ambiental'),
(31, 'Protección de bosques tropicales'),
(32, 'Recuperación de ecosistemas degradados'),
(33, 'Biotecnología aplicada a la conservación'),
(34, 'Conservación de insectos polinizadores'),
(35, 'Control y manejo de incendios forestales'),
(36, 'Manejo sostenible de praderas'),
(37, 'Conservación de pastizales'),
(38, 'Preservación de especies migratorias'),
(39, 'Salvaguarda de recursos hídricos'),
(40, 'Zoología aplicada a la conservación'),
(41, 'Sistemas agroforestales'),
(42, 'Ecohidrología'),
(43, 'Conservación genética'),
(44, 'Rescate de fauna silvestre'),
(45, 'Sostenibilidad en ecosistemas urbanos'),
(46, 'Gestión de cuencas hidrográficas'),
(47, 'Ecología del paisaje'),
(48, 'Investigación en cambio climático'),
(49, 'Manejo y conservación de pastizales áridos'),
(50, 'Protección de zonas costeras');
