--------------------------------------------------------
--  File created - Sunday-August-21-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence SECUENCIA_USUARIO
--------------------------------------------------------

   CREATE SEQUENCE  "PRIVE"."SECUENCIA_USUARIO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 100 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL
--------------------------------------------------------
--  DDL for Table CANTON
--------------------------------------------------------

  CREATE TABLE "PRIVE"."CANTON" ("ID_CANTON" NUMBER(*,0), "NOMBRE_CANT" VARCHAR2(80 BYTE), "ID_PROVINCIA" NUMBER(*,0))
--------------------------------------------------------
--  DDL for Table CLIENTES
--------------------------------------------------------

  CREATE TABLE "PRIVE"."CLIENTES" ("ID_CLIENTE" NUMBER(*,0), "METODOPAGO" VARCHAR2(80 BYTE), "ID_USUARIO" NUMBER(*,0))
--------------------------------------------------------
--  DDL for Table DEPARTAMENTOS
--------------------------------------------------------

  CREATE TABLE "PRIVE"."DEPARTAMENTOS" ("ID_DEPARTAMENTO" NUMBER(*,0), "NOMBRE_DEP" VARCHAR2(80 BYTE))
--------------------------------------------------------
--  DDL for Table DIRECCION
--------------------------------------------------------

  CREATE TABLE "PRIVE"."DIRECCION" ("ID_DIRECCION" NUMBER(*,0), "DESC_DIRECCION" VARCHAR2(200 BYTE), "ID_DISTRITO" NUMBER(*,0))
--------------------------------------------------------
--  DDL for Table DISTRITO
--------------------------------------------------------

  CREATE TABLE "PRIVE"."DISTRITO" ("ID_DISTRITO" NUMBER(*,0), "NOMBRE_DIST" VARCHAR2(100 BYTE), "ID_CANTON" NUMBER(*,0))
--------------------------------------------------------
--  DDL for Table EMPLEADOS
--------------------------------------------------------

  CREATE TABLE "PRIVE"."EMPLEADOS" ("ID_EMPLEADO" NUMBER(*,0), "SALARIO" NUMBER(8,2), "TURNO" VARCHAR2(100 BYTE), "EMAIL" VARCHAR2(100 BYTE), "TELEFONO" VARCHAR2(20 BYTE), "FECHASNACIMIENTO" DATE, "ID_USUARIO" NUMBER(*,0), "ID_DEPARTAMENTO" NUMBER(*,0), "ID_DIRECCION" NUMBER(*,0))
--------------------------------------------------------
--  DDL for Table FACTURAS
--------------------------------------------------------

  CREATE TABLE "PRIVE"."FACTURAS" ("ID_FACTURA" NUMBER(*,0), "TOTAL" NUMBER(*,0), "ID_EMPLEADO" NUMBER(*,0), "ID_CLIENTE" NUMBER(*,0))
--------------------------------------------------------
--  DDL for Table FACTURA_ORDEN
--------------------------------------------------------

  CREATE TABLE "PRIVE"."FACTURA_ORDEN" ("ID_FAC_ORD" NUMBER(*,0), "ID_FACTURA" NUMBER(*,0), "ID_ORDEN" NUMBER(*,0))
--------------------------------------------------------
--  DDL for Table INVENTARIO
--------------------------------------------------------

  CREATE TABLE "PRIVE"."INVENTARIO" ("ID_INVENTARIO" NUMBER(*,0), "DESCRIPCION" VARCHAR2(250 BYTE), "PRECIO" NUMBER(8,2), "CANTIDAD" NUMBER(*,0), "ID_PROVEEDOR" NUMBER(*,0))
--------------------------------------------------------
--  DDL for Table ORDEN
--------------------------------------------------------

  CREATE TABLE "PRIVE"."ORDEN" ("ID_ORDEN" NUMBER(*,0), "DESCRIPCION" VARCHAR2(250 BYTE), "PRECIO" NUMBER(8,2), "ID_INVENTARIO" NUMBER(*,0))
--------------------------------------------------------
--  DDL for Table PROVEEDORES
--------------------------------------------------------

  CREATE TABLE "PRIVE"."PROVEEDORES" ("ID_PROVEEDOR" NUMBER(*,0), "NOMBRE_PROV" VARCHAR2(100 BYTE), "EMAIL" VARCHAR2(100 BYTE), "FECHA_INICIO" DATE, "HORARIO" VARCHAR2(80 BYTE), "TELEFONO" VARCHAR2(20 BYTE), "ID_DIRECCION" NUMBER(*,0))
--------------------------------------------------------
--  DDL for Table PROVINCIA
--------------------------------------------------------

  CREATE TABLE "PRIVE"."PROVINCIA" ("ID_PROVINCIA" NUMBER(*,0), "NOMBRE_PROV" VARCHAR2(80 BYTE))
--------------------------------------------------------
--  DDL for Table USUARIOS
--------------------------------------------------------

  CREATE TABLE "PRIVE"."USUARIOS" ("ID_USUARIO" NUMBER(*,0), "NOMBRE1" VARCHAR2(100 BYTE), "NOMBRE2" VARCHAR2(100 BYTE), "APELLIDO1" VARCHAR2(100 BYTE), "APELLIDO2" VARCHAR2(100 BYTE), "CEDULAU" VARCHAR2(30 BYTE))
