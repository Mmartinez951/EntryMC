
CREATE DATABASE ENTRY_MC;
USE ENTRY_MC;

CREATE TABLE Tipo_Documento (
Id_Tipo_Documento int auto_increment not null,
Nombre_Documento varchar(25) not null,
primary key (Id_Tipo_Documento)
);

CREATE TABLE Usuarios (
Id_Usuario int auto_increment not null,
Nombre_Usuario varchar(25) not null,
Apellido_Usuario varchar(25) not null,
Tipo_Documento int not null,
Numero_Documento int(11) unsigned not null,
Direccion varchar(65) null,
Correo_Electronico varchar(25) not null,
Celular int(10) null,
Nombre_Rol int not null,
Login varchar(50) not null,
Password varchar(20) not null,
primary key (Id_Usuario)
);
ALTER TABLE Usuarios add foreign key (Tipo_Documento) references Tipo_Documento (Id_Tipo_Documento);
ALTER TABLE Usuarios add foreign key (Nombre_Rol) references Roles (Id_Rol);

CREATE TABLE Roles (
Id_Rol int auto_increment not null,
Nombre_Rol varchar(20) not null,
Descripcion_Rol varchar(50) null,
Estado_Rol int not null,
primary key (Id_Rol)
);

alter table Roles add foreign key (Estado_Rol) references Estado_Roles (Id_Estado_Rol);

CREATE TABLE Estado_Roles (
Id_Estado_Rol int auto_increment not null,
Nombre_Estado varchar(20) not null,
primary key (Id_Estado_Rol)
);

CREATE TABLE Permisos (
Id_Permiso int auto_increment not null,
Nombre_Permiso varchar(50) not null,
foreign key (Id_Permiso) references Roles (Id_Rol),
Primary key (Id_Permiso)
);

CREATE TABLE Vehiculos (
Id_Vehiculo int auto_increment not null,
Codigo int not null,
Placa varchar(6) not null,
Marca varchar(10) null,
Modelo int(4) null,
Color varchar(25) null,
Tipo_Vehiculo int not null,
Velocidad_MAX varchar(20) null,
Estado_Vehiculo int not null,
Orden_Trabajo int not null,
primary key (Id_Vehiculo)
);

alter table Vehiculos add foreign key (Tipo_Vehiculo) references Tipos_Vehiculo (Id_Tipo_Vehiculo);
alter table Vehiculos add foreign key (Estado_Vehiculo) references Estados_Vehiculo (Id_Estado_Vehiculo);
Alter table Vehiculos add foreign key (Orden_Trabajo) references Orden_Trabajo (Id_Orden_Trabajo);


CREATE TABLE Tipos_Vehiculo (
Id_Tipo_Vehiculo int auto_increment not null,
Nombre_Tipo_Vehiculo varchar(25) not null,
primary key (Id_Tipo_Vehiculo)
);

CREATE TABLE Registro_Entrada (
Id_Registro_Entrada int auto_increment not null,
Codigo_Vehiculo int not null,
Placa varchar(6) not null,
Marca varchar(10) null,
Modelo int(4) null,
Estado_Vehiculo int not null,
Observaciones varchar (350) not null,
Fecha_Registro_Entrada date,
primary key (Id_Registro_Entrada)
);
alter table Registro_Entrada add foreign key(Codigo_Vehiculo)  references Orden_Trabajo (Id_Orden_Trabajo);


CREATE TABLE Estados_Vehiculo (
Id_Estado_Vehiculo int auto_increment not null,
Nombre_Estado varchar(25) not null,
primary key (Id_Estado_Vehiculo)
);

CREATE TABLE Orden_Trabajo (
Id_Orden_Trabajo int auto_increment not null,
Codigo_Vehiculo varchar(10) not null,
Placa varchar(6) not null,
Marca varchar(10) null,
Modelo int(4) null,
LLantas varchar(25) null,
Ventanas varchar (25) null,
Asignar int not null,
Luces varchar(25) null,
Retrovisores varchar(25) null,
Rayones varchar(25) null,
Estado_Vehiculo int not null,
Observaciones varchar(250) not null,
Fecha_Orden_Trabajo date,
primary key (Id_Orden_Trabajo)
);
alter table Orden_Trabajo add foreign key(Estado_Vehiculo) references Estados_Vehiculo (Id_Estado_Vehiculo);


CREATE TABLE Registro_Salida (
Id_Registro_Salida int auto_increment not null,
Codigo_Vehiculo int not null,
Placa varchar(6) not null,
Marca varchar(10) null,
Modelo int(4) null,
Estado_Vehiculo int not null,
Observaciones varchar (350) not null,
Fecha_Registro_Salida date,
primary key (Id_Registro_Salida)
);

alter table Registro_Salida add foreign key(Codigo_Vehiculo)  references Orden_Trabajo (Id_Orden_Trabajo);


