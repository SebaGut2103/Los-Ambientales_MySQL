create database Los_Ambientales;
drop database  Los_Ambientales;
use Los_Ambientales;


-- Creación de la tabla de Entidad Responsable (Se relaciona entre Departamento y Entidad Parque)
create table Entidad_Responsable(
	id int auto_increment primary key,
	nombre varchar(50) not null
);

-- Creación de la tabla de  Departamento
create table Departamento(
	id int auto_increment primary key,
	nombre varchar(50) not null , 
	id_ent_responsable int,
	foreign key (id_ent_responsable) references Entidad_Responsable(id)
);

-- Creación de la tabla de Parque
create table Parque(
	id int auto_increment primary key,
	nombre varchar(50) not null,
	fecha_declaración date  not null
);

-- Creación de la tabla de Parque Departamento (que se relaciona con Parque y Departamento)
create table Parque_Departamento(
	id_parque int primary key,
	id_departamento int,
	foreign key(id_parque) references Parque(id),
	foreign key(id_departamento) references Departamento (id)
);
-- Creación de la tabla de Area (se relacion con la tabla Parque)
create table Area(
	id int auto_increment primary key,
	nombre varchar(50) not null,
	extension decimal(10,2) not null,
	id_parque int,
	foreign key(id_parque) references Parque(id)
);

-- Creación de la tabla de Especie
create table Especie(
	id int auto_increment primary key,
	nom_cientifico varchar(50) not null,
	nom_vulgar varchar(50) not null
);

-- Creación de la tabla de Especia Area (que se relaciona entre tabla Especie y Area)
create table Especie_Area(
	id_especie int primary key,
	id_area int,
	cantidad int,
	foreign key(id_especie) references Especie(id),
	foreign key(id_area) references Area(id) 
);

-- Creación de la tabla de Proyecto
create table Proyecto(
	id int auto_increment primary key,
	Presupuesto decimal(12,2) not null,
	periodo varchar(50) not null
);

-- Creación de la tabla de Proyecto Especie( que se relaciona entre Especie y Proyecto)
create table Proyecto_Especie(
	id_proyecto int primary key,
	id_especie int,
	foreign key(id_proyecto) references Proyecto(id),
	foreign key(id_especie) references Especie(id)
);

-- Creación de la tabla de Personal
create table Personal(
	id int auto_increment primary key,
	nombre varchar(50) not null,
	apellido1 varchar(60) not null,
	apellido2 varchar(60),
	cedula varchar(100) unique not null,
	direccion text not null,
	code_rol enum("001","002","003","004") not null,
	rol varchar(100)not null,
	sueldo decimal(10,2) check(sueldo >= 0)
);

-- Creación de la tabla de Investigador (que se relaciona con la tabla Personal)
create table Investigador(
	id int auto_increment primary key,
	id_personal int,
	foreign key(id_personal) references Personal(id)
);

-- Creación de la tabla de Proyecto Investigador (que se relaciona entre Investigador y Proyecto)
create table Proyecto_Investigador(
	id_investigador int,
	id_proyecto int,
	primary key(id_investigador),
	foreign key(id_investigador) references Investigador(id),
	foreign key(id_proyecto) references Proyecto(id)
);

-- Creación de la tabla de Gestion (que se relaciona con la tabla Personal)
create table Gestion(
	id int auto_increment primary key,
	id_personal int,
	foreign key(id_personal) references Personal(id)
);

-- Creación de la tabla de Visitante (que se relacion con la tabla gestion)
create table Visitante(
	id int auto_increment primary key,
	nombre varchar(50) not null,
	direccion text not null,
	profesion varchar(100) not null,
	id_gestion int,
	foreign key(id_gestion) references Gestion(id)
);

-- Creación de la tabla de Alojamiento (que se relacion con la tabla Parque)
create table Alojamiento(
	id int auto_increment primary key,
	nombre varchar(100) not null,
	categoria varchar(100) not null,
	id_parque int,
	foreign key(id_parque) references Parque(id)
);

-- Creación de la tabla de Reserva Alojamiento (que se relaciona entre Alojamiento y Visitante)
create table Reserva_Alojamiento(
	id int auto_increment primary key,
	Fecha_ingreso date not null,
	Fecha_Salida date not null,
	disponibilidad enum("Disponible", "Ocupado") default("Ocupado"),
	costo decimal(10,2) not null,
	metodo_pago varchar(100),
	pago boolean not null,
	id_visitante int,
	id_alojamiento int,
	foreign key(id_visitante) references Visitante(id),
	foreign key(id_alojamiento) references Alojamiento(id)
);

-- Creación de la tabla de Vigilancia(que se relaciona con la tabla Personal)
create table Vigilancia(
	id int auto_increment primary key,
	id_personal int,
	foreign key(id_personal) references Personal(id)
);

-- Creación de la tabla de Vehiculo(que se relaciona con la tabla Vigilancia)
create table Vehiculo(
	id int auto_increment primary key,
	id_vigilancia int,
	nombre varchar(50) not null,
	placa varchar(50) unique not null,
	tipo varchar(50) not null,
	modelo varchar(50) not null,
	vigencia int check (vigencia > 0),
	foreign key(id_vigilancia) references Vigilancia(id)
);
-- Creación de la tabla de Conservación 
create table Conservacion(
	id int auto_increment primary key,
	id_personal int,
	especialidad varchar(100) not null,
	foreign key(id_personal) references Personal(id)
);