REM INSERTING into PRIVE.CANTON
SET DEFINE OFF;
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (1,'Central',1);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (2,'Escaz�',1);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (3,'Desamparados',1);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (4,'Puriscal',1);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (5,'Tarraz�',1);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (6,'Aserr�',1);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (7,'Mora',1);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (8,'Goicoechea',1);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (9,'Santa Ana',1);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (10,'Alajuelita',1);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (11,'V�zquez De Coronado',1);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (12,'Acosta',1);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (13,'Tib�s',1);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (14,'Moravia',1);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (15,'Montes De Oca',1);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (16,'Turrubares',1);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (17,'Dota',1);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (18,'Curridabat',1);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (19,'P�rez Zeled�n',1);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (20,'Le�n Cort�s Castro',1);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (21,'Central',2);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (22,'San Ramon',2);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (23,'Grecia',2);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (24,'San Mateo',2);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (25,'Atenas',2);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (26,'Naranjo',2);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (27,'Palmares',2);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (28,'Poas',2);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (29,'Orotina',2);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (30,'San Carlos',2);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (31,'Zarcero',2);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (32,'Sarchi',2);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (33,'Upala',2);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (34,'Los Chiles',2);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (35,'Guatuso',2);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (36,'Rio Cuarto',2);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (37,'Central',3);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (38,'Paraiso',3);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (39,'La Union',3);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (40,'Jimenez',3);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (41,'Turrialba',3);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (42,'Alvarado',3);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (43,'Oreamuno',3);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (44,'El Guarco',3);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (45,'Central',4);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (46,'Barva',4);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (47,'Santo Domingo',4);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (48,'Santa Barbara',4);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (49,'San Rafael',4);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (50,'San Isidro',4);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (51,'Belen',4);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (52,'Flores',4);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (53,'San Pablo',4);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (54,'Sarapiqui',4);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (55,'Liberia',5);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (56,'Nicoya',5);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (57,'Santa Cruz',5);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (58,'Bagaces',5);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (59,'Carrillo',5);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (60,'Canas',5);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (61,'Abangares',5);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (62,'Tilaran',5);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (63,'Nandayure',5);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (64,'La Cruz',5);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (65,'Hojancha',5);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (66,'Central',6);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (67,'Esparza',6);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (68,'Buenos Aires',6);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (69,'Montes De Oro',6);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (70,'Osa',6);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (71,'Quepos',6);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (72,'Golfito',6);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (73,'Coto Brus',6);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (74,'Parrita',6);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (75,'Corredores',6);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (76,'Garabito',6);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (77,'Central',7);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (78,'Pococi',7);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (79,'Siquirres',7);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (80,'Talamanca',7);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (81,'Matina',7);
Insert into PRIVE.CANTON (ID_CANTON,NOMBRE_CANT,ID_PROVINCIA) values (82,'Guacimo',7);
REM INSERTING into PRIVE.CLIENTES
SET DEFINE OFF;
Insert into PRIVE.CLIENTES (ID_CLIENTE,METODOPAGO,ID_USUARIO) values (1,'Tarjeta',1);
Insert into PRIVE.CLIENTES (ID_CLIENTE,METODOPAGO,ID_USUARIO) values (2,'Efectivo',2);
Insert into PRIVE.CLIENTES (ID_CLIENTE,METODOPAGO,ID_USUARIO) values (3,'Tarjeta',3);
Insert into PRIVE.CLIENTES (ID_CLIENTE,METODOPAGO,ID_USUARIO) values (4,'Efectivo',4);
Insert into PRIVE.CLIENTES (ID_CLIENTE,METODOPAGO,ID_USUARIO) values (5,'Efectivo',5);
Insert into PRIVE.CLIENTES (ID_CLIENTE,METODOPAGO,ID_USUARIO) values (6,'Tarjeta',6);
Insert into PRIVE.CLIENTES (ID_CLIENTE,METODOPAGO,ID_USUARIO) values (7,'Tarjeta',7);
REM INSERTING into PRIVE.DEPARTAMENTOS
SET DEFINE OFF;
Insert into PRIVE.DEPARTAMENTOS (ID_DEPARTAMENTO,NOMBRE_DEP) values (1,'Personal Administrativo');
Insert into PRIVE.DEPARTAMENTOS (ID_DEPARTAMENTO,NOMBRE_DEP) values (2,'Personal de Piso');
Insert into PRIVE.DEPARTAMENTOS (ID_DEPARTAMENTO,NOMBRE_DEP) values (3,'Personal de Cocina');
Insert into PRIVE.DEPARTAMENTOS (ID_DEPARTAMENTO,NOMBRE_DEP) values (4,'Bartenders');
Insert into PRIVE.DEPARTAMENTOS (ID_DEPARTAMENTO,NOMBRE_DEP) values (5,'Personal de Entrega');
REM INSERTING into PRIVE.DIRECCION
SET DEFINE OFF;
Insert into PRIVE.DIRECCION (ID_DIRECCION,DESC_DIRECCION,ID_DISTRITO) values (1,'Contiguo a Residencial Bilbao',1);
Insert into PRIVE.DIRECCION (ID_DIRECCION,DESC_DIRECCION,ID_DISTRITO) values (2,'Central 150m oeste del Liceo Monse�or Rub�n',2);
Insert into PRIVE.DIRECCION (ID_DIRECCION,DESC_DIRECCION,ID_DISTRITO) values (3,'300m De La Iglesia De Santiago Ap�stol',3);
Insert into PRIVE.DIRECCION (ID_DIRECCION,DESC_DIRECCION,ID_DISTRITO) values (4,'400m Oeste 25 Sur De La Iglesia Mercedes',4);
Insert into PRIVE.DIRECCION (ID_DIRECCION,DESC_DIRECCION,ID_DISTRITO) values (5,'125 Sur De La Capilla',5);
Insert into PRIVE.DIRECCION (ID_DIRECCION,DESC_DIRECCION,ID_DISTRITO) values (6,'Frente al Centro Comercial MonteVerde',6);
Insert into PRIVE.DIRECCION (ID_DIRECCION,DESC_DIRECCION,ID_DISTRITO) values (7,'100m De La Municipalidad De Rio Blanco',7);
Insert into PRIVE.DIRECCION (ID_DIRECCION,DESC_DIRECCION,ID_DISTRITO) values (8,'100m Este Del Mega Outlet Extremos',1);
Insert into PRIVE.DIRECCION (ID_DIRECCION,DESC_DIRECCION,ID_DISTRITO) values (9,'100m Sur De la Guacamaya',1);
Insert into PRIVE.DIRECCION (ID_DIRECCION,DESC_DIRECCION,ID_DISTRITO) values (10,'100m Norte Del Pali San Sebastian',1);
Insert into PRIVE.DIRECCION (ID_DIRECCION,DESC_DIRECCION,ID_DISTRITO) values (11,'100m Oeste de la Escuela Central',1);
Insert into PRIVE.DIRECCION (ID_DIRECCION,DESC_DIRECCION,ID_DISTRITO) values (12,'100m Sur del Colegio Tecnico Profesional',1);
Insert into PRIVE.DIRECCION (ID_DIRECCION,DESC_DIRECCION,ID_DISTRITO) values (13,'100m Del Condominio Luis Alberto',1);
Insert into PRIVE.DIRECCION (ID_DIRECCION,DESC_DIRECCION,ID_DISTRITO) values (14,'300m Norte de la Rotonda de Paso',1);
REM INSERTING into PRIVE.DISTRITO
SET DEFINE OFF;
Insert into PRIVE.DISTRITO (ID_DISTRITO,NOMBRE_DIST,ID_CANTON) values (1,'San Sebastian',1);
Insert into PRIVE.DISTRITO (ID_DISTRITO,NOMBRE_DIST,ID_CANTON) values (2,'Desamparados',2);
Insert into PRIVE.DISTRITO (ID_DISTRITO,NOMBRE_DIST,ID_CANTON) values (3,'Oriental',37);
Insert into PRIVE.DISTRITO (ID_DISTRITO,NOMBRE_DIST,ID_CANTON) values (4,'Mercedes',45);
Insert into PRIVE.DISTRITO (ID_DISTRITO,NOMBRE_DIST,ID_CANTON) values (5,'Mayorga',55);
Insert into PRIVE.DISTRITO (ID_DISTRITO,NOMBRE_DIST,ID_CANTON) values (6,'Monte Verde',66);
Insert into PRIVE.DISTRITO (ID_DISTRITO,NOMBRE_DIST,ID_CANTON) values (7,'Rio Blanco',77);
REM INSERTING into PRIVE.EMPLEADOS
SET DEFINE OFF;
Insert into PRIVE.EMPLEADOS (ID_EMPLEADO,SALARIO,TURNO,EMAIL,TELEFONO,FECHASNACIMIENTO,ID_USUARIO,ID_DEPARTAMENTO,ID_DIRECCION) values (1,650000,'Noche','luis@prive.com','76167788',to_date('25-JUL-95','DD-MON-RR'),8,1,8);
Insert into PRIVE.EMPLEADOS (ID_EMPLEADO,SALARIO,TURNO,EMAIL,TELEFONO,FECHASNACIMIENTO,ID_USUARIO,ID_DEPARTAMENTO,ID_DIRECCION) values (2,400000,'Noche','mario@prive.com','72156698',to_date('26-AUG-95','DD-MON-RR'),9,2,9);
Insert into PRIVE.EMPLEADOS (ID_EMPLEADO,SALARIO,TURNO,EMAIL,TELEFONO,FECHASNACIMIENTO,ID_USUARIO,ID_DEPARTAMENTO,ID_DIRECCION) values (3,400000,'Noche','maria@prive.com','71233448',to_date('26-AUG-95','DD-MON-RR'),10,2,10);
Insert into PRIVE.EMPLEADOS (ID_EMPLEADO,SALARIO,TURNO,EMAIL,TELEFONO,FECHASNACIMIENTO,ID_USUARIO,ID_DEPARTAMENTO,ID_DIRECCION) values (4,500000,'Noche','sofia@prive.com','72162377',to_date('17-FEB-94','DD-MON-RR'),11,3,11);
Insert into PRIVE.EMPLEADOS (ID_EMPLEADO,SALARIO,TURNO,EMAIL,TELEFONO,FECHASNACIMIENTO,ID_USUARIO,ID_DEPARTAMENTO,ID_DIRECCION) values (5,350000,'Noche','sergio@prive.com','85233588',to_date('26-MAY-70','DD-MON-RR'),12,4,12);
Insert into PRIVE.EMPLEADOS (ID_EMPLEADO,SALARIO,TURNO,EMAIL,TELEFONO,FECHASNACIMIENTO,ID_USUARIO,ID_DEPARTAMENTO,ID_DIRECCION) values (6,350000,'Noche','pablo@prive.com','65456666',to_date('12-JUL-92','DD-MON-RR'),13,4,13);
Insert into PRIVE.EMPLEADOS (ID_EMPLEADO,SALARIO,TURNO,EMAIL,TELEFONO,FECHASNACIMIENTO,ID_USUARIO,ID_DEPARTAMENTO,ID_DIRECCION) values (7,20000,'Noche','diana@prive.com','67898988',to_date('20-MAY-80','DD-MON-RR'),14,5,14);
REM INSERTING into PRIVE.FACTURAS
SET DEFINE OFF;
REM INSERTING into PRIVE.FACTURA_ORDEN
SET DEFINE OFF;
Insert into PRIVE.FACTURA_ORDEN (ID_FAC_ORD,ID_FACTURA,ID_ORDEN) values (1,1,1);
Insert into PRIVE.FACTURA_ORDEN (ID_FAC_ORD,ID_FACTURA,ID_ORDEN) values (2,1,1);
Insert into PRIVE.FACTURA_ORDEN (ID_FAC_ORD,ID_FACTURA,ID_ORDEN) values (3,1,1);
Insert into PRIVE.FACTURA_ORDEN (ID_FAC_ORD,ID_FACTURA,ID_ORDEN) values (4,1,1);
Insert into PRIVE.FACTURA_ORDEN (ID_FAC_ORD,ID_FACTURA,ID_ORDEN) values (5,1,4);
Insert into PRIVE.FACTURA_ORDEN (ID_FAC_ORD,ID_FACTURA,ID_ORDEN) values (6,1,5);
Insert into PRIVE.FACTURA_ORDEN (ID_FAC_ORD,ID_FACTURA,ID_ORDEN) values (7,1,7);
Insert into PRIVE.FACTURA_ORDEN (ID_FAC_ORD,ID_FACTURA,ID_ORDEN) values (8,2,10);
Insert into PRIVE.FACTURA_ORDEN (ID_FAC_ORD,ID_FACTURA,ID_ORDEN) values (9,2,9);
Insert into PRIVE.FACTURA_ORDEN (ID_FAC_ORD,ID_FACTURA,ID_ORDEN) values (10,2,11);
Insert into PRIVE.FACTURA_ORDEN (ID_FAC_ORD,ID_FACTURA,ID_ORDEN) values (11,2,12);
Insert into PRIVE.FACTURA_ORDEN (ID_FAC_ORD,ID_FACTURA,ID_ORDEN) values (12,3,6);
Insert into PRIVE.FACTURA_ORDEN (ID_FAC_ORD,ID_FACTURA,ID_ORDEN) values (13,4,10);
Insert into PRIVE.FACTURA_ORDEN (ID_FAC_ORD,ID_FACTURA,ID_ORDEN) values (14,4,8);
Insert into PRIVE.FACTURA_ORDEN (ID_FAC_ORD,ID_FACTURA,ID_ORDEN) values (14,5,1);
Insert into PRIVE.FACTURA_ORDEN (ID_FAC_ORD,ID_FACTURA,ID_ORDEN) values (14,5,4);
REM INSERTING into PRIVE.INVENTARIO
SET DEFINE OFF;
Insert into PRIVE.INVENTARIO (ID_INVENTARIO,DESCRIPCION,PRECIO,CANTIDAD,ID_PROVEEDOR) values (1,'Imperial',700,1000,4);
Insert into PRIVE.INVENTARIO (ID_INVENTARIO,DESCRIPCION,PRECIO,CANTIDAD,ID_PROVEEDOR) values (2,'Imperial Ultra',700,1000,4);
Insert into PRIVE.INVENTARIO (ID_INVENTARIO,DESCRIPCION,PRECIO,CANTIDAD,ID_PROVEEDOR) values (3,'Imperial Light',700,1000,4);
Insert into PRIVE.INVENTARIO (ID_INVENTARIO,DESCRIPCION,PRECIO,CANTIDAD,ID_PROVEEDOR) values (4,'Pilsen',700,1000,4);
Insert into PRIVE.INVENTARIO (ID_INVENTARIO,DESCRIPCION,PRECIO,CANTIDAD,ID_PROVEEDOR) values (5,'Pilsen 6.0',700,1000,4);
Insert into PRIVE.INVENTARIO (ID_INVENTARIO,DESCRIPCION,PRECIO,CANTIDAD,ID_PROVEEDOR) values (6,'Smirnoff Black',750,600,6);
Insert into PRIVE.INVENTARIO (ID_INVENTARIO,DESCRIPCION,PRECIO,CANTIDAD,ID_PROVEEDOR) values (7,'Smirnoff Guarana',750,600,6);
Insert into PRIVE.INVENTARIO (ID_INVENTARIO,DESCRIPCION,PRECIO,CANTIDAD,ID_PROVEEDOR) values (8,'Smirnoff Green',750,600,6);
Insert into PRIVE.INVENTARIO (ID_INVENTARIO,DESCRIPCION,PRECIO,CANTIDAD,ID_PROVEEDOR) values (9,'Porcion Papas Corte Recto',400,400,2);
Insert into PRIVE.INVENTARIO (ID_INVENTARIO,DESCRIPCION,PRECIO,CANTIDAD,ID_PROVEEDOR) values (10,'Porcion Papas en Gajo',420,400,2);
Insert into PRIVE.INVENTARIO (ID_INVENTARIO,DESCRIPCION,PRECIO,CANTIDAD,ID_PROVEEDOR) values (11,'Kg de Carne de Res',3500,100,1);
Insert into PRIVE.INVENTARIO (ID_INVENTARIO,DESCRIPCION,PRECIO,CANTIDAD,ID_PROVEEDOR) values (12,'Kg de Pollo Deshuesado',3000,100,1);
REM INSERTING into PRIVE.ORDEN
SET DEFINE OFF;
Insert into PRIVE.ORDEN (ID_ORDEN,DESCRIPCION,PRECIO,ID_INVENTARIO) values (1,'Imperial',1500,1);
Insert into PRIVE.ORDEN (ID_ORDEN,DESCRIPCION,PRECIO,ID_INVENTARIO) values (2,'Imperial Light',1500,3);
Insert into PRIVE.ORDEN (ID_ORDEN,DESCRIPCION,PRECIO,ID_INVENTARIO) values (3,'Imperial Ultra',1500,2);
Insert into PRIVE.ORDEN (ID_ORDEN,DESCRIPCION,PRECIO,ID_INVENTARIO) values (4,'Pilsen',1500,4);
Insert into PRIVE.ORDEN (ID_ORDEN,DESCRIPCION,PRECIO,ID_INVENTARIO) values (5,'Pilsen 6.0',1500,5);
Insert into PRIVE.ORDEN (ID_ORDEN,DESCRIPCION,PRECIO,ID_INVENTARIO) values (6,'Smirnoff Black',2000,6);
Insert into PRIVE.ORDEN (ID_ORDEN,DESCRIPCION,PRECIO,ID_INVENTARIO) values (7,'Smirnoff Guarana',2000,7);
Insert into PRIVE.ORDEN (ID_ORDEN,DESCRIPCION,PRECIO,ID_INVENTARIO) values (8,'Smirnoff Green',2000,8);
Insert into PRIVE.ORDEN (ID_ORDEN,DESCRIPCION,PRECIO,ID_INVENTARIO) values (9,'Orden de Papas en Gajo Peque�as',2500,10);
Insert into PRIVE.ORDEN (ID_ORDEN,DESCRIPCION,PRECIO,ID_INVENTARIO) values (10,'Orden de Papas Medianas',3000,9);
Insert into PRIVE.ORDEN (ID_ORDEN,DESCRIPCION,PRECIO,ID_INVENTARIO) values (11,'Pincho de Carne de Res',3000,11);
Insert into PRIVE.ORDEN (ID_ORDEN,DESCRIPCION,PRECIO,ID_INVENTARIO) values (12,'Pincho de Pollo',3000,12);
REM INSERTING into PRIVE.PROVEEDORES
SET DEFINE OFF;
Insert into PRIVE.PROVEEDORES (ID_PROVEEDOR,NOMBRE_PROV,EMAIL,FECHA_INICIO,HORARIO,TELEFONO,ID_DIRECCION) values (1,'Pipasa','contactoclientes@pipasa.com',to_date('08-OCT-21','DD-MON-RR'),'De 8am-5pm','11111111',1);
Insert into PRIVE.PROVEEDORES (ID_PROVEEDOR,NOMBRE_PROV,EMAIL,FECHA_INICIO,HORARIO,TELEFONO,ID_DIRECCION) values (2,'PatataS','contactoclientes@papataS.com',to_date('08-DEC-21','DD-MON-RR'),'De 8am-5pm','22222222',2);
Insert into PRIVE.PROVEEDORES (ID_PROVEEDOR,NOMBRE_PROV,EMAIL,FECHA_INICIO,HORARIO,TELEFONO,ID_DIRECCION) values (3,'CocaCola','contactoclientes@CocaCola.com',to_date('08-DEC-21','DD-MON-RR'),'De 6am-6pm','333333333',3);
Insert into PRIVE.PROVEEDORES (ID_PROVEEDOR,NOMBRE_PROV,EMAIL,FECHA_INICIO,HORARIO,TELEFONO,ID_DIRECCION) values (4,'Florencia','contactoclientes@Florencia.com',to_date('21-DEC-21','DD-MON-RR'),'De 6am-6pm','44444444',4);
Insert into PRIVE.PROVEEDORES (ID_PROVEEDOR,NOMBRE_PROV,EMAIL,FECHA_INICIO,HORARIO,TELEFONO,ID_DIRECCION) values (5,'Pricesmart','contactoclientes@Pricesmart.com',to_date('30-JAN-21','DD-MON-RR'),'De 8am-10pm','55555555',5);
Insert into PRIVE.PROVEEDORES (ID_PROVEEDOR,NOMBRE_PROV,EMAIL,FECHA_INICIO,HORARIO,TELEFONO,ID_DIRECCION) values (6,'Smirnoff','contactoclientes@Smirnoff.com',to_date('21-OCT-21','DD-MON-RR'),'De 6am-6pm','66666666',6);
Insert into PRIVE.PROVEEDORES (ID_PROVEEDOR,NOMBRE_PROV,EMAIL,FECHA_INICIO,HORARIO,TELEFONO,ID_DIRECCION) values (7,'SonidoEV','contactoclientes@SonidoEV.com',to_date('25-DEC-21','DD-MON-RR'),'De 8am-12pm','77777777',7);
REM INSERTING into PRIVE.PROVINCIA
SET DEFINE OFF;
Insert into PRIVE.PROVINCIA (ID_PROVINCIA,NOMBRE_PROV) values (1,'San Jos�');
Insert into PRIVE.PROVINCIA (ID_PROVINCIA,NOMBRE_PROV) values (2,'Alajuela');
Insert into PRIVE.PROVINCIA (ID_PROVINCIA,NOMBRE_PROV) values (3,'Cartago');
Insert into PRIVE.PROVINCIA (ID_PROVINCIA,NOMBRE_PROV) values (4,'Heredia');
Insert into PRIVE.PROVINCIA (ID_PROVINCIA,NOMBRE_PROV) values (5,'Guanacaste');
Insert into PRIVE.PROVINCIA (ID_PROVINCIA,NOMBRE_PROV) values (6,'Puntarenas');
Insert into PRIVE.PROVINCIA (ID_PROVINCIA,NOMBRE_PROV) values (7,'Lim�n');
REM INSERTING into PRIVE.USUARIOS
SET DEFINE OFF;
Insert into PRIVE.USUARIOS (ID_USUARIO,NOMBRE1,NOMBRE2,APELLIDO1,APELLIDO2,CEDULAU) values (1,'Miguel','Angel','Porras','Retana','123456789');
Insert into PRIVE.USUARIOS (ID_USUARIO,NOMBRE1,NOMBRE2,APELLIDO1,APELLIDO2,CEDULAU) values (2,'Jimena','Maria','Mora','Vasquez','123456781');
Insert into PRIVE.USUARIOS (ID_USUARIO,NOMBRE1,NOMBRE2,APELLIDO1,APELLIDO2,CEDULAU) values (3,'David',null,'Gonzalez','Mena','123456782');
Insert into PRIVE.USUARIOS (ID_USUARIO,NOMBRE1,NOMBRE2,APELLIDO1,APELLIDO2,CEDULAU) values (4,'Juan','Pablo','Herrera','Sol�s','123456783');
Insert into PRIVE.USUARIOS (ID_USUARIO,NOMBRE1,NOMBRE2,APELLIDO1,APELLIDO2,CEDULAU) values (5,'Pedro','Jesus','Ortiz',null,'123456784');
Insert into PRIVE.USUARIOS (ID_USUARIO,NOMBRE1,NOMBRE2,APELLIDO1,APELLIDO2,CEDULAU) values (6,'Martin','De la Hoya','Rojas','Miranda','123456785');
Insert into PRIVE.USUARIOS (ID_USUARIO,NOMBRE1,NOMBRE2,APELLIDO1,APELLIDO2,CEDULAU) values (7,'Esteban',null,'Hernandez','Smith','123456786');
Insert into PRIVE.USUARIOS (ID_USUARIO,NOMBRE1,NOMBRE2,APELLIDO1,APELLIDO2,CEDULAU) values (8,'Luis',null,'Barrantes','Corrales','123456787');
Insert into PRIVE.USUARIOS (ID_USUARIO,NOMBRE1,NOMBRE2,APELLIDO1,APELLIDO2,CEDULAU) values (9,'Mario','Antonio','Guerrero','Urbina','123456788');
Insert into PRIVE.USUARIOS (ID_USUARIO,NOMBRE1,NOMBRE2,APELLIDO1,APELLIDO2,CEDULAU) values (10,'Maria','Luisa','Credidio','Mercedes','123456794');
Insert into PRIVE.USUARIOS (ID_USUARIO,NOMBRE1,NOMBRE2,APELLIDO1,APELLIDO2,CEDULAU) values (11,'Sofia','Del Carmen','Montoya','Barrientos','123456790');
Insert into PRIVE.USUARIOS (ID_USUARIO,NOMBRE1,NOMBRE2,APELLIDO1,APELLIDO2,CEDULAU) values (12,'Jose','Adrian','Mora','Jimenez','123456789');
Insert into PRIVE.USUARIOS (ID_USUARIO,NOMBRE1,NOMBRE2,APELLIDO1,APELLIDO2,CEDULAU) values (13,'Pablo',null,'Lopez','Smith','123456792');
Insert into PRIVE.USUARIOS (ID_USUARIO,NOMBRE1,NOMBRE2,APELLIDO1,APELLIDO2,CEDULAU) values (14,'Diana','Ximena','Diaz','Solano','123456793');
--------------------------------------------------------
--  DDL for Index XPKCANTON
--------------------------------------------------------

  CREATE UNIQUE INDEX "PRIVE"."XPKCANTON" ON "PRIVE"."CANTON" ("ID_CANTON", "ID_PROVINCIA")
