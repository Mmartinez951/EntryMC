
USE ENTRY_MC;
SELECT * FROM `usuarios`;

#INSERT DE TIPOS DE DOCUMENTOS#
INSERT INTO Tipo_Documentos  VALUES (NULL,'Cedula de Ciudadania');
INSERT INTO Tipo_Documentos  VALUES (NULL,'Tarjeta de Identidada');
INSERT INTO Tipo_Documentos  VALUES (NULL,'Pasaporte');
INSERT INTO Tipo_Documentos  VALUES (NULL,'Cedula de Extranjeria');


#INSERT DE ESTADOS ROL#
INSERT INTO Estado_Roles VALUES (NULL,'Activo');
INSERT INTO Estado_Roles VALUES (NULL,'Inactivo');

#INSERT DE ROLES DE USUARIOS#
INSERT INTO ROLES VALUES (NULL,'Coordinador','Encargado del manejo total del software',1);
INSERT INTO ROLES VALUES (NULL,'Mecanico','Encargado del arreglo de vehiculos de errores mecanicos',1);
INSERT INTO ROLES VALUES (NULL,'Tecnico','Encargado del arreglos de vehiculos con fallas tecnicas',1);
INSERT INTO ROLES VALUES (NULL,'Supervisor','Encargado de supervisar el trabajo del area de mantenimiento',1);
INSERT INTO ROLES VALUES (NULL,'Inspector','Encargo del registro de entrada y salida de los vehiculos',1);

