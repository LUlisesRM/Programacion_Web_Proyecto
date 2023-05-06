-- se elimina si es que no esta la DB
drop schema if exists bd_citemsa;
create schema if not exists bd_citemsa default character set utf8 collate utf8_spanish_ci;

use  bd_citemsa;

-- creamos la tabla


CREATE TABLE operadores(
id_operador int(10) not null,
imagen longblob,
credencial_mb int(4) not null,
nomina int(8) not null,
contraseña varchar (20) not null,
apellido_paterno text not null,
apellido_materno  text not null,
nombre text not null,
estatus  text not null,
fecha_alta date,
fecha_contrato date,
fecha_baja date,

id_licencia varchar (7) not null,
vencimiento_licencia date not null,
curp varchar (18) not null,
homoclave varchar (3) not null,
nss varchar (11) not null,
telefono varchar (10) not null,
correo text,
codigo_postal int (5) not null,
permisos varchar (3) not null default 001,
fecha_registro  datetime not null default current_timestamp
 ) engine=Innodb default charset=utf8;

CREATE TABLE padmon(
id_padmon int(10) not null,
credencial_mb int(4) not null,
nomina int(8) not null,
contraseña varchar (20) not null,
apellido_paterno text not null,
apellido_materno  text not null,
nombre text not null,
estatus  text not null,
fecha_alta date,
fecha_contrato date,
fecha_baja date,

id_licencia varchar (7) not null,
vencimiento_licencia date not null,
curp varchar (18) not null,
homoclave varchar (3) not null,
nss varchar (11) not null,
telefono varchar (10) not null,
correo text,
codigo_postal int (5) not null,
permisos varchar (3) not null default 003,
fecha_registro  datetime not null default current_timestamp
 ) engine=Innodb default charset=utf8;

alter table operadores
change column id_operador id_operador int(10) not null auto_increment,
add primary key (id_operador);

alter table padmon
change column id_padmon id_padmon int(10) not null auto_increment,
add primary key (id_padmon);

/*ADMINISTRADORES*/

INSERT INTO padmon (credencial_mb,nomina,contraseña,apellido_paterno,apellido_materno,nombre,estatus,
fecha_contrato,id_licencia,vencimiento_licencia,curp,homoclave,nss,telefono,codigo_postal)
VALUES ('3309','88','123456','PEDRAZA','QUIROZ','MARIO ALBERTO', 'ACTIVO','2013-11-05','C525525','2025-01-13',
'PQMA00000000000011','AAA','05147102346','5555555555','00001');

INSERT INTO padmon (credencial_mb,nomina,contraseña,apellido_paterno,apellido_materno,nombre,estatus,
fecha_contrato,id_licencia,vencimiento_licencia,curp,homoclave,nss,telefono,codigo_postal)
VALUES ('0001','00','123456','REY','MILAN','ULISES', 'ACTIVO','2022-01-18','C000000','2024-01-01',
'REMU901340HDFOLS02','3MI','10000000000','5555555551','07000');

/*USUARIOS*/

INSERT INTO operadores (credencial_mb,nomina,contraseña,apellido_paterno,apellido_materno,nombre,estatus,
fecha_contrato,id_licencia,vencimiento_licencia,curp,homoclave,nss,telefono,codigo_postal)
VALUES ('3182','57','123456','AGUILAR','CABRERA','HECTOR', 'ACTIVO','2013-11-05','C520621','2024-11-19',
'AUCH204005HDFLHC02','GC5','10000000001','5555555552','14280');

INSERT INTO operadores (credencial_mb,nomina,contraseña,apellido_paterno,apellido_materno,nombre,estatus,
fecha_contrato,id_licencia,vencimiento_licencia,curp,homoclave,nss,telefono,codigo_postal)
VALUES ('6714','312','123456','AGUIRRE','BURGOS','NORBERTO MELCHOR', 'ACTIVO','2020-09-10','N481314','2024-05-21',
'AMBN847406HDFGRK05','CH2','10000000003','5555555554','07040');

INSERT INTO operadores (credencial_mb,nomina,contraseña,apellido_paterno,apellido_materno,nombre,estatus,
fecha_contrato,id_licencia,vencimiento_licencia,curp,homoclave,nss,telefono,codigo_postal)
VALUES ('3175','5','123456','ALVARADO','VELAZQUEZ','SALVADOR', 'ACTIVO','2013-11-05','C490314','2024-07-14',
'ALPS690113HYFLLL45','LG8','10000000004','5555555553','07400');

INSERT INTO operadores (credencial_mb,nomina,contraseña,apellido_paterno,apellido_materno,nombre,estatus,
fecha_contrato,id_licencia,vencimiento_licencia,curp,homoclave,nss,telefono,codigo_postal)
VALUES ('3182','57','123456','ALFARO','CORDERO','ERNESTO', 'ACTIVO','2013-11-05','C520621','2024-11-19',
'AUCH670305HDVGBC06','GU5','10000000008','5555555557','15000');

INSERT INTO operadores (credencial_mb,nomina,contraseña,apellido_paterno,apellido_materno,nombre,estatus,
fecha_contrato,id_licencia,vencimiento_licencia,curp,homoclave,nss,telefono,codigo_postal)
VALUES ('7733','409','123456','CASTILLON','FRANCO','EDUARDO', 'ACTIVO','2022-06-04','R546834','2023-09-08',
'CAFE740930HDFRSV06','JE0','10000000009','5555555550','09000');