--------------------------------------------------------
--  DDL for Index XPKCLIENTES
--------------------------------------------------------

  CREATE UNIQUE INDEX "PRIVE"."XPKCLIENTES" ON "PRIVE"."CLIENTES" ("ID_CLIENTE", "ID_USUARIO")
--------------------------------------------------------
--  DDL for Index XPKDEPARTAMENTOS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PRIVE"."XPKDEPARTAMENTOS" ON "PRIVE"."DEPARTAMENTOS" ("ID_DEPARTAMENTO")
--------------------------------------------------------
--  DDL for Index XPKDIRECCION
--------------------------------------------------------

  CREATE UNIQUE INDEX "PRIVE"."XPKDIRECCION" ON "PRIVE"."DIRECCION" ("ID_DIRECCION", "ID_DISTRITO")
--------------------------------------------------------
--  DDL for Index XPKDISTRITO
--------------------------------------------------------

  CREATE UNIQUE INDEX "PRIVE"."XPKDISTRITO" ON "PRIVE"."DISTRITO" ("ID_DISTRITO", "ID_CANTON")
--------------------------------------------------------
--  DDL for Index XPKEMPLEADOS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PRIVE"."XPKEMPLEADOS" ON "PRIVE"."EMPLEADOS" ("ID_EMPLEADO", "ID_USUARIO", "ID_DEPARTAMENTO", "ID_DIRECCION")
--------------------------------------------------------
--  DDL for Index XPKINVENTARIO
--------------------------------------------------------

  CREATE UNIQUE INDEX "PRIVE"."XPKINVENTARIO" ON "PRIVE"."INVENTARIO" ("ID_INVENTARIO", "ID_PROVEEDOR")