#INSERT DE USUARIOS#
INSERT INTO USUARIOS (Id_Usuario,Nombre_Usuario, Apellido_Usuario,Tipo_Documento,Numero_Documento,Direccion,Correo_Electronico,Celular,Nombre_Rol,Login,Password)VALUES (NULL,'ANTONIO','HERNANDEZ',1,988189910,'DIAGONAL25','AH@GMAIL.COM',802867755,1,'11020112930',11020112930);
INSERT INTO USUARIOS (Id_Usuario,Nombre_Usuario, Apellido_Usuario,Tipo_Documento,Numero_Documento,Direccion,Correo_Electronico,Celular,Nombre_Rol,Login,Password)VALUES (NULL,'MANUEL','SANCHEZ',1,251949177,'CALLE 20','MS@GMAIL.COM',925448694,2,'12129866285',12129866285);
INSERT INTO USUARIOS (Id_Usuario,Nombre_Usuario, Apellido_Usuario,Tipo_Documento,Numero_Documento,Direccion,Correo_Electronico,Celular,Nombre_Rol,Login,Password)VALUES (NULL,'JOSE','CARO',2,760708434,'CALLE 80','JC@GMAIL.COM',676974097,1,'94846476578',94846476578);
INSERT INTO USUARIOS (Id_Usuario,Nombre_Usuario, Apellido_Usuario,Tipo_Documento,Numero_Documento,Direccion,Correo_Electronico,Celular,Nombre_Rol,Login,Password)VALUES (NULL,'FRANCISCO','GARCIA',1,356308839,'DIAGONAL25','FG@GMAIL.COM',579698398,4,'11020112933',11020112933);
INSERT INTO USUARIOS (Id_Usuario,Nombre_Usuario, Apellido_Usuario,Tipo_Documento,Numero_Documento,Direccion,Correo_Electronico,Celular,Nombre_Rol,Login,Password)VALUES (NULL,'DAVID','CRUZ',1,306432623,'CARRERA 69','DC@GMAIL.COM',285282662,3,'94846476579',94846476579);
INSERT INTO USUARIOS (Id_Usuario,Nombre_Usuario, Apellido_Usuario,Tipo_Documento,Numero_Documento,Direccion,Correo_Electronico,Celular,Nombre_Rol,Login,Password)VALUES (NULL,'JUAN','ACERO',1,246809954,'CALLE 80','JA@GMAIL.COM',43516592,3,'11020112935',11020112935);
INSERT INTO USUARIOS (Id_Usuario,Nombre_Usuario, Apellido_Usuario,Tipo_Documento,Numero_Documento,Direccion,Correo_Electronico,Celular,Nombre_Rol,Login,Password)VALUES (NULL,'JAVIER','MONROY',2,611148123,'CALLE 20','JM@GMAIL.COM',292439122,2,'94846476580',94846476580);
INSERT INTO USUARIOS (Id_Usuario,Nombre_Usuario, Apellido_Usuario,Tipo_Documento,Numero_Documento,Direccion,Correo_Electronico,Celular,Nombre_Rol,Login,Password)VALUES (NULL,'JOSE ANTONIO','VILLA',1,779078907,'CARRERA 89','JAV@GMAIL.COM',863007098,1,'94846476582',94846476582);
INSERT INTO USUARIOS (Id_Usuario,Nombre_Usuario, Apellido_Usuario,Tipo_Documento,Numero_Documento,Direccion,Correo_Electronico,Celular,Nombre_Rol,Login,Password)VALUES (NULL,'DANIEL','PIÑEROS',1,801409816,'DIAGONAL70','DP@GMAIL.COM',283969147,4,'45676754978',45676754978);
INSERT INTO USUARIOS (Id_Usuario,Nombre_Usuario, Apellido_Usuario,Tipo_Documento,Numero_Documento,Direccion,Correo_Electronico,Celular,Nombre_Rol,Login,Password)VALUES (NULL,'FRANCISCO JAVIER','ROCHA',1,930031800,'CALLE 20','FJR@GMAIL.COM',563486555,1,'11020112939',11020112939);
INSERT INTO USUARIOS (Id_Usuario,Nombre_Usuario, Apellido_Usuario,Tipo_Documento,Numero_Documento,Direccion,Correo_Electronico,Celular,Nombre_Rol,Login,Password)VALUES (NULL,'JOSE LUIS','BLANCO',3,904426697,'CARRERA 69','JB@GMAIL.COM',189988869,3,'94846476581',94846476581);
INSERT INTO USUARIOS (Id_Usuario,Nombre_Usuario, Apellido_Usuario,Tipo_Documento,Numero_Documento,Direccion,Correo_Electronico,Celular,Nombre_Rol,Login,Password)VALUES (NULL,'CARLOS','MARTÍNEZ',1,688965807,'CARRERA 89','CM@GMAIL.COM',445398088,4,'94846476586',94846476586);
INSERT INTO USUARIOS (Id_Usuario,Nombre_Usuario, Apellido_Usuario,Tipo_Documento,Numero_Documento,Direccion,Correo_Electronico,Celular,Nombre_Rol,Login,Password)VALUES (NULL,'JESUS','VILLAMIZAR',1,386480846,'DIAGONAL70','JV@GMAIL.COM',318973515,1,'11020112931',11020112931);
INSERT INTO USUARIOS (Id_Usuario,Nombre_Usuario, Apellido_Usuario,Tipo_Documento,Numero_Documento,Direccion,Correo_Electronico,Celular,Nombre_Rol,Login,Password)VALUES (NULL,'ALEJANDRO','ARISTIZABAL',1,850504752,'CALLE 20','AA@GMAIL.COM',465145515,1,'24566754981',24566754981);
INSERT INTO USUARIOS (Id_Usuario,Nombre_Usuario, Apellido_Usuario,Tipo_Documento,Numero_Documento,Direccion,Correo_Electronico,Celular,Nombre_Rol,Login,Password)VALUES (NULL,'MIGUEL','CONTRERAS',1,131128675,'CARRERA 69','MC@GMAIL.COM',378958622,1,'24676754980',24676754980);
INSERT INTO USUARIOS (Id_Usuario,Nombre_Usuario, Apellido_Usuario,Tipo_Documento,Numero_Documento,Direccion,Correo_Electronico,Celular,Nombre_Rol,Login,Password)VALUES (NULL,'JOSE MANUEL','CASTAÑO',1,645897680,'CALLE 80','JMC@GMAIL.COM',219168488,4,'94846476583',94846476583);
INSERT INTO USUARIOS (Id_Usuario,Nombre_Usuario, Apellido_Usuario,Tipo_Documento,Numero_Documento,Direccion,Correo_Electronico,Celular,Nombre_Rol,Login,Password)VALUES (NULL,'RAFAEL','CASTELLANOS',1,264575827,'CARRERA 89','RC@GMAIL.COM',274648152,1,'11020112932',11020112932);
INSERT INTO USUARIOS (Id_Usuario,Nombre_Usuario, Apellido_Usuario,Tipo_Documento,Numero_Documento,Direccion,Correo_Electronico,Celular,Nombre_Rol,Login,Password)VALUES (NULL,'MIGUEL ANGEL','RODRIGUEZ',2,836094855,'DIAGONAL25','MAR@GMAIL.COM',272989102,4,'24567654982',24567654982);
INSERT INTO USUARIOS (Id_Usuario,Nombre_Usuario, Apellido_Usuario,Tipo_Documento,Numero_Documento,Direccion,Correo_Electronico,Celular,Nombre_Rol,Login,Password)VALUES (NULL,'PABLO','GOMEZ',1,594287826,'CALLE 20','PG@GMAIL.COM',286353375,3,'24566754979',24566754979);
INSERT INTO USUARIOS (Id_Usuario,Nombre_Usuario, Apellido_Usuario,Tipo_Documento,Numero_Documento,Direccion,Correo_Electronico,Celular,Nombre_Rol,Login,Password)VALUES (NULL,'PEDRO','ALFONSO',1,599357056,'CARRERA 69','PAL@GMAIL.COM',906707932,1,'11020112934',11020112934);
INSERT INTO USUARIOS (Id_Usuario,Nombre_Usuario, Apellido_Usuario,Tipo_Documento,Numero_Documento,Direccion,Correo_Electronico,Celular,Nombre_Rol,Login,Password)VALUES (NULL,'ANGEL','OSPINA',1,914964600,'DIAGONAL70','ANO@GMAIL.COM',212607550,1,'24676754983',24676754983);
INSERT INTO USUARIOS (Id_Usuario,Nombre_Usuario, Apellido_Usuario,Tipo_Documento,Numero_Documento,Direccion,Correo_Electronico,Celular,Nombre_Rol,Login,Password)VALUES (NULL,'SERGIO','TORRES',1,543728094,'CALLE 80','SET@GMAIL.COM',77595108,4,'11020112936',11020112936);
INSERT INTO USUARIOS (Id_Usuario,Nombre_Usuario, Apellido_Usuario,Tipo_Documento,Numero_Documento,Direccion,Correo_Electronico,Celular,Nombre_Rol,Login,Password)VALUES (NULL,'DIEGO ','GUZMÁN',3,563752225,'DIAGONAL25','DIG@GMAIL.COM',496479117,2,'59898798765',59898798765);
INSERT INTO USUARIOS (Id_Usuario,Nombre_Usuario, Apellido_Usuario,Tipo_Documento,Numero_Documento,Direccion,Correo_Electronico,Celular,Nombre_Rol,Login,Password)VALUES (NULL,'FERNANDO','CASTIBLANCO',1,900319255,'CARRERA 69','FEC@GMAIL.COM',526781362,1,'59898794765',59898794765);
INSERT INTO USUARIOS (Id_Usuario,Nombre_Usuario, Apellido_Usuario,Tipo_Documento,Numero_Documento,Direccion,Correo_Electronico,Celular,Nombre_Rol,Login,Password)VALUES (NULL,'JORGE','SALGADO',1,834576419,'CARRERA 89','JS@GMAIL.COM',546413590,4,'11020112937',11020112937);
INSERT INTO USUARIOS (Id_Usuario,Nombre_Usuario, Apellido_Usuario,Tipo_Documento,Numero_Documento,Direccion,Correo_Electronico,Celular,Nombre_Rol,Login,Password)VALUES (NULL,'LUIS','DELGADO',1,651531115,'CALLE 20','LDE@GMAIL.COM',803014555,1,'94846476587',94846476587);
INSERT INTO USUARIOS (Id_Usuario,Nombre_Usuario, Apellido_Usuario,Tipo_Documento,Numero_Documento,Direccion,Correo_Electronico,Celular,Nombre_Rol,Login,Password)VALUES (NULL,'ALBERTO','ÁVILA',3,324792605,'CALLE 80','AAV@GMAIL.COM',419674662,4,'11020112938',11020112938);
INSERT INTO USUARIOS (Id_Usuario,Nombre_Usuario, Apellido_Usuario,Tipo_Documento,Numero_Documento,Direccion,Correo_Electronico,Celular,Nombre_Rol,Login,Password)VALUES (NULL,'ALVARO','BUSTOS',1,774010329,'CARRERA 69','ABU@GMAIL.COM',243319571,1,'12129866286',12129866286);
INSERT INTO USUARIOS (Id_Usuario,Nombre_Usuario, Apellido_Usuario,Tipo_Documento,Numero_Documento,Direccion,Correo_Electronico,Celular,Nombre_Rol,Login,Password)VALUES (NULL,'JUAN CARLOS','RODRIGUEZ',2,487672409,'DIAGONAL25','JCR@GMAIL.COM',153019161,3,'94846476585',94846476585);
INSERT INTO USUARIOS (Id_Usuario,Nombre_Usuario, Apellido_Usuario,Tipo_Documento,Numero_Documento,Direccion,Correo_Electronico,Celular,Nombre_Rol,Login,Password)VALUES (NULL,'ADRIAN','GARCIA',3,402125895,'CALLE 20','ADG@GMAIL.COM',506736513,1,'94846476584',94846476584);