/*REGISTROS REPETIDOS*/
INSERT INTO operadores (credencial_mb,nomina,contraseña,apellido_paterno,apellido_materno,nombre,estatus,
fecha_contrato,id_licencia,vencimiento_licencia,curp,homoclave,nss,telefono,codigo_postal)
VALUES ('7733','409','123456','PANTOJA','GARCIA','LUIS', 'ACTIVO','2022-06-04','R546834','2023-09-08',
'CAFE740930HDFRSV06','JE0','10000000009','5555555550','09000');

INSERT INTO operadores (credencial_mb,nomina,contraseña,apellido_paterno,apellido_materno,nombre,estatus,
fecha_contrato,id_licencia,vencimiento_licencia,curp,homoclave,nss,telefono,codigo_postal)
VALUES ('7733','409','123456','REYES','JUAREZ','ALBERTO', 'ACTIVO','2022-06-04','R546834','2023-09-08',
'CAFE740930HDFRSV06','JE0','10000000009','5555555550','09000');

INSERT INTO operadores (credencial_mb,nomina,contraseña,apellido_paterno,apellido_materno,nombre,estatus,
fecha_contrato,id_licencia,vencimiento_licencia,curp,homoclave,nss,telefono,codigo_postal)
VALUES ('7733','409','123456','MIRANDA','TORRES','TOMAS', 'ACTIVO','2022-06-04','R546834','2023-09-08',
'CAFE740930HDFRSV06','JE0','10000000009','5555555550','09000');

INSERT INTO operadores (credencial_mb,nomina,contraseña,apellido_paterno,apellido_materno,nombre,estatus,
fecha_contrato,id_licencia,vencimiento_licencia,curp,homoclave,nss,telefono,codigo_postal)
VALUES ('7733','409','123456','FERNANDEZ','SANDOVAL','MANUEL', 'ACTIVO','2022-06-04','R546834','2023-09-08',
'CAFE740930HDFRSV06','JE0','10000000009','5555555550','09000');

INSERT INTO operadores (credencial_mb,nomina,contraseña,apellido_paterno,apellido_materno,nombre,estatus,
fecha_contrato,id_licencia,vencimiento_licencia,curp,homoclave,nss,telefono,codigo_postal)
VALUES ('7733','409','123456','RUIZ','MORA','JOSE', 'ACTIVO','2022-06-04','R546834','2023-09-08',
'CAFE740930HDFRSV06','JE0','10000000009','5555555550','09000');

INSERT INTO operadores (credencial_mb,nomina,contraseña,apellido_paterno,apellido_materno,nombre,estatus,
fecha_contrato,id_licencia,vencimiento_licencia,curp,homoclave,nss,telefono,codigo_postal)
VALUES ('7733','409','123456','LOPEZ','JIMENEZ','ERICK', 'ACTIVO','2022-06-04','R546834','2023-09-08',
'CAFE740930HDFRSV06','JE0','10000000009','5555555550','09000');

INSERT INTO operadores (credencial_mb,nomina,contraseña,apellido_paterno,apellido_materno,nombre,estatus,
fecha_contrato,id_licencia,vencimiento_licencia,curp,homoclave,nss,telefono,codigo_postal)
VALUES ('7733','409','123456','SANCHEZ','DURAN','MIGUEL', 'ACTIVO','2022-06-04','R546834','2023-09-08',
'CAFE740930HDFRSV06','JE0','10000000009','5555555550','09000');

INSERT INTO operadores (credencial_mb,nomina,contraseña,apellido_paterno,apellido_materno,nombre,estatus,
fecha_contrato,id_licencia,vencimiento_licencia,curp,homoclave,nss,telefono,codigo_postal)
VALUES ('7733','409','123456','ROJAS','LIMON','ARMANDO', 'ACTIVO','2022-06-04','R546834','2023-09-08',
'CAFE740930HDFRSV06','JE0','10000000009','5555555550','09000');

INSERT INTO operadores (credencial_mb,nomina,contraseña,apellido_paterno,apellido_materno,nombre,estatus,
fecha_contrato,id_licencia,vencimiento_licencia,curp,homoclave,nss,telefono,codigo_postal)
VALUES ('7733','409','123456','GARCIA','URRUTIA','OMAR', 'ACTIVO','2022-06-04','R546834','2023-09-08',
'CAFE740930HDFRSV06','JE0','10000000009','5555555550','09000');

INSERT INTO operadores (credencial_mb,nomina,contraseña,apellido_paterno,apellido_materno,nombre,estatus,
fecha_contrato,id_licencia,vencimiento_licencia,curp,homoclave,nss,telefono,codigo_postal)
VALUES ('7733','409','123456','MENDOZA','AMEZCUA','IRVIN', 'ACTIVO','2022-06-04','R546834','2023-09-08',
'CAFE740930HDFRSV06','JE0','10000000009','5555555550','09000');

INSERT INTO operadores (credencial_mb,nomina,contraseña,apellido_paterno,apellido_materno,nombre,estatus,
fecha_contrato,id_licencia,vencimiento_licencia,curp,homoclave,nss,telefono,codigo_postal)
VALUES ('7733','409','123456','ORTIZ','ISLAS','ALAN', 'ACTIVO','2022-06-04','R546834','2023-09-08',
'CAFE740930HDFRSV06','JE0','10000000009','5555555550','09000');

/* UPDATE padmon set codigo_postal = '55540' where id_padmon = 2 */