--------------------------------------------------------
--  DDL for Index XPKORDEN
--------------------------------------------------------

  CREATE UNIQUE INDEX "PRIVE"."XPKORDEN" ON "PRIVE"."ORDEN" ("ID_ORDEN", "ID_INVENTARIO")
--------------------------------------------------------
--  DDL for Index XPKPROVEEDORES
--------------------------------------------------------

  CREATE UNIQUE INDEX "PRIVE"."XPKPROVEEDORES" ON "PRIVE"."PROVEEDORES" ("ID_PROVEEDOR", "ID_DIRECCION")
--------------------------------------------------------
--  DDL for Index XPKPROVINCIA
--------------------------------------------------------

  CREATE UNIQUE INDEX "PRIVE"."XPKPROVINCIA" ON "PRIVE"."PROVINCIA" ("ID_PROVINCIA")
--------------------------------------------------------
--  DDL for Index XPKUSUARIOS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PRIVE"."XPKUSUARIOS" ON "PRIVE"."USUARIOS" ("ID_USUARIO")
--------------------------------------------------------
--  DDL for Trigger TGR_ADD_PK
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "PRIVE"."TGR_ADD_PK" 
BEFORE INSERT ON USUARIOS
                     FOR EACH ROW
                            BEGIN
                              SELECT SECUENCIA_USUARIO.NEXTVAL
                              INTO   :NEW.ID_USUARIO
                              FROM   DUAL;
                     END;