#INSERT PERMISOS#
INSERT INTO PERMISOS VALUES (NULL,'FULL','1');
INSERT INTO PERMISOS VALUES (NULL,'GENERAL','2');
INSERT INTO PERMISOS VALUES (NULL,'RESTRINGIDO','3');

#INSERT TIPOS VEHICULOS#
INSERT INTO TIPOS_VEHICULO VALUES (NULL,'BUS');
INSERT INTO TIPOS_VEHICULO VALUES (NULL,'BUSETA');
INSERT INTO TIPOS_VEHICULO VALUES (NULL,'ARTICULADO');

#INSERT ESTADOS VEHICULOS#
INSERT INTO ESTADOS_VEHICULO VALUES (null,'Activo');
INSERT INTO ESTADOS_VEHICULO VALUES (null,'Inactivo');
INSERT INTO ESTADOS_VEHICULO VALUES (null,'Circulación');
INSERT INTO ESTADOS_VEHICULO VALUES (null,'Patios');
INSERT INTO ESTADOS_VEHICULO VALUES (null,'Mantenimiento');

#INSERT DE VEHICULOS#
INSERT INTO VEHICULOS (Id_Vehiculo,Codigo,Placa,Marca,Modelo,Tipo_Vehiculo,Estado_Vehiculo) VALUES (NULL,'MC001','KUM011','CHEVROLET',2021,3,3);
INSERT INTO VEHICULOS (Id_Vehiculo,Codigo,Placa,Marca,Modelo,Tipo_Vehiculo,Estado_Vehiculo) VALUES (NULL,'MC002','KUM012','CHEVROLET',2021,2,5);
INSERT INTO VEHICULOS (Id_Vehiculo,Codigo,Placa,Marca,Modelo,Tipo_Vehiculo,Estado_Vehiculo) VALUES (NULL,'MC003','KUM013','CHEVROLET',2020,3,2);
INSERT INTO VEHICULOS (Id_Vehiculo,Codigo,Placa,Marca,Modelo,Tipo_Vehiculo,Estado_Vehiculo) VALUES (NULL,'MC004','KUM014','CHEVROLET',2022,2,2);
INSERT INTO VEHICULOS (Id_Vehiculo,Codigo,Placa,Marca,Modelo,Tipo_Vehiculo,Estado_Vehiculo) VALUES (NULL,'MC005','KUM015','CHEVROLET',2020,1,5);
INSERT INTO VEHICULOS (Id_Vehiculo,Codigo,Placa,Marca,Modelo,Tipo_Vehiculo,Estado_Vehiculo) VALUES (NULL,'MC006','KUM016','CHEVROLET',2020,1,5);
INSERT INTO VEHICULOS (Id_Vehiculo,Codigo,Placa,Marca,Modelo,Tipo_Vehiculo,Estado_Vehiculo) VALUES (NULL,'MC007','KUM017','MERCEDES',2020,3,5);
INSERT INTO VEHICULOS (Id_Vehiculo,Codigo,Placa,Marca,Modelo,Tipo_Vehiculo,Estado_Vehiculo) VALUES (NULL,'MC008','KUM018','MERCEDES',2022,1,3);
INSERT INTO VEHICULOS (Id_Vehiculo,Codigo,Placa,Marca,Modelo,Tipo_Vehiculo,Estado_Vehiculo) VALUES (NULL,'MC009','KUM019','MERCEDES',2021,1,1);
INSERT INTO VEHICULOS (Id_Vehiculo,Codigo,Placa,Marca,Modelo,Tipo_Vehiculo,Estado_Vehiculo) VALUES (NULL,'MC010','KUM020','MERCEDES',2020,2,3);
INSERT INTO VEHICULOS (Id_Vehiculo,Codigo,Placa,Marca,Modelo,Tipo_Vehiculo,Estado_Vehiculo) VALUES (NULL,'MC011','KUM021','MERCEDES',2022,1,5);
INSERT INTO VEHICULOS (Id_Vehiculo,Codigo,Placa,Marca,Modelo,Tipo_Vehiculo,Estado_Vehiculo) VALUES (NULL,'MC012','KUM022','MERCEDES',2021,3,3);
INSERT INTO VEHICULOS (Id_Vehiculo,Codigo,Placa,Marca,Modelo,Tipo_Vehiculo,Estado_Vehiculo) VALUES (NULL,'MC013','KUM023','MERCEDES',2021,1,1);
INSERT INTO VEHICULOS (Id_Vehiculo,Codigo,Placa,Marca,Modelo,Tipo_Vehiculo,Estado_Vehiculo) VALUES (NULL,'MC014','KUM024','MERCEDES',2020,3,1);
INSERT INTO VEHICULOS (Id_Vehiculo,Codigo,Placa,Marca,Modelo,Tipo_Vehiculo,Estado_Vehiculo) VALUES (NULL,'MC015','KUM025','MERCEDES',2021,2,3);
INSERT INTO VEHICULOS (Id_Vehiculo,Codigo,Placa,Marca,Modelo,Tipo_Vehiculo,Estado_Vehiculo) VALUES (NULL,'MC016','KUM026','MERCEDES',2022,1,1);
INSERT INTO VEHICULOS (Id_Vehiculo,Codigo,Placa,Marca,Modelo,Tipo_Vehiculo,Estado_Vehiculo) VALUES (NULL,'MC017','KUM027','SUZUKI',2020,3,2);
INSERT INTO VEHICULOS (Id_Vehiculo,Codigo,Placa,Marca,Modelo,Tipo_Vehiculo,Estado_Vehiculo) VALUES (NULL,'MC018','KUM028','SUZUKI',2020,1,5);
INSERT INTO VEHICULOS (Id_Vehiculo,Codigo,Placa,Marca,Modelo,Tipo_Vehiculo,Estado_Vehiculo) VALUES (NULL,'MC019','KUM029','SUZUKI',2020,2,1);
INSERT INTO VEHICULOS (Id_Vehiculo,Codigo,Placa,Marca,Modelo,Tipo_Vehiculo,Estado_Vehiculo) VALUES (NULL,'MC020','KUM030','SUZUKI',2021,2,4);
INSERT INTO VEHICULOS (Id_Vehiculo,Codigo,Placa,Marca,Modelo,Tipo_Vehiculo,Estado_Vehiculo) VALUES (NULL,'MC021','KUM031','SUZUKI',2022,3,4);
INSERT INTO VEHICULOS (Id_Vehiculo,Codigo,Placa,Marca,Modelo,Tipo_Vehiculo,Estado_Vehiculo) VALUES (NULL,'MC022','KUM032','SUZUKI',2022,2,1);
INSERT INTO VEHICULOS (Id_Vehiculo,Codigo,Placa,Marca,Modelo,Tipo_Vehiculo,Estado_Vehiculo) VALUES (NULL,'MC023','KUM033','SUZUKI',2020,2,2);
INSERT INTO VEHICULOS (Id_Vehiculo,Codigo,Placa,Marca,Modelo,Tipo_Vehiculo,Estado_Vehiculo) VALUES (NULL,'MC024','KUM034','SUZUKI',2021,1,4);
INSERT INTO VEHICULOS (Id_Vehiculo,Codigo,Placa,Marca,Modelo,Tipo_Vehiculo,Estado_Vehiculo) VALUES (NULL,'MC025','KUM035','SUZUKI',2021,1,4);
INSERT INTO VEHICULOS (Id_Vehiculo,Codigo,Placa,Marca,Modelo,Tipo_Vehiculo,Estado_Vehiculo) VALUES (NULL,'MC026','KUM036','MERCEDES',2022,3,4);
INSERT INTO VEHICULOS (Id_Vehiculo,Codigo,Placa,Marca,Modelo,Tipo_Vehiculo,Estado_Vehiculo) VALUES (NULL,'MC027','KUM037','MERCEDES',2020,3,1);
INSERT INTO VEHICULOS (Id_Vehiculo,Codigo,Placa,Marca,Modelo,Tipo_Vehiculo,Estado_Vehiculo) VALUES (NULL,'MC028','KUM038','MERCEDES',2020,3,4);
INSERT INTO VEHICULOS (Id_Vehiculo,Codigo,Placa,Marca,Modelo,Tipo_Vehiculo,Estado_Vehiculo) VALUES (NULL,'MC029','KUM039','CHEVROLET',2020,1,5);
INSERT INTO VEHICULOS (Id_Vehiculo,Codigo,Placa,Marca,Modelo,Tipo_Vehiculo,Estado_Vehiculo) VALUES (NULL,'MC030','KUM040','CHEVROLET',2020,1,4);