ALTER TRIGGER "PRIVE"."TGR_ADD_PK" ENABLE
--------------------------------------------------------
--  DDL for Procedure ACTUALIZAR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "PRIVE"."ACTUALIZAR" (usuarioID IN USUARIOS.ID_USUARIO%TYPE, name1 IN USUARIOS.NOMBRE1%TYPE, name2 IN USUARIOS.NOMBRE2%TYPE,lastname1 IN USUARIOS.APELLIDO1%TYPE,lastname2 IN USUARIOS.APELLIDO2%TYPE,cedu IN USUARIOS.CEDULAU%TYPE) AS
BEGIN
       UPDATE USUARIOS SET NOMBRE1=name1, NOMBRE2=name2, APELLIDO1=lastname1, APELLIDO2=lastname2, CEDULAU=cedu WHERE ID_USUARIO=usuarioID;
       COMMIT;
END;
--------------------------------------------------------
--  DDL for Procedure ELIMINAR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "PRIVE"."ELIMINAR" (PARAMETRO IN USUARIOS.ID_USUARIO%TYPE) AS
BEGIN
       DELETE FROM USUARIOS WHERE ID_USUARIO = PARAMETRO;
       COMMIT;
END;
--------------------------------------------------------
--  DDL for Procedure GETEMPLEADOS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "PRIVE"."GETEMPLEADOS" (p_recordset OUT SYS_REFCURSOR)
AS
BEGIN
 OPEN p_recordset FOR
   SELECT NOMBRE1, APELLIDO1, SALARIO, TURNO, TELEFONO
   FROM   USUARIOS U
   INNER JOIN EMPLEADOS E ON
   E.ID_USUARIO = U.ID_USUARIO;
END;
--------------------------------------------------------
--  DDL for Procedure GETINVENTARIO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "PRIVE"."GETINVENTARIO" (p_recordset OUT SYS_REFCURSOR)
AS
BEGIN
 OPEN p_recordset FOR
   SELECT DESCRIPCION, PRECIO, CANTIDAD
   FROM   INVENTARIO;
 EXCEPTION 
    WHEN NO_DATA_FOUND THEN 
        dbms_output.put_line('File has no data');
END;
--------------------------------------------------------
--  DDL for Procedure GETORDEN
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "PRIVE"."GETORDEN" (p_recordset OUT SYS_REFCURSOR)
AS
BEGIN
 OPEN p_recordset FOR
   SELECT DESCRIPCION, PRECIO
   FROM   ORDEN;
 EXCEPTION 
    WHEN NO_DATA_FOUND THEN 
        dbms_output.put_line('File has no data');
END;
--------------------------------------------------------
--  DDL for Procedure GETPROVEEDORES
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "PRIVE"."GETPROVEEDORES" (p_recordset OUT SYS_REFCURSOR)
AS
BEGIN
 OPEN p_recordset FOR
   SELECT NOMBRE_PROV, EMAIL, FECHA_INICIO, HORARIO, TELEFONO
   FROM   PROVEEDORES;
END;
--------------------------------------------------------
--  DDL for Package PKG_CREATE_USER
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE PACKAGE "PRIVE"."PKG_CREATE_USER" 
    IS
        PROCEDURE USER_DATA(NEW_NOMBRE1 VARCHAR2, NEW_NOMBRE2 VARCHAR2, NEW_APELLIDO1 VARCHAR2, NEW_APELLIDO2 VARCHAR2, NEW_CEDULAU VARCHAR2);
    END;
--------------------------------------------------------
--  DDL for Package Body PKG_CREATE_USER
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE PACKAGE BODY "PRIVE"."PKG_CREATE_USER" 
    IS
        PROCEDURE USER_DATA(NEW_NOMBRE1 VARCHAR2, NEW_NOMBRE2 VARCHAR2, NEW_APELLIDO1 VARCHAR2, NEW_APELLIDO2 VARCHAR2, NEW_CEDULAU VARCHAR2)
        IS
        BEGIN  
            INSERT INTO USUARIOS (NOMBRE1,NOMBRE2,APELLIDO1,APELLIDO2,CEDULAU ) VALUES (NEW_NOMBRE1, NEW_NOMBRE2, NEW_APELLIDO1, NEW_APELLIDO2, NEW_CEDULAU);
      END;
END;
--------------------------------------------------------
--  DDL for Function TOTALUSUARIOS
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "PRIVE"."TOTALUSUARIOS" 
RETURN number
IS
   total number(2) := 0;
BEGIN
       SELECT count(*) into total FROM USUARIOS;
       RETURN total;