#INSERT DE REGISTRO ENTRADA VEHICULO#
INSERT INTO REGISTRO_ENTRADA (Id_Registro_Entrada,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Entrada) VALUES (NULL,1,'MC001','KUM011','CHEVROLET',2021,3,'OK','2022-05-27');
INSERT INTO REGISTRO_ENTRADA (Id_Registro_Entrada,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Entrada) VALUES (NULL,2,'MC002','KUM012','CHEVROLET',2021,5,'Problemas Técnicos','2022-05-27');
INSERT INTO REGISTRO_ENTRADA (Id_Registro_Entrada,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Entrada) VALUES (NULL,3,'MC003','KUM013','CHEVROLET',2020,2,'OK','2022-05-27');
INSERT INTO REGISTRO_ENTRADA (Id_Registro_Entrada,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Entrada) VALUES (NULL,4,'MC004','KUM014','CHEVROLET',2022,2,'OK','2022-05-27');
INSERT INTO REGISTRO_ENTRADA (Id_Registro_Entrada,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Entrada) VALUES (NULL,5,'MC005','KUM015','CHEVROLET',2020,5,'OK','2022-05-27');
INSERT INTO REGISTRO_ENTRADA (Id_Registro_Entrada,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Entrada) VALUES (NULL,6,'MC006','KUM016','CHEVROLET',2020,5,'Problemas de Carroceria','2022-05-27');
INSERT INTO REGISTRO_ENTRADA (Id_Registro_Entrada,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Entrada) VALUES (NULL,7,'MC007','KUM017','MERCEDES',2020,5,'Retrovisor Roto','2022-05-05');
INSERT INTO REGISTRO_ENTRADA (Id_Registro_Entrada,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Entrada) VALUES (NULL,8,'MC008','KUM018','MERCEDES',2022,3,'OK','2022-05-06');
INSERT INTO REGISTRO_ENTRADA (Id_Registro_Entrada,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Entrada) VALUES (NULL,9,'MC009','KUM019','MERCEDES',2021,1,'OK','2022-05-07');
INSERT INTO REGISTRO_ENTRADA (Id_Registro_Entrada,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Entrada) VALUES (NULL,10,'MC010','KUM020','MERCEDES',2020,3,'OK','2022-05-08');
INSERT INTO REGISTRO_ENTRADA (Id_Registro_Entrada,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Entrada) VALUES (NULL,11,'MC011','KUM021','MERCEDES',2022,5,'Problemas de Luces','2022-05-09');
INSERT INTO REGISTRO_ENTRADA (Id_Registro_Entrada,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Entrada) VALUES (NULL,12,'MC012','KUM022','MERCEDES',2021,3,'OK','2022-05-10');
INSERT INTO REGISTRO_ENTRADA (Id_Registro_Entrada,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Entrada) VALUES (NULL,13,'MC013','KUM023','MERCEDES',2021,1,'OK','2022-05-11');
INSERT INTO REGISTRO_ENTRADA (Id_Registro_Entrada,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Entrada) VALUES (NULL,14,'MC014','KUM024','MERCEDES',2020,1,'OK','2022-05-12');
INSERT INTO REGISTRO_ENTRADA (Id_Registro_Entrada,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Entrada) VALUES (NULL,15,'MC015','KUM025','MERCEDES',2021,3,'OK','2022-05-13');
INSERT INTO REGISTRO_ENTRADA (Id_Registro_Entrada,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Entrada) VALUES (NULL,16,'MC016','KUM026','MERCEDES',2022,1,'OK','2022-05-14');
INSERT INTO REGISTRO_ENTRADA (Id_Registro_Entrada,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Entrada) VALUES (NULL,17,'MC017','KUM027','SUZUKI',2020,2,'OK','2022-05-15');
INSERT INTO REGISTRO_ENTRADA (Id_Registro_Entrada,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Entrada) VALUES (NULL,18,'MC018','KUM028','SUZUKI',2020,5,'Problemas de Direcionales','2022-05-16');
INSERT INTO REGISTRO_ENTRADA (Id_Registro_Entrada,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Entrada) VALUES (NULL,19,'MC019','KUM029','SUZUKI',2020,1,'OK','2022-05-17');
INSERT INTO REGISTRO_ENTRADA (Id_Registro_Entrada,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Entrada) VALUES (NULL,20,'MC020','KUM030','SUZUKI',2021,4,'OK','2022-05-18');
INSERT INTO REGISTRO_ENTRADA (Id_Registro_Entrada,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Entrada) VALUES (NULL,21,'MC021','KUM031','SUZUKI',2022,4,'OK','2022-05-19');
INSERT INTO REGISTRO_ENTRADA (Id_Registro_Entrada,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Entrada) VALUES (NULL,22,'MC022','KUM032','SUZUKI',2022,1,'OK','2022-05-20');
INSERT INTO REGISTRO_ENTRADA (Id_Registro_Entrada,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Entrada) VALUES (NULL,23,'MC023','KUM033','SUZUKI',2020,2,'OK','2022-05-21');
INSERT INTO REGISTRO_ENTRADA (Id_Registro_Entrada,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Entrada) VALUES (NULL,24,'MC024','KUM034','SUZUKI',2021,4,'OK','2022-05-22');
INSERT INTO REGISTRO_ENTRADA (Id_Registro_Entrada,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Entrada) VALUES (NULL,25,'MC025','KUM035','SUZUKI',2021,4,'OK','2022-05-23');
INSERT INTO REGISTRO_ENTRADA (Id_Registro_Entrada,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Entrada) VALUES (NULL,26,'MC026','KUM036','MERCEDES',2022,4,'OK','2022-05-24');
INSERT INTO REGISTRO_ENTRADA (Id_Registro_Entrada,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Entrada) VALUES (NULL,27,'MC027','KUM037','MERCEDES',2020,1,'OK','2022-05-25');
INSERT INTO REGISTRO_ENTRADA (Id_Registro_Entrada,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Entrada) VALUES (NULL,28,'MC028','KUM038','MERCEDES',2020,4,'OK','2022-05-26');
INSERT INTO REGISTRO_ENTRADA (Id_Registro_Entrada,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Entrada) VALUES (NULL,29,'MC029','KUM039','CHEVROLET',2020,5,'Fallas Técnicas','2022-05-27');
INSERT INTO REGISTRO_ENTRADA (Id_Registro_Entrada,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Entrada) VALUES (NULL,30,'MC030','KUM040','CHEVROLET',2020,4,'ok','2022-05-28');