END;
--------------------------------------------------------
--  DDL for Function ULTIMOUSUARIO
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "PRIVE"."ULTIMOUSUARIO" 
RETURN VARCHAR2
IS
   IDENTIDAD VARCHAR2(100);
   ID number;
BEGIN
       SELECT MAX(ID_USUARIO) into ID FROM USUARIOS;
        SELECT NOMBRE1|| ' ' || APELLIDO1 || ' ' || CEDULAU into IDENTIDAD FROM USUARIOS WHERE ID_USUARIO=ID;
       RETURN IDENTIDAD;
END;
--------------------------------------------------------
--  Constraints for Table CANTON
--------------------------------------------------------

  ALTER TABLE "PRIVE"."CANTON" MODIFY ("ID_CANTON" NOT NULL ENABLE)
  ALTER TABLE "PRIVE"."CANTON" MODIFY ("NOMBRE_CANT" NOT NULL ENABLE)
  ALTER TABLE "PRIVE"."CANTON" MODIFY ("ID_PROVINCIA" NOT NULL ENABLE)
  ALTER TABLE "PRIVE"."CANTON" ADD CONSTRAINT "XPKCANTON" PRIMARY KEY ("ID_CANTON", "ID_PROVINCIA") USING INDEX "PRIVE"."XPKCANTON"  ENABLE