#INSERT REGISTRO SALIDA VEHICULOS#
INSERT INTO REGISTRO_SALIDA (Id_Registro_Salida,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Salida) VALUES (NULL,1,'MC001','KUM011','CHEVROLET',2021,1,'OK','2022-05-28');
INSERT INTO REGISTRO_SALIDA (Id_Registro_Salida,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Salida) VALUES (NULL,2,'MC002','KUM012','CHEVROLET',2021,1,'OK','2022-05-29');
INSERT INTO REGISTRO_SALIDA (Id_Registro_Salida,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Salida) VALUES (NULL,3,'MC003','KUM013','CHEVROLET',2020,1,'OK','2022-05-30');
INSERT INTO REGISTRO_SALIDA (Id_Registro_Salida,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Salida) VALUES (NULL,4,'MC004','KUM014','CHEVROLET',2022,1,'OK','2022-05-31');
INSERT INTO REGISTRO_SALIDA (Id_Registro_Salida,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Salida) VALUES (NULL,5,'MC005','KUM015','CHEVROLET',2020,1,'OK','2022-06-01');
INSERT INTO REGISTRO_SALIDA (Id_Registro_Salida,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Salida) VALUES (NULL,6,'MC006','KUM016','CHEVROLET',2020,1,'OK','2022-06-02');
INSERT INTO REGISTRO_SALIDA (Id_Registro_Salida,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Salida) VALUES (NULL,7,'MC007','KUM017','MERCEDES',2020,1,'OK','2022-06-03');
INSERT INTO REGISTRO_SALIDA (Id_Registro_Salida,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Salida) VALUES (NULL,8,'MC008','KUM018','MERCEDES',2022,1,'OK','2022-06-04');
INSERT INTO REGISTRO_SALIDA (Id_Registro_Salida,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Salida) VALUES (NULL,9,'MC009','KUM019','MERCEDES',2021,1,'OK','2022-06-05');
INSERT INTO REGISTRO_SALIDA (Id_Registro_Salida,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Salida) VALUES (NULL,10,'MC010','KUM020','MERCEDES',2020,1,'OK','2022-06-06');
INSERT INTO REGISTRO_SALIDA (Id_Registro_Salida,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Salida) VALUES (NULL,11,'MC011','KUM021','MERCEDES',2022,1,'OK','2022-06-07');
INSERT INTO REGISTRO_SALIDA (Id_Registro_Salida,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Salida) VALUES (NULL,12,'MC012','KUM022','MERCEDES',2021,1,'OK','2022-06-08');
INSERT INTO REGISTRO_SALIDA (Id_Registro_Salida,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Salida) VALUES (NULL,13,'MC013','KUM023','MERCEDES',2021,1,'OK','2022-06-09');
INSERT INTO REGISTRO_SALIDA (Id_Registro_Salida,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Salida) VALUES (NULL,14,'MC014','KUM024','MERCEDES',2020,1,'OK','2022-06-10');
INSERT INTO REGISTRO_SALIDA (Id_Registro_Salida,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Salida) VALUES (NULL,15,'MC015','KUM025','MERCEDES',2021,1,'OK','2022-06-11');
INSERT INTO REGISTRO_SALIDA (Id_Registro_Salida,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Salida) VALUES (NULL,16,'MC016','KUM026','MERCEDES',2022,1,'OK','2022-06-12');
INSERT INTO REGISTRO_SALIDA (Id_Registro_Salida,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Salida) VALUES (NULL,17,'MC017','KUM027','SUZUKI',2020,1,'OK','2022-06-13');
INSERT INTO REGISTRO_SALIDA (Id_Registro_Salida,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Salida) VALUES (NULL,18,'MC018','KUM028','SUZUKI',2020,1,'OK','2022-06-14');
INSERT INTO REGISTRO_SALIDA (Id_Registro_Salida,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Salida) VALUES (NULL,19,'MC019','KUM029','SUZUKI',2020,1,'OK','2022-06-15');
INSERT INTO REGISTRO_SALIDA (Id_Registro_Salida,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Salida) VALUES (NULL,20,'MC020','KUM030','SUZUKI',2021,1,'OK','2022-06-16');
INSERT INTO REGISTRO_SALIDA (Id_Registro_Salida,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Salida) VALUES (NULL,21,'MC021','KUM031','SUZUKI',2022,1,'OK','2022-06-17');
INSERT INTO REGISTRO_SALIDA (Id_Registro_Salida,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Salida) VALUES (NULL,22,'MC022','KUM032','SUZUKI',2022,1,'OK','2022-06-18');
INSERT INTO REGISTRO_SALIDA (Id_Registro_Salida,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Salida) VALUES (NULL,23,'MC023','KUM033','SUZUKI',2020,1,'OK','2022-06-19');
INSERT INTO REGISTRO_SALIDA (Id_Registro_Salida,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Salida) VALUES (NULL,24,'MC024','KUM034','SUZUKI',2021,1,'OK','2022-06-20');
INSERT INTO REGISTRO_SALIDA (Id_Registro_Salida,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Salida) VALUES (NULL,25,'MC025','KUM035','SUZUKI',2021,1,'OK','2022-06-21');
INSERT INTO REGISTRO_SALIDA (Id_Registro_Salida,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Salida) VALUES (NULL,26,'MC026','KUM036','MERCEDES',2022,1,'OK','2022-06-22');
INSERT INTO REGISTRO_SALIDA (Id_Registro_Salida,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Salida) VALUES (NULL,27,'MC027','KUM037','MERCEDES',2020,1,'OK','2022-06-23');
INSERT INTO REGISTRO_SALIDA (Id_Registro_Salida,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Salida) VALUES (NULL,28,'MC028','KUM038','MERCEDES',2020,1,'OK','2022-06-24');
INSERT INTO REGISTRO_SALIDA (Id_Registro_Salida,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Salida) VALUES (NULL,29,'MC029','KUM039','CHEVROLET',2020,1,'OK','2022-06-25');
INSERT INTO REGISTRO_SALIDA (Id_Registro_Salida,Id_Vehiculo,Codigo,Placa,Marca,Modelo,Estado_Vehiculo,Observaciones,Fecha_Registro_Salida) VALUES (NULL,30,'MC030','KUM040','CHEVROLET',2020,1,'OK','2022-06-26');


