--------------------------------------------------------
--  Constraints for Table FACTURAS
--------------------------------------------------------

  ALTER TABLE "PRIVE"."FACTURAS" MODIFY ("ID_FACTURA" NOT NULL ENABLE)
  ALTER TABLE "PRIVE"."FACTURAS" MODIFY ("TOTAL" NOT NULL ENABLE)
  ALTER TABLE "PRIVE"."FACTURAS" MODIFY ("ID_EMPLEADO" NOT NULL ENABLE)
  ALTER TABLE "PRIVE"."FACTURAS" MODIFY ("ID_CLIENTE" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table EMPLEADOS
--------------------------------------------------------

  ALTER TABLE "PRIVE"."EMPLEADOS" MODIFY ("ID_EMPLEADO" NOT NULL ENABLE)
  ALTER TABLE "PRIVE"."EMPLEADOS" MODIFY ("SALARIO" NOT NULL ENABLE)
  ALTER TABLE "PRIVE"."EMPLEADOS" MODIFY ("TURNO" NOT NULL ENABLE)
  ALTER TABLE "PRIVE"."EMPLEADOS" MODIFY ("EMAIL" NOT NULL ENABLE)
  ALTER TABLE "PRIVE"."EMPLEADOS" MODIFY ("TELEFONO" NOT NULL ENABLE)
  ALTER TABLE "PRIVE"."EMPLEADOS" MODIFY ("FECHASNACIMIENTO" NOT NULL ENABLE)
  ALTER TABLE "PRIVE"."EMPLEADOS" MODIFY ("ID_USUARIO" NOT NULL ENABLE)
  ALTER TABLE "PRIVE"."EMPLEADOS" MODIFY ("ID_DEPARTAMENTO" NOT NULL ENABLE)
  ALTER TABLE "PRIVE"."EMPLEADOS" MODIFY ("ID_DIRECCION" NOT NULL ENABLE)
  ALTER TABLE "PRIVE"."EMPLEADOS" ADD CONSTRAINT "XPKEMPLEADOS" PRIMARY KEY ("ID_EMPLEADO", "ID_USUARIO", "ID_DEPARTAMENTO", "ID_DIRECCION") USING INDEX "PRIVE"."XPKEMPLEADOS"  ENABLE
--------------------------------------------------------
--  Constraints for Table DISTRITO
--------------------------------------------------------

  ALTER TABLE "PRIVE"."DISTRITO" MODIFY ("ID_DISTRITO" NOT NULL ENABLE)
  ALTER TABLE "PRIVE"."DISTRITO" MODIFY ("NOMBRE_DIST" NOT NULL ENABLE)
  ALTER TABLE "PRIVE"."DISTRITO" MODIFY ("ID_CANTON" NOT NULL ENABLE)
  ALTER TABLE "PRIVE"."DISTRITO" ADD CONSTRAINT "XPKDISTRITO" PRIMARY KEY ("ID_DISTRITO", "ID_CANTON") USING INDEX "PRIVE"."XPKDISTRITO"  ENABLE
--------------------------------------------------------
--  Constraints for Table DIRECCION
--------------------------------------------------------

  ALTER TABLE "PRIVE"."DIRECCION" MODIFY ("ID_DIRECCION" NOT NULL ENABLE)
  ALTER TABLE "PRIVE"."DIRECCION" MODIFY ("ID_DISTRITO" NOT NULL ENABLE)
  ALTER TABLE "PRIVE"."DIRECCION" ADD CONSTRAINT "XPKDIRECCION" PRIMARY KEY ("ID_DIRECCION", "ID_DISTRITO") USING INDEX "PRIVE"."XPKDIRECCION"  ENABLE
--------------------------------------------------------
--  Constraints for Table FACTURA_ORDEN
--------------------------------------------------------

  ALTER TABLE "PRIVE"."FACTURA_ORDEN" MODIFY ("ID_FAC_ORD" NOT NULL ENABLE)
  ALTER TABLE "PRIVE"."FACTURA_ORDEN" MODIFY ("ID_FACTURA" NOT NULL ENABLE)
  ALTER TABLE "PRIVE"."FACTURA_ORDEN" MODIFY ("ID_ORDEN" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table CLIENTES
--------------------------------------------------------

  ALTER TABLE "PRIVE"."CLIENTES" MODIFY ("ID_CLIENTE" NOT NULL ENABLE)
  ALTER TABLE "PRIVE"."CLIENTES" MODIFY ("METODOPAGO" NOT NULL ENABLE)
  ALTER TABLE "PRIVE"."CLIENTES" MODIFY ("ID_USUARIO" NOT NULL ENABLE)
  ALTER TABLE "PRIVE"."CLIENTES" ADD CONSTRAINT "XPKCLIENTES" PRIMARY KEY ("ID_CLIENTE", "ID_USUARIO") USING INDEX "PRIVE"."XPKCLIENTES"  ENABLE
--------------------------------------------------------
--  Constraints for Table PROVINCIA
--------------------------------------------------------

  ALTER TABLE "PRIVE"."PROVINCIA" MODIFY ("ID_PROVINCIA" NOT NULL ENABLE)
  ALTER TABLE "PRIVE"."PROVINCIA" MODIFY ("NOMBRE_PROV" NOT NULL ENABLE)
  ALTER TABLE "PRIVE"."PROVINCIA" ADD CONSTRAINT "XPKPROVINCIA" PRIMARY KEY ("ID_PROVINCIA") USING INDEX "PRIVE"."XPKPROVINCIA"  ENABLE
--------------------------------------------------------
--  Constraints for Table ORDEN
--------------------------------------------------------

  ALTER TABLE "PRIVE"."ORDEN" MODIFY ("ID_ORDEN" NOT NULL ENABLE)
  ALTER TABLE "PRIVE"."ORDEN" MODIFY ("DESCRIPCION" NOT NULL ENABLE)
  ALTER TABLE "PRIVE"."ORDEN" MODIFY ("PRECIO" NOT NULL ENABLE)
  ALTER TABLE "PRIVE"."ORDEN" MODIFY ("ID_INVENTARIO" NOT NULL ENABLE)
  ALTER TABLE "PRIVE"."ORDEN" ADD CONSTRAINT "XPKORDEN" PRIMARY KEY ("ID_ORDEN", "ID_INVENTARIO") USING INDEX "PRIVE"."XPKORDEN"  ENABLE
--------------------------------------------------------
--  Constraints for Table INVENTARIO
--------------------------------------------------------

  ALTER TABLE "PRIVE"."INVENTARIO" MODIFY ("ID_INVENTARIO" NOT NULL ENABLE)
  ALTER TABLE "PRIVE"."INVENTARIO" MODIFY ("DESCRIPCION" NOT NULL ENABLE)
  ALTER TABLE "PRIVE"."INVENTARIO" MODIFY ("PRECIO" NOT NULL ENABLE)
  ALTER TABLE "PRIVE"."INVENTARIO" MODIFY ("CANTIDAD" NOT NULL ENABLE)
  ALTER TABLE "PRIVE"."INVENTARIO" MODIFY ("ID_PROVEEDOR" NOT NULL ENABLE)
  ALTER TABLE "PRIVE"."INVENTARIO" ADD CONSTRAINT "XPKINVENTARIO" PRIMARY KEY ("ID_INVENTARIO", "ID_PROVEEDOR") USING INDEX "PRIVE"."XPKINVENTARIO"  ENABLE
--------------------------------------------------------
--  Constraints for Table USUARIOS
--------------------------------------------------------

  ALTER TABLE "PRIVE"."USUARIOS" MODIFY ("ID_USUARIO" NOT NULL ENABLE)
  ALTER TABLE "PRIVE"."USUARIOS" MODIFY ("NOMBRE1" NOT NULL ENABLE)
  ALTER TABLE "PRIVE"."USUARIOS" MODIFY ("APELLIDO1" NOT NULL ENABLE)
  ALTER TABLE "PRIVE"."USUARIOS" MODIFY ("CEDULAU" NOT NULL ENABLE)
  ALTER TABLE "PRIVE"."USUARIOS" ADD CONSTRAINT "XPKUSUARIOS" PRIMARY KEY ("ID_USUARIO") USING INDEX "PRIVE"."XPKUSUARIOS"  ENABLE
--------------------------------------------------------
--  Constraints for Table PROVEEDORES
--------------------------------------------------------

  ALTER TABLE "PRIVE"."PROVEEDORES" MODIFY ("ID_PROVEEDOR" NOT NULL ENABLE)
  ALTER TABLE "PRIVE"."PROVEEDORES" MODIFY ("NOMBRE_PROV" NOT NULL ENABLE)
  ALTER TABLE "PRIVE"."PROVEEDORES" MODIFY ("EMAIL" NOT NULL ENABLE)
  ALTER TABLE "PRIVE"."PROVEEDORES" MODIFY ("FECHA_INICIO" NOT NULL ENABLE)
  ALTER TABLE "PRIVE"."PROVEEDORES" MODIFY ("HORARIO" NOT NULL ENABLE)
  ALTER TABLE "PRIVE"."PROVEEDORES" MODIFY ("TELEFONO" NOT NULL ENABLE)
  ALTER TABLE "PRIVE"."PROVEEDORES" MODIFY ("ID_DIRECCION" NOT NULL ENABLE)
  ALTER TABLE "PRIVE"."PROVEEDORES" ADD CONSTRAINT "XPKPROVEEDORES" PRIMARY KEY ("ID_PROVEEDOR", "ID_DIRECCION") USING INDEX "PRIVE"."XPKPROVEEDORES"  ENABLE
--------------------------------------------------------
--  Constraints for Table DEPARTAMENTOS
--------------------------------------------------------

  ALTER TABLE "PRIVE"."DEPARTAMENTOS" MODIFY ("ID_DEPARTAMENTO" NOT NULL ENABLE)
  ALTER TABLE "PRIVE"."DEPARTAMENTOS" MODIFY ("NOMBRE_DEP" NOT NULL ENABLE)
  ALTER TABLE "PRIVE"."DEPARTAMENTOS" ADD CONSTRAINT "XPKDEPARTAMENTOS" PRIMARY KEY ("ID_DEPARTAMENTO") USING INDEX "PRIVE"."XPKDEPARTAMENTOS"  ENABLE
--------------------------------------------------------
--  Ref Constraints for Table CANTON
--------------------------------------------------------

  ALTER TABLE "PRIVE"."CANTON" ADD CONSTRAINT "R_19" FOREIGN KEY ("ID_PROVINCIA") REFERENCES "PRIVE"."PROVINCIA" ("ID_PROVINCIA") ENABLE
--------------------------------------------------------
--  Ref Constraints for Table CLIENTES
--------------------------------------------------------

  ALTER TABLE "PRIVE"."CLIENTES" ADD CONSTRAINT "R_6" FOREIGN KEY ("ID_USUARIO") REFERENCES "PRIVE"."USUARIOS" ("ID_USUARIO") ENABLE
--------------------------------------------------------
--  Ref Constraints for Table EMPLEADOS
--------------------------------------------------------

  ALTER TABLE "PRIVE"."EMPLEADOS" ADD CONSTRAINT "R_7" FOREIGN KEY ("ID_USUARIO") REFERENCES "PRIVE"."USUARIOS" ("ID_USUARIO") ENABLE
  ALTER TABLE "PRIVE"."EMPLEADOS" ADD CONSTRAINT "R_8" FOREIGN KEY ("ID_DEPARTAMENTO") REFERENCES "PRIVE"."DEPARTAMENTOS" ("ID_DEPARTAMENTO") ENABLE
