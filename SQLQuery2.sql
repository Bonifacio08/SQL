--------------------------------------
if object_id('agenda') is not null
  drop table agenda;

 create table agenda(
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
 );

 exec sp_tables @table_owner='dbo';

 drop table agenda;
 ------------------------------------
 if object_id('agenda') is not null
  drop table agenda;

 create table agenda(
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
 );

 exec sp_tables @table_owner='dbo';

 exec sp_columns agenda;

 insert into agenda (apellido, nombre, domicilio, telefono)
  values ('Moreno','Alberto','Colon 123','4234567');
 insert into agenda (apellido,nombre, domicilio, telefono)
  values ('Torres','Juan','Avellaneda 135','4458787');

 select * from agenda;

 drop table agenda;
 ---------------------------------------------
  if object_id('peliculas') is not null
  drop table peliculas;

 create table peliculas(
  titulo varchar(20),
  actor varchar(20),
  duracion integer,
  cantidad integer
 );

 exec sp_columns peliculas;

 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mision imposible','Tom Cruise',180,3);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mision imposible 2','Tom Cruise',190,2);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mujer bonita','Julia Roberts',118,3);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Elsa y Fred','China Zorrilla',110,2);

 select titulo,actor from peliculas;

 select titulo,duracion from peliculas;

 select titulo,cantidad from peliculas;
 --------------------------------------------
 if object_id('agenda') is not null
  drop table agenda;

 create table agenda (
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
 );

 exec sp_columns agenda;

 insert into agenda(apellido,nombre,domicilio,telefono) values
  ('Acosta', 'Ana', 'Colon 123', '4234567');

 insert into agenda(apellido,nombre,domicilio,telefono) values
  ('Bustamante', 'Betina', 'Avellaneda 135', '4458787');

 insert into agenda(apellido,nombre,domicilio,telefono) values
  ('Lopez', 'Hector', 'Salta 545', '4887788'); 
 insert into agenda(apellido,nombre,domicilio,telefono) values
  ('Lopez', 'Luis', 'Urquiza 333', '4545454');
 insert into agenda(apellido,nombre,domicilio,telefono) values
  ('Lopez', 'Marisa', 'Urquiza 333', '4545454');

 select * from agenda;

 select * from agenda
  where nombre='Marisa';

 select nombre,domicilio from agenda
  where apellido='Lopez';

 select nombre from agenda
  where telefono='4545454';
  ------------------------------------------------------
 if object_id('agenda') is not null
  drop table agenda;

 create table agenda(
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
 );

 insert into agenda (apellido,nombre,domicilio,telefono)
   values('Alvarez','Alberto','Colon 123','4234567');
 insert into agenda (apellido,nombre,domicilio,telefono)
   values('Juarez','Juan','Avellaneda 135','4458787');
 insert into agenda (apellido,nombre,domicilio,telefono)
   values('Lopez','Maria','Urquiza 333','4545454');
 insert into agenda (apellido,nombre,domicilio,telefono)
   values('Lopez','Jose','Urquiza 333','4545454');
 insert into agenda (apellido,nombre,domicilio,telefono)
   values('Salas','Susana','Gral. Paz 1234','4123456');

 delete from agenda
 where nombre='Juan';

 delete from agenda
 where telefono='4545454';

 select * from agenda;

 delete from agenda;

 select * from agenda;
 --------------------------------------------------------------
  if object_id('agenda') is not null
  drop table agenda;

 create table agenda(
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
 );

 insert into agenda (apellido,nombre,domicilio,telefono)
  values ('Acosta','Alberto','Colon 123','4234567');
 insert into agenda (apellido,nombre,domicilio,telefono)
  values ('Juarez','Juan','Avellaneda 135','4458787');
 insert into agenda (apellido,nombre,domicilio,telefono)
  values ('Lopez','Maria','Urquiza 333','4545454');
 insert into agenda (apellido,nombre,domicilio,telefono)
  values ('Lopez','Jose','Urquiza 333','4545454');
 insert into agenda (apellido,nombre,domicilio,telefono)
  values ('Suarez','Susana','Gral. Paz 1234','4123456');

 select * from agenda;

 update agenda set nombre='Juan Jose'
  where nombre='Juan';

 select * from agenda;

 update agenda set telefono='4445566'
  where telefono='4545454';

 select * from agenda;

 update agenda set nombre='Juan Jose'
  where nombre='Juan';

 select * from agenda;
 -------------------------------------------------
 if object_id('medicamentos') is not null
   drop table medicamentos;

 create table medicamentos(
  codigo integer not null,
  nombre varchar(20) not null,
  laboratorio varchar(20),
  precio float,
  cantidad integer not null
 );

 exec sp_columns medicamentos;

 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(1,'Sertal gotas',null,null,100); 
 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(2,'Sertal compuesto',null,8.90,150);
 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(3,'Buscapina','Roche',null,200);

 select * from medicamentos;

 insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
  values(4,'Bayaspirina','',0,150);

 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(0,'','Bayer',15.60,0);

 select * from medicamentos;

 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(null,'Amoxidal jarabe','Bayer',25,120);

 select * from medicamentos
  where laboratorio is null;

 select * from medicamentos
  where laboratorio='';

 select * from medicamentos
  where precio is null;

 select * from medicamentos
  where precio=0;

 select * from medicamentos
  where laboratorio<>'';

 select * from medicamentos
  where laboratorio is not null;

 select * from medicamentos
  where precio<>0;

 select * from medicamentos
  where precio is not null;
  ----------------------------------------
  if object_id('medicamentos') is not null
   drop table medicamentos;

 create table medicamentos(
  codigo integer not null,
  nombre varchar(20) not null,
  laboratorio varchar(20),
  precio float,
  cantidad integer not null
 );

 exec sp_columns medicamentos;

 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(1,'Sertal gotas',null,null,100); 
 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(2,'Sertal compuesto',null,8.90,150);
 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(3,'Buscapina','Roche',null,200);

 select * from medicamentos;

 insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
  values(4,'Bayaspirina','',0,150);

 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(0,'','Bayer',15.60,0);

 select * from medicamentos;

 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(null,'Amoxidal jarabe','Bayer',25,120);

 select * from medicamentos
  where laboratorio is null;

 select * from medicamentos
  where laboratorio='';

 select * from medicamentos
  where precio is null;

 select * from medicamentos
  where precio=0;

 select * from medicamentos
  where laboratorio<>'';

 select * from medicamentos
  where laboratorio is not null;

 select * from medicamentos
  where precio<>0;

 select * from medicamentos
  where precio is not null;
  ----------------------------------------------
  if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int not null,
  titulo varchar(40) not null,
  autor varchar(20),
  editorial varchar(15),
  primary key(codigo)
 );

 insert into libros (codigo,titulo,autor,editorial)
  values (1,'El aleph','Borges','Emece');
 insert into libros (codigo,titulo,autor,editorial)
  values (2,'Martin Fierro','Jose Hernandez','Planeta');
 insert into libros (codigo,titulo,autor,editorial)
  values (3,'Aprenda PHP','Mario Molina','Nuevo Siglo');

 insert into libros (codigo,titulo,autor,editorial)
  values (2,'Alicia en el pais de las maravillas','Lewis Carroll','Planeta');

 insert into libros (codigo,titulo,autor,editorial)
  values (null,'Alicia en el pais de las maravillas','Lewis Carroll','Planeta');

 update libros set codigo=1
  where titulo='Martin Fierro';
  -------------------------------------------------------
  if object_id('medicamentos') is not null
  drop table medicamentos;

 create table medicamentos(
  codigo int identity,
  nombre varchar(20) not null,
  laboratorio varchar(20),
  precio float,
  cantidad integer
 );

 exec sp_columns medicamentos;

 insert into medicamentos (nombre, laboratorio,precio,cantidad)
   values('Sertal','Roche',5.2,100);
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Buscapina','Roche',4.10,200);
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Amoxidal 500','Bayer',15.60,100);

 select * from medicamentos;

 insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
  values(4,'Amoxilina 500','Bayer',15.60,100);

 update medicamentos set codigo=5
  where nombre='Bayaspirina';

 delete from medicamentos
  where codigo=3;

 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Amoxilina 500','Bayer',15.60,100);

 select * from medicamentos;
 ---------------------------------------------------
  if object_id('medicamentos') is not null
  drop table medicamentos;

 create table medicamentos(
  codigo integer identity(10,1),
  nombre varchar(20) not null,
  laboratorio varchar(20),
  precio float,
  cantidad integer
 );

 insert into medicamentos (nombre, laboratorio,precio,cantidad)
   values('Sertal','Roche',5.2,100);
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Buscapina','Roche',4.10,200);
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Amoxidal 500','Bayer',15.60,100);

 select * from medicamentos;

 insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
  values(4,'Amoxilina 500','Bayer',15.60,100);

  set identity_insert medicamentos on;

 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Amoxilina 500','Bayer',15.60,100);

 insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
  values(10,'Amoxilina 500','Bayer',15.60,100);

 select ident_seed('medicamentos');

 select ident_incr('medicamentos');
 ---------------------------------------------------------
 if object_id('alumnos') is not null
  drop table alumnos;

 create table alumnos(
  legajo int identity,
  documento varchar(8),
  nombre varchar(30),
  domicilio varchar(30)
 );

 insert into alumnos (documento,nombre,domicilio)
  values('22345345','Perez Mariana','Colon 234');
 insert into alumnos (documento,nombre,domicilio)
  values('23545345','Morales Marcos','Avellaneda 348');
 insert into alumnos (documento,nombre,domicilio)
  values('24356345','Gonzalez Analia','Caseros 444');
 insert into alumnos (documento,nombre,domicilio)
  values('25666777','Torres Ramiro','Dinamarca 209');

 delete from alumnos;

 insert into alumnos (documento,nombre,domicilio)
  values('22345345','Perez Mariana','Colon 234');
 insert into alumnos (documento,nombre,domicilio)
  values('23545345','Morales Marcos','Avellaneda 348');
 insert into alumnos (documento,nombre,domicilio)
  values('24356345','Gonzalez Analia','Caseros 444');
 insert into alumnos (documento,nombre,domicilio)
  values('25666777','Torres Ramiro','Dinamarca 209');
 select * from alumnos;

 truncate table alumnos;

 insert into alumnos (documento,nombre,domicilio)
  values('22345345','Perez Mariana','Colon 234');
 insert into alumnos (documento,nombre,domicilio)
  values('23545345','Morales Marcos','Avellaneda 348');
 insert into alumnos (documento,nombre,domicilio)
  values('24356345','Gonzalez Analia','Caseros 444');
 insert into alumnos (documento,nombre,domicilio)
  values('25666777','Torres Ramiro','Dinamarca 209');
 select * from alumnos;
 -------------------------------------------------------------
 if object_id('autos') is not null
  drop table autos;

 create table autos(
  patente char(6),
  marca varchar(20),
  modelo char(4),
  precio float,
  primary key (patente)
 );

 insert into autos
  values('ACD123','Fiat 128','1970',15000);
 insert into autos
  values('ACG234','Renault 11','1990',40000);
 insert into autos
  values('BCD333','Peugeot 505','1990',80000);
 insert into autos
  values('GCD123','Renault Clio','1990',70000);
 insert into autos
  values('BCC333','Renault Megane','1998',95000);
 insert into autos
  values('BVF543','Fiat 128','1975',20000);

 select * from autos
  where modelo='1990';
  -------------------------------------------------------
  if object_id('alumnos') is not null
  drop table alumnos;

 create table alumnos(
  apellido varchar(30),
  nombre varchar(30),
  documento char(8),
  domicilio varchar(30),
  fechaingreso datetime,
  fechanacimiento datetime
 );

 set dateformat 'dmy';

 insert into alumnos values('Gonzalez','Ana','22222222','Colon 123','10-08-1990','15/02/1972');

 insert into alumnos values('Juarez','Bernardo','25555555','Sucre 456','03-03-1991','15/02/1972');

 insert into alumnos values('Perez','Laura','26666666','Bulnes 345','03-03-91',null);

 insert into alumnos values('Lopez','Carlos','27777777','Sarmiento 1254','03-15-1990',null);

 select * from alumnos where fechaingreso<'1-1-91';

 select * from alumnos where fechanacimiento is null;

 insert into alumnos values('Rosas','Romina','28888888','Avellaneda 487','03151990',null);

 set dateformat 'mdy';

 insert into alumnos values('Lopez','Carlos','27777777','Sarmiento 1254','03-15-1990',null);
 ----------------------------------------------------------------------------
  if object_id('cuentas') is not null
  drop table cuentas;

 create table cuentas(
  numero int identity,
  documento char(8) not null,
  nombre varchar(30),
  saldo money
 );

 insert into cuentas
  values (1,'25666777','Juan Perez',2500.50);

 insert into cuentas
  values ('25666777','Juan Perez',2500.50);

 insert into cuentas (documento,saldo)
  values ('28999777',-5500);

 insert into cuentas (numero,documento,nombre,saldo)
  values (5,'28999777','Luis Lopez',34000);

 insert into cuentas (numero,documento,nombre)
  values (3344,'28999777','Luis Lopez',34000);

 insert into cuentas (nombre, saldo)
  values ('Luis Lopez',34000);

 select * from libros;
 ------------------------------------------------------------
  if object_id('visitantes') is not null
  drop table visitantes;

 create table visitantes(
  nombre varchar(30),
  edad tinyint,
  sexo char(1) default 'f',
  domicilio varchar(30),
  ciudad varchar(20) default 'Cordoba',
  telefono varchar(11),
  mail varchar(30) default 'no tiene',
  montocompra decimal (6,2)
 );

 exec sp_columns visitantes;

 insert into visitantes (nombre, domicilio, montocompra)
  values ('Susana Molina','Colon 123',59.80);
 insert into visitantes (nombre, edad, ciudad, mail)
  values ('Marcos Torres',29,'Carlos Paz','marcostorres@hotmail.com');
 select *from visitantes;

 insert into visitantes
  values ('Marcelo Morales',38,default,default,default,'4255232','marcelomorales@hotmail.com',default);

 insert into visitantes default values;

 select * from visitantes;
 -------------------------------------------------------------
 if object_id ('articulos') is not null
  drop table articulos;

 create table articulos(
  codigo int identity,
  nombre varchar(20),
  descripcion varchar(30),
  precio smallmoney,
  cantidad tinyint default 0,
  primary key (codigo)
 );

 insert into articulos (nombre, descripcion, precio,cantidad)
  values ('impresora','Epson Stylus C45',400.80,20);
 insert into articulos (nombre, descripcion, precio)
  values ('impresora','Epson Stylus C85',500);
 insert into articulos (nombre, descripcion, precio)
  values ('monitor','Samsung 14',800);
 insert into articulos (nombre, descripcion, precio,cantidad)
  values ('teclado','ingles Biswal',100,50);

 update articulos set precio=precio+(precio*0.15);

 select * from articulos;

 select nombre+','+descripcion
  from articulos;

 update articulos set cantidad=cantidad-5
 where nombre='teclado';

 select * from articulos;
 ---------------------------------------------------
  if object_id ('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40) not null,
  autor varchar(20) default 'Desconocido',
  editorial varchar(20),
  precio decimal(6,2),
  cantidad tinyint default 0,
  primary key (codigo)
 );

 insert into libros (titulo,autor,editorial,precio)
  values('El aleph','Borges','Emece',25);
 insert into libros
  values('Java en 10 minutos','Mario Molina','Siglo XXI',50.40,100);
 insert into libros (titulo,autor,editorial,precio,cantidad)
  values('Alicia en el pais de las maravillas','Lewis Carroll','Emece',15,50);

 select titulo, autor,editorial,precio,cantidad,
  precio*cantidad as 'monto total'
  from libros;

 select titulo,autor,precio,
  precio*0.1 as descuento,
  precio-(precio*0.1) as 'precio final'
  from libros
  where editorial='Emece';

 select titulo+'-'+autor as "T�tulo y autor"
  from libros;
  --------------------------------------------------------------
   if object_id ('empleados') is not null
  drop table empleados;

 create table empleados(
  nombre varchar(30) not null,
  apellido varchar(20) not null,
  documento char(8),
  fechanacimiento datetime,
  fechaingreso datetime,
  sueldo decimal(6,2),
  primary key(documento)
 );

 insert into empleados values('Ana','Acosta','22222222','1970/10/10','1995/05/05',228.50);
 insert into empleados values('Carlos','Caseres','25555555','1978/02/06','1998/05/05',309);
 insert into empleados values('Francisco','Garcia','26666666','1978/10/15','1998/10/02',250.68);
 insert into empleados values('Gabriela','Garcia','30000000','1985/10/25','2000/12/22',300.25);
 insert into empleados values('Luis','Lopez','31111111','1987/02/10','2000/08/21',350.98);

 select nombre+space(1)+upper(apellido) as nombre,
  stuff(documento,1,0,'DNI N� ') as documento,
  stuff(sueldo,1,0,'$ ') as sueldo from empleados;

 select documento, stuff(ceiling(sueldo),1,0,'$ ') from empleados;

 select nombre,apellido from empleados
  where datename(month,fechanacimiento)='october';

 select nombre,apellido from empleados
  where datepart(year,fechaingreso)=2000;
  ---------------------------------------------------
  if object_id('visitas') is not null
  drop table visitas;

 create table visitas (
  numero int identity,
  nombre varchar(30) default 'Anonimo',
  mail varchar(50),
  pais varchar (20),
  fecha datetime,
  primary key(numero)
);

 insert into visitas (nombre,mail,pais,fecha)
  values ('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina','2006-10-10 10:10');
 insert into visitas (nombre,mail,pais,fecha)
  values ('Gustavo Gonzalez','GustavoGGonzalez@hotmail.com','Chile','2006-10-10 21:30');
 insert into visitas (nombre,mail,pais,fecha)
  values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-10-11 15:45');
 insert into visitas (nombre,mail,pais,fecha)
  values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-10-12 08:15');
 insert into visitas (nombre,mail,pais,fecha)
  values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-09-12 20:45');
 insert into visitas (nombre,mail,pais,fecha)
  values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-12 16:20');
 insert into visitas (nombre,mail,pais,fecha)
  values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-15 16:25');

 select * from visitas
  order by fecha desc;

 select nombre,pais,datename(month,fecha)
  from visitas
  order by pais,datename(month,fecha) desc;

 select nombre,mail,
  datename(month,fecha) mes,
  datename(day,fecha) dia,
  datename(hour,fecha) hora
  from visitas
  order by 3,4,5;

 select mail, pais
  from visitas
  where datename(month,fecha)='October'
  order by 2;
  --------------------------------------------------------------------
  if object_id('medicamentos') is not null
  drop table medicamentos;

 create table medicamentos(
  codigo int identity,
  nombre varchar(20),
  laboratorio varchar(20),
  precio decimal(5,2),
  cantidad tinyint,
  primary key(codigo)
 );

 insert into medicamentos
  values('Sertal','Roche',5.2,100);
 insert into medicamentos
  values('Buscapina','Roche',4.10,200);
 insert into medicamentos
  values('Amoxidal 500','Bayer',15.60,100);
 insert into medicamentos
  values('Paracetamol 500','Bago',1.90,200);
 insert into medicamentos
  values('Bayaspirina','Bayer',2.10,150); 
 insert into medicamentos
  values('Amoxidal jarabe','Bayer',5.10,250); 

 select codigo,nombre
  from medicamentos
  where laboratorio='Roche' and
  precio<5;

 select * from medicamentos
  where laboratorio='Roche' or
  precio<5;

 select * from medicamentos
  where not laboratorio='Bayer' and
  cantidad=100;

 select * from medicamentos
  where laboratorio='Bayer' and
  not cantidad=100;

 delete from medicamentos
  where laboratorio='Bayer' and
  precio>10;

 update medicamentos set cantidad=200
  where laboratorio='Roche' and
  precio>5;

 delete from medicamentos
  where laboratorio='Bayer' or
  precio<3;
  -------------------------------------
  if object_id('vehiculos') is not null
  drop table vehiculos;

 if object_id ('RG_patente_patron') is not null
   drop rule RG_patente_patron;
 if object_id ('RG_horallegada') is not null
   drop rule RG_horallegada;
 if object_id ('RG_vehiculos_tipo') is not null
   drop rule RG_vehiculos_tipo;
 if object_id ('RG_vehiculos_tipo2') is not null
   drop rule RG_vehiculos_tipo2;
 if object_id ('RG_menor_fechaactual') is not null
   drop rule RG_menor_fechaactual;

 create table vehiculos(
  patente char(6) not null,
  tipo char(1),--'a'=auto, 'm'=moto
  horallegada datetime not null,
  horasalida datetime
 );

 insert into vehiculos values ('AAA111','a','1990-02-01 08:10',null);
 insert into vehiculos values ('BCD222','m','1990-02-01 08:10','1990-02-01 10:10');
 insert into vehiculos values ('BCD222','m','1990-02-01 12:00',null);
 insert into vehiculos values ('CC1234','a','1990-02-01 12:00',null);

 create rule RG_patente_patron
 as @patente like '[A-Z][A-Z][A-Z][0-9][0-9][0-9]';

 exec sp_help;

 exec sp_helpconstraint vehiculos;

 exec sp_bindrule RG_patente_patron,'vehiculos.patente';

 select * from empleados;

 insert into vehiculos values ('FGHIJK','a','1990-02-01 18:00',null);

 create rule RG_vehiculos_tipo
 as @tipo in ('a','m');

 exec sp_bindrule RG_vehiculos_tipo, 'vehiculos.tipo';

 update vehiculos set tipo='c' where patente='AAA111';

 create rule RG_vehiculos_tipo2
 as @tipo in ('a','c','m');

 exec sp_bindrule RG_vehiculos_tipo2, 'vehiculos.tipo';

 update vehiculos set tipo='c' where patente='AAA111';

 create rule RG_menor_fechaactual
 as @fecha <= getdate();

 exec sp_bindrule RG_menor_fechaactual, 'vehiculos.horallegada';
 exec sp_bindrule RG_menor_fechaactual, 'vehiculos.horasalida';

 insert into vehiculos values ('NOP555','a','1990-02-01 10:10','1990-02-01 08:30');

 alter table vehiculos
 add constraint CK_vehiculos_llegada_salida
 check(horallegada<=horasalida);

 delete from vehiculos where patente='NOP555';

 alter table vehiculos
 add constraint CK_vehiculos_llegada_salida
 check(horallegada<=horasalida);

 alter table vehiculos
 add constraint DF_vehiculos_tipo
 default 'b'
 for tipo;

 insert into vehiculos values ('STU456',default,'1990-02-01 10:10','1990-02-01 15:30');

 exec sp_helpconstraint vehiculos;
 --------------------------------------------------------------------
 if object_id('medicamentos') is not null
  drop table medicamentos;

 create table medicamentos(
  codigo int identity,
  nombre varchar(20),
  laboratorio varchar(20),
  precio decimal(6,2),
  cantidad tinyint,
  fechavencimiento datetime not null,
  primary key(codigo)
 );

 insert into medicamentos
  values('Sertal','Roche',5.2,1,'2015-02-01');
 insert into medicamentos 
  values('Buscapina','Roche',4.10,3,'2016-03-01');
 insert into medicamentos 
  values('Amoxidal 500','Bayer',15.60,100,'2017-05-01');
 insert into medicamentos
  values('Paracetamol 500','Bago',1.90,20,'2018-02-01');
 insert into medicamentos 
  values('Bayaspirina','Bayer',2.10,150,'2019-12-01'); 
 insert into medicamentos 
  values('Amoxidal jarabe','Bayer',5.10,250,'2020-10-01'); 

 select nombre,precio from medicamentos
  where laboratorio in ('Bayer','Bago');

 select * from medicamentos
  where cantidad between 1 and 5;

 select * from medicamentos
  where cantidad in (1,2,3,4,5);
  ---------------------------------------------------------
  if object_id ('clientes') is not null
  drop table clientes;

 if object_id ('VP_legajo_patron') is not null
   drop default VP_legajo_patron;
 if object_id ('RG_legajo_patron') is not null
   drop rule RG_legajo_patron;
 if object_id ('RG_legajo') is not null
   drop rule RG_legajo;
 if object_id ('VP_datodesconocido') is not null
   drop default VP_datodesconocido;
 if object_id ('VP_fechaactual') is not null
   drop default VP_fechaactual;

 create table clientes(
  legajo char(4),
  nombre varchar(30),
  domicilio varchar(30),
  ciudad varchar(15),
  provincia varchar(20) default 'Cordoba',
  fechaingreso datetime
 );

 create rule RG_legajo_patron
 as @valor like '[A-Z][A-Z][0-9][0-9]';

 exec sp_bindrule RG_legajo_patron,'clientes.legajo';

 create default VP_legajo_patron
  as 'AA00';

 exec sp_bindefault VP_legajo_patron,'clientes.legajo';

 create default VP_datodesconocido
  as '??';

 exec sp_bindefault VP_datodesconocido,'clientes.domicilio';

 exec sp_bindefault VP_datodesconocido,'clientes.ciudad';

 insert into clientes values('GF12','Ana Perez',default,default,'Cordoba','2001-10-10');
 select * from clientes;

 exec sp_bindefault VP_datodesconocido,'clientes.provincia';

 create default VP_fechaactual
  as getdate();

 exec sp_bindefault VP_fechaactual,'clientes.fechaingreso';

 insert into clientes default values;
 select * from clientes;

 exec sp_bindefault VP_datodesconocido,'clientes.fechaingreso';

 insert into clientes default values;

 create rule RG_legajo
  as @valor like 'B%';

 exec sp_bindrule RG_legajo,'clientes.legajo';

 insert into clientes values (default,'Luis Garcia','Colon 876','Cordoba','Cordoba','2001-10-10');
 ----------------------------------------------------------------------------------------
 if object_id ('libros') is not null
  drop table libros;

 if object_id ('VP_cero') is not null
   drop default VP_cero;
 if object_id ('VP_desconocido') is not null
   drop default VP_desconocido;
 if object_id ('RG_positivo') is not null
   drop rule RG_positivo;

 create table libros(
  codigo int identity,
  titulo varchar(40) not null,
  autor varchar(30),
  editorial varchar(20),
  precio decimal(5,2),
  cantidad smallint
 );

 create rule RG_positivo
 as @valor >=0;

 exec sp_bindrule RG_positivo,'libros.precio';

 exec sp_bindrule RG_positivo,'libros.cantidad';

 create default VP_cero
  as 0;

 exec sp_bindefault VP_cero,'libros.precio';

 exec sp_bindefault VP_cero,'libros.cantidad';

 create default VP_desconocido
  as 'Desconocido';

 exec sp_bindefault VP_desconocido,'libros.autor';

 exec sp_bindefault VP_desconocido,'libros.editorial';

 exec sp_help;

 exec sp_helpconstraint libros;

 insert into libros (titulo) values('Aprenda PHP');
 select * from libros;

 exec sp_unbindefault 'libros.precio';

 insert into libros (titulo) values('Matematica estas ahi');
 select * from libros;

 exec sp_helpconstraint libros;

 exec sp_help VP_cero;

 drop default VP_cero;

 exec sp_unbindefault 'libros.cantidad';

 exec sp_helpconstraint libros;

 exec sp_help VP_cero;

 drop default VP_cero;

 exec sp_help VP_cero;
 -----------------------------------------------------------------------
 if object_id('ventas') is not null
  drop table ventas;

 create table ventas(
  numero int identity,
  montocompra decimal(6,2),
  tipopago char(1),--c=contado, t=tarjeta
  vendedor varchar(30),
  primary key (numero)
 );

 insert into ventas
  values(100.50,'c','Marisa Perez');
 insert into ventas
  values(200,'c','Marisa Perez');
 insert into ventas
  values(50,'t','Juan Lopez');
 insert into ventas
  values(220,'c','Juan Lopez');
 insert into ventas
  values(150,'t','Marisa Perez');
 insert into ventas
  values(550.80,'c','Marisa Perez');
 insert into ventas
  values(300,'t','Juan Lopez');
 insert into ventas
  values(25,'c','Marisa Perez');

 select vendedor,tipopago,
  count(*) as cantidad
  from ventas
  group by vendedor,tipopago
  with rollup;

 select vendedor,tipopago,
  count(*) as cantidad
  from ventas
  group by vendedor,tipopago
  with cube;

---------------------------------------------------------------
 if object_id('empleados') is not null
  drop table empleados;

 create table empleados (
  documento varchar(8) not null,
  nombre varchar(30),
  sexo char(1),
  estadocivil char(1),--c=casado, s=soltero,v=viudo
  seccion varchar(20),
  primary key (documento)
 );

 insert into empleados
  values ('22222222','Alberto Lopez','m','c','Sistemas');
 insert into empleados
  values ('23333333','Beatriz Garcia','f','c','Administracion');
 insert into empleados
  values ('24444444','Carlos Fuentes','m','s','Administracion');
 insert into empleados
  values ('25555555','Daniel Garcia','m','s','Sistemas');
 insert into empleados
  values ('26666666','Ester Juarez',null,'c','Sistemas');
 insert into empleados
  values ('27777777','Fabian Torres',null,'s','Sistemas');
 insert into empleados
  values ('28888888','Gabriela Lopez','f',null,'Sistemas');
 insert into empleados
  values ('29999999','Hector Garcia','m',null,'Administracion');

 select sexo,estadocivil,
  count(*) as cantidad
  from empleados
  group by sexo,estadocivil
  with rollup;

 select sexo,estadocivil,
  count(*) as cantidad,
  grouping(sexo) as 'resumen sexo',
  grouping(estadocivil) as 'resumen estado civil'
  from empleados
  group by sexo,estadocivil
  with rollup;

 select sexo,estadocivil,
  count(*) as cantidad,
  grouping(sexo) as 'resumen sexo',
  grouping(estadocivil) as 'resumen estado civil'
  from empleados
  group by sexo,estadocivil
  with cube;
----------------------------------------------------------
 if object_id('inmuebles') is not null
  drop table inmuebles;

 create table inmuebles (
  documento varchar(8) not null,
  nombre varchar(30),
  domicilio varchar(20),
  barrio varchar(20),
  ciudad varchar(20),
  tipo char(1),--b=baldio, e: edificado
  superficie decimal (8,2),
  monto decimal (8,2)
 );

 insert into inmuebles
  values ('11111111','Alberto Acosta','Avellaneda 800','Centro','Cordoba','e',100,1200);
 insert into inmuebles
  values ('11111111','Alberto Acosta','Sarmiento 245','Gral. Paz','Cordoba','e',200,2500);
 insert into inmuebles
  values ('22222222','Beatriz Barrios','San Martin 202','Centro','Cordoba','e',250,1900);
 insert into inmuebles
  values ('33333333','Carlos Caseres','Paso 1234','Alberdi','Cordoba','b',200,1000);
 insert into inmuebles
  values ('33333333','Carlos Caseres','Guemes 876','Alberdi','Cordoba','b',300,1500);
 insert into inmuebles
  values ('44444444','Diana Dominguez','Calderon 456','Matienzo','Cordoba','b',200,800);
 insert into inmuebles
  values ('55555555','Estela Fuentes','San Martin 321','Flores','Carlos Paz','e',500,4500);
 insert into inmuebles
  values ('55555555','Estela Fuentes','Lopez y Planes 853','Alberdi','Cordoba','e',350,2200);

 select *from inmuebles
 compute avg(monto);

 select *from inmuebles
  compute avg(superficie),sum(monto);

 select *from inmuebles
  order by documento,barrio,ciudad
  compute avg(superficie),sum(monto)
  by documento,barrio,ciudad;

 select *from inmuebles
  order by documento,barrio,ciudad
  compute avg(superficie),sum(monto)
  by documento,barrio;

 select *from inmuebles
  order by documento,barrio,ciudad
  compute avg(superficie),sum(monto)
  by documento;

 select *from inmuebles
  order by documento,barrio,ciudad
  compute avg(superficie),sum(monto)
  by documento,ciudad;

 select *from inmuebles
  order by documento
  compute sum(monto)
  compute avg(monto)
  by documento;
------------------------------------------------------------------
 if object_id('alumnos') is not null
  drop table alumnos;
 create table alumnos(
  legajo char(5) not null,
  documento char(8) not null,
  apellido varchar(30),
  nombre varchar(30),
  notafinal decimal(4,2)
 );

 insert into alumnos values ('A123','22222222','Perez','Patricia',5.50);
 insert into alumnos values ('A234','23333333','Lopez','Ana',9);
 insert into alumnos values ('A345','24444444','Garcia','Carlos',8.5);
 insert into alumnos values ('A348','25555555','Perez','Daniela',7.85);
 insert into alumnos values ('A457','26666666','Perez','Fabian',3.2);
 insert into alumnos values ('A589','27777777','Gomez','Gaston',6.90);

 create unique clustered index I_alumnos_apellido
 on alumnos(apellido);

 create clustered index I_alumnos_apellido
 on alumnos(apellido); 

 alter table alumnos
  add constraint PK_alumnos_legajo
  primary key clustered (legajo);

 alter table alumnos
  add constraint PK_alumnos_legajo
  primary key nonclustered (legajo);

 exec sp_helpindex alumnos;

 exec sp_helpconstraint alumnos;

 create unique nonclustered index I_alumnos_documento
 on alumnos(documento);

 insert into alumnos values ('A789','27777777','Morales','Hector',8);

 exec sp_helpindex alumnos;

 create index I_alumnos_apellidonombre
  on alumnos(apellido,nombre);

 select name from sysindexes
  where name like '%alumnos%';

 alter table alumnos
  add constraint UQ_alumnos_documento
  unique (documento);

 exec sp_helpconstraint alumnos;

 exec sp_helpindex alumnos;

 select name from sysindexes
  where name like '%alumnos%';

 select name from sysindexes
  where name like 'I_%';
  -----------------------------------------------
   if object_id('alumnos') is not null
  drop table alumnos;
 create table alumnos(
  legajo char(5) not null,
  documento char(8) not null,
  apellido varchar(30),
  nombre varchar(30),
  notafinal decimal(4,2)
 );

 create nonclustered index I_alumnos_apellido
  on alumnos(apellido); 

 exec sp_helpindex alumnos;

 create nonclustered index I_alumnos_apellido
  on alumnos(apellido,nombre)
  with drop_existing;

 exec sp_helpindex alumnos;

 alter table alumnos
  add constraint UQ_alumnos_documento
  unique nonclustered (documento);

 exec sp_helpindex alumnos;

 create clustered index UQ_alumnos_documento
  on alumnos(documento)
  with drop_existing;

 create nonclustered index I_alumnos_legajo
  on alumnos(legajo); 

 exec sp_helpindex alumnos;

 create clustered index I_alumnos_legajo
  on alumnos(legajo)
  with drop_existing;

 exec sp_helpindex alumnos;

 create nonclustered index I_alumnos_legajo
  on alumnos(legajo)
  with drop_existing;

 create nonclustered index I_alumnos_apellido
  on alumnos(apellido)
  with drop_existing;

 create clustered index I_alumnos_apellido
  on alumnos(apellido)
  with drop_existing;

 create unique clustered index I_alumnos_legajo
  on alumnos(legajo)
  with drop_existing;

 exec sp_helpindex alumnos;

 create clustered index I_alumnos_legajo
  on alumnos(legajo)
  with drop_existing;

 exec sp_helpindex alumnos;
 -----------------------------------------------
 if object_id('alumnos') is not null
  drop table alumnos;
 create table alumnos(
  legajo char(5) not null,
  documento char(8) not null,
  apellido varchar(30),
  nombre varchar(30),
  notafinal decimal(4,2)
 );

 create nonclustered index I_alumnos_apellido
  on alumnos(apellido);

 alter table alumnos
  add constraint PK_alumnos_legajo
  primary key clustered (legajo);

 exec sp_helpindex alumnos;

 drop index PK_alumnos_legajo;

 drop index I_alumnos_apellido;

 drop index alumnos.I_alumnos_apellido;

 exec sp_helpindex alumnos;

 if exists (select name from sysindexes
  where name = 'I_alumnos_apellido')
   drop index alumnos.I_alumnos_apellido;

 alter table alumnos
  drop PK_alumnos_legajo;

 exec sp_helpindex alumnos;
 -------------------------------------------------
 if (object_id('clientes')) is not null
   drop table clientes;
  if (object_id('provincias')) is not null
   drop table provincias;

 create table clientes (
  codigo int identity,
  nombre varchar(30),
  domicilio varchar(30),
  ciudad varchar(20),
  codigoprovincia tinyint not null,
  primary key(codigo)
 );

 create table provincias(
  codigo tinyint identity,
  nombre varchar(20),
  primary key (codigo)
 );

 insert into provincias (nombre) values('Cordoba');
 insert into provincias (nombre) values('Santa Fe');
 insert into provincias (nombre) values('Corrientes');

 insert into clientes values ('Lopez Marcos','Colon 111','C�rdoba',1);
 insert into clientes values ('Perez Ana','San Martin 222','Cruz del Eje',1);
 insert into clientes values ('Garcia Juan','Rivadavia 333','Villa Maria',1);
 insert into clientes values ('Perez Luis','Sarmiento 444','Rosario',2);
 insert into clientes values ('Gomez Ines','San Martin 666','Santa Fe',2);
 insert into clientes values ('Torres Fabiola','Alem 777','La Plata',4);
 insert into clientes values ('Garcia Luis','Sucre 475','Santa Rosa',5);

 select c.nombre,domicilio,ciudad, p.nombre
  from clientes as c
  left join provincias as p
  on codigoprovincia = p.codigo;

 select c.nombre,domicilio,ciudad, p.nombre
  from provincias as p
  left join clientes as c
  on codigoprovincia = p.codigo;

 select c.nombre,domicilio,ciudad, p.nombre
  from clientes as c
  left join provincias as p
  on codigoprovincia = p.codigo
  where p.codigo is not null;

 select c.nombre,domicilio,ciudad, p.nombre
  from clientes as c
  left join provincias as p
  on codigoprovincia = p.codigo
  where p.codigo is null
  order by c.nombre;

 select c.nombre,domicilio,ciudad, p.nombre
  from clientes as c
  left join provincias as p
  on codigoprovincia = p.codigo
  where p.nombre='Cordoba';
  -----------------------------------------------
  if (object_id('clientes')) is not null
   drop table clientes;
  if (object_id('provincias')) is not null
   drop table provincias;

 create table clientes (
  codigo int identity,
  nombre varchar(30),
  domicilio varchar(30),
  ciudad varchar(20),
  codigoprovincia tinyint not null,
  primary key(codigo)
 );

 create table provincias(
  codigo tinyint identity,
  nombre varchar(20),
  primary key (codigo)
 );

 insert into provincias (nombre) values('Cordoba');
 insert into provincias (nombre) values('Santa Fe');
 insert into provincias (nombre) values('Corrientes');

 insert into clientes values ('Lopez Marcos','Colon 111','C�rdoba',1);
 insert into clientes values ('Perez Ana','San Martin 222','Cruz del Eje',1);
 insert into clientes values ('Garcia Juan','Rivadavia 333','Villa Maria',1);
 insert into clientes values ('Perez Luis','Sarmiento 444','Rosario',2);
 insert into clientes values ('Pereyra Lucas','San Martin 555','Cruz del Eje',1);
 insert into clientes values ('Gomez Ines','San Martin 666','Santa Fe',2);
 insert into clientes values ('Torres Fabiola','Alem 777','Ibera',3);

 select c.nombre,domicilio,ciudad,p.nombre
  from clientes as c
  join provincias as p
  on c.codigoprovincia=p.codigo;

 select c.nombre,domicilio,ciudad,p.nombre
  from clientes as c
  join provincias as p
  on c.codigoprovincia=p.codigo
  order by p.nombre;

 select c.nombre,domicilio,ciudad
  from clientes as c
  join provincias as p
  on c.codigoprovincia=p.codigo
  where p.nombre='Santa Fe';
  ----------------------------------------
  if object_id('clientes') is not null
  drop table clientes;
 if object_id('provincias') is not null
  drop table provincias;

 create table clientes (
  codigo int identity,
  nombre varchar(30),
  domicilio varchar(30),
  ciudad varchar(20),
  codigoprovincia tinyint
 );

 create table provincias(
  codigo tinyint not null,
  nombre varchar(20)
 );

 alter table clientes
 add constraint FK_clientes_codigoprovincia
  foreign key (codigoprovincia)
  references provincias(codigo);

 alter table provincias
 add constraint PK_provincias_codigo
  primary key (codigo);

 insert into provincias values(1,'Cordoba');
 insert into provincias values(2,'Santa Fe');
 insert into provincias values(3,'Misiones');
 insert into provincias values(4,'Rio Negro');

 insert into clientes values('Perez Juan','San Martin 123','Carlos Paz',1);
 insert into clientes values('Moreno Marcos','Colon 234','Rosario',2);
 insert into clientes values('Acosta Ana','Avellaneda 333','Posadas',3);
 insert into clientes values('Luisa Lopez','Juarez 555','La Plata',6);

 alter table clientes
 add constraint FK_clientes_codigoprovincia
  foreign key (codigoprovincia)
  references provincias(codigo);

 delete from clientes where codigoprovincia=6;
 alter table clientes
 add constraint FK_clientes_codigoprovincia
  foreign key (codigoprovincia)
  references provincias(codigo);

 insert into clientes values('Garcia Marcos','Colon 877','Lules',9);

 delete from provincias where codigo=3;

 delete from provincias where codigo=4;

 update provincias set codigo=7 where codigo=1;

 exec sp_helpconstraint clientes;

 exec sp_helpconstraint provincias;
 -------------------------------------------------------------
 if object_id('clientes') is not null
  drop table clientes;

 create table clientes(
  codigo int not null,
  nombre varchar(30),
  domicilio varchar(30),
  ciudad varchar(20),
  referenciadopor int,
  primary key(codigo)
 );

 insert into clientes values (50,'Juan Perez','Sucre 123','Cordoba',null);
 insert into clientes values(90,'Marta Juarez','Colon 345','Carlos Paz',null);
 insert into clientes values(110,'Fabian Torres','San Martin 987','Cordoba',50);
 insert into clientes values(125,'Susana Garcia','Colon 122','Carlos Paz',90);
 insert into clientes values(140,'Ana Herrero','Colon 890','Carlos Paz',9);

 alter table clientes
  add constraint FK_clientes_referenciadopor
  foreign key (referenciadopor)
  references clientes (codigo);

 update clientes set referenciadopor=90 where referenciadopor=9;

 alter table clientes
  add constraint FK_clientes_referenciadopor
  foreign key (referenciadopor)
  references clientes (codigo);

 exec sp_helpconstraint clientes;

 insert into clientes values(150,'Karina Gomez','Caseros 444','Cruz del Eje',8);

 update clientes set codigo=180 where codigo=90;

 delete from clientes where nombre='Marta Juarez';

 update clientes set codigo=180 where codigo=125;

 delete from clientes where codigo=110;
 ------------------------------------------------
  if object_id('clientes') is not null
  drop table clientes;
 if object_id('provincias') is not null
  drop table provincias;

 create table clientes (
  codigo int identity,
  nombre varchar(30),
  domicilio varchar(30),
  ciudad varchar(20),
  codigoprovincia tinyint,
  primary key(codigo)
 );

 create table provincias(
  codigo tinyint,
  nombre varchar(20),
  primary key (codigo)
 );

 insert into provincias values(1,'Cordoba');
 insert into provincias values(2,'Santa Fe');
 insert into provincias values(3,'Misiones');
 insert into provincias values(4,'Rio Negro');

 insert into clientes values('Perez Juan','San Martin 123','Carlos Paz',1);
 insert into clientes values('Moreno Marcos','Colon 234','Rosario',2);
 insert into clientes values('Acosta Ana','Avellaneda 333','Posadas',3);

 alter table clientes
 add constraint FK_clientes_codigoprovincia
  foreign key (codigoprovincia)
  references provincias(codigo)
  on update cascade
  on delete no action;

 delete from provincias where codigo=3;

 update provincias set codigo=9 where codigo=3;

 select * from provincias;
 select * from clientes;

 alter table clientes
 add constraint FK_clientes_codigoprovincia
  foreign key (codigoprovincia)
  references provincias(codigo)
  on update cascade,
  on delete cascade;

 drop table provincias;
 --------------------------------------
 if object_id('clientes') is not null
  drop table clientes;
 if object_id('provincias') is not null
  drop table provincias;

 create table clientes (
  codigo int identity,
  nombre varchar(30),
  domicilio varchar(30),
  ciudad varchar(20),
  codigoprovincia tinyint,
  primary key(codigo)
 );

 create table provincias(
  codigo tinyint,
  nombre varchar(20),
  primary key (codigo)
 );

 insert into provincias values(1,'Cordoba');
 insert into provincias values(2,'Santa Fe');
 insert into provincias values(3,'Misiones');
 insert into provincias values(4,'Rio Negro');

 insert into clientes values('Perez Juan','San Martin 123','Carlos Paz',1);
 insert into clientes values('Moreno Marcos','Colon 234','Rosario',2);
 insert into clientes values('Garcia Juan','Sucre 345','Cordoba',1);
 insert into clientes values('Lopez Susana','Caseros 998','Posadas',3);
 insert into clientes values('Marcelo Moreno','Peru 876','Viedma',4);
 insert into clientes values('Lopez Sergio','Avellaneda 333','La Plata',5);

 alter table clientes
  add constraint FK_clientes_codigoprovincia
  foreign key (codigoprovincia)
  references provincias(codigo)
  on update cascade
  on delete cascade;

 alter table clientes
  with nocheck
  add constraint FK_clientes_codigoprovincia
  foreign key (codigoprovincia)
  references provincias(codigo)
  on update cascade
  on delete cascade;

 exec sp_helpconstraint clientes;

 exec sp_helpconstraint provincias;

 alter table clientes
  nocheck constraint FK_clientes_codigoprovincia;

 exec sp_helpconstraint clientes;

 exec sp_helpconstraint provincias;

 insert into clientes values('Garcia Omar','San Martin 100','La Pampa',6);

 delete from provincias where codigo=2;

 select * from clientes;
 select * from provincias;

 update provincias set codigo=9 where codigo=3;

 select * from clientes;
 select * from provincias;

 drop table provincias;

 alter table clientes
  check constraint FK_clientes_codigoprovincia;

 insert into clientes values('Hector Ludue�a','Paso 123','La Plata',8);

 update provincias set codigo=20 where codigo=4;

 select * from clientes;
 select * from provincias;

 delete from provincias where codigo=1;

 select * from clientes;
 select * from provincias;

 alter table clientes
  drop constraint FK_clientes_codigoprovincia;

 exec sp_helpconstraint provincias;

 drop table provincias;
 --------------------------------------------------------------
 if object_id('socios') is not null
  drop table socios;
 if object_id('deportes') is not null
  drop table deportes;
 if object_id('inscriptos') is not null
  drop table inscriptos;

 create table socios(
  documento char(8) not null, 
  nombre varchar(30),
  domicilio varchar(30),
  primary key(documento)
 );
 create table deportes(
  codigo tinyint identity,
  nombre varchar(20),
  profesor varchar(15),
  primary key(codigo)
 );
 create table inscriptos(
  documento char(8) not null, 
  codigodeporte tinyint not null,
  anio char(4),
  matricula char(1),--'s'=paga, 'n'=impaga
  primary key(documento,codigodeporte,anio)
 );

 insert into socios values('22222222','Ana Acosta','Avellaneda 111');
 insert into socios values('23333333','Betina Bustos','Bulnes 222');
 insert into socios values('24444444','Carlos Castro','Caseros 333');
 insert into socios values('25555555','Daniel Duarte','Dinamarca 44');

 insert into deportes values('basquet','Juan Juarez');
 insert into deportes values('futbol','Pedro Perez');
 insert into deportes values('natacion','Marina Morales');
 insert into deportes values('tenis','Marina Morales');

 insert into inscriptos values ('22222222',3,'2006','s');
 insert into inscriptos values ('23333333',3,'2006','s');
 insert into inscriptos values ('24444444',3,'2006','n');

 insert into inscriptos values ('22222222',3,'2005','s');
 insert into inscriptos values ('22222222',3,'2007','n');

 insert into inscriptos values ('24444444',1,'2006','s');
 insert into inscriptos values ('24444444',2,'2006','s');

 insert into inscriptos values ('26666666',0,'2006','s');

 select s.nombre,d.nombre,anio
  from deportes as d
  right join inscriptos as i
  on codigodeporte=d.codigo
  left join socios as s
  on i.documento=s.documento;

 select s.nombre,d.nombre,anio,matricula
  from deportes as d
  full join inscriptos as i
  on codigodeporte=d.codigo
  full join socios as s
  on s.documento=i.documento;

 select s.nombre,d.nombre,anio,matricula
  from deportes as d
  join inscriptos as i
  on codigodeporte=d.codigo
  join socios as s
  on s.documento=i.documento
  where s.documento='22222222';
----------------------------------------------
if object_id('inscriptos') is not null
  drop table inscriptos;
 if object_id('socios') is not null
  drop table socios;
 if object_id('profesores') is not null
  drop table profesores;
 if object_id('deportes') is not null
  drop table deportes;


 create table profesores(
  documento char(8) not null,
  nombre varchar(30),
  domicilio varchar(30),
  constraint CK_profesores_documento_patron check (documento like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
  constraint PK_profesores_documento
   primary key (documento)
 );

 create table deportes(
  codigo tinyint identity,
  nombre varchar(20) not null,
  dia varchar(30)
   constraint DF_deportes_dia default('sabado'),
  profesor char(8),--documento del profesor
  constraint CK_deportes_dia_lista check (dia in ('lunes','martes','miercoles','jueves','viernes','sabado')),
  constraint PK_deportes_codigo
   primary key (codigo)
 );

 create table socios(
  numero int identity,
  documento char(8),
  nombre varchar(30),
  domicilio varchar(30),
  constraint CK_documento_patron check (documento like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
  constraint PK_socios_numero
   primary key nonclustered(numero),
  constraint UQ_socios_documento
   unique clustered(documento)
 );

 create table inscriptos(
  numerosocio int not null,
  codigodeporte tinyint,
  matricula char(1),
  constraint PK_inscriptos_numerodeporte
   primary key clustered (numerosocio,codigodeporte),
  constraint FK_inscriptos_deporte
   foreign key (codigodeporte)
   references deportes(codigo)
   on update cascade,
  constraint FK_inscriptos_socios
   foreign key (numerosocio)
   references socios(numero)
   on update cascade
   on delete cascade,
  constraint CK_matricula_valores check (matricula in ('s','n'))
 );

 insert into profesores values('21111111','Andres Acosta','Avellaneda 111');
 insert into profesores values('22222222','Betina Bustos','Bulnes 222');
 insert into profesores values('23333333','Carlos Caseros','Colon 333');

 insert into deportes values('basquet','lunes',null);
 insert into deportes values('futbol','lunes','23333333');
 insert into deportes values('natacion',null,'22222222');
 insert into deportes values('padle',default,'23333333');
 insert into deportes (nombre,dia) values('tenis','jueves');

 insert into socios values('30111111','Ana Acosta','America 111');
 insert into socios values('30222222','Bernardo Bueno','Bolivia 222');
 insert into socios values('30333333','Camila Conte','Caseros 333');
 insert into socios values('30444444','Daniel Duarte','Dinamarca 444');

 insert into inscriptos values(1,3,'s');
 insert into inscriptos values(1,5,'s');
 insert into inscriptos values(2,1,'s');
 insert into inscriptos values(4,1,'n');
 insert into inscriptos values(4,4,'s');

 select s.*,d.nombre as deporte,d.dia,p.nombre as profesor
  from socios as s
  join inscriptos as i
  on numero=i.numerosocio
  join deportes as d
  on d.codigo=i.codigodeporte
  left join profesores as p
  on d.profesor=p.documento;

 select s.*,d.nombre as deporte,d.dia,p.nombre as profesor
  from socios as s
  full join inscriptos as i
  on numero=i.numerosocio
  left join deportes as d
  on d.codigo=i.codigodeporte
  left join profesores as p
  on d.profesor=p.documento;

 select p.*,d.nombre as deporte,d.dia
  from profesores as p
  left join deportes as d
  on d.profesor=p.documento;

 select d.nombre,count(i.codigodeporte) as cantidad
  from deportes as d
  left join inscriptos as i
  on d.codigo=i.codigodeporte
  group by d.nombre;  

 exec sp_helpconstraint socios;

 exec sp_helpconstraint deportes;

 exec sp_helpconstraint profesores;

 exec sp_helpconstraint inscriptos;
 ------------------------------------------------
 if object_id ('empleados') is not null
  drop table empleados;

 if exists (select name from systypes
  where name = 'tipo_legajo')
  exec sp_droptype tipo_legajo;

 exec sp_addtype tipo_legajo, 'char(4)','not null';

 exec sp_help tipo_legajo;

 create table empleados(
  legajo tipo_legajo,
  documento char(8),
  nombre varchar(30)
 );

 insert into empleados default values;

 insert into empleados values('A111','22222222','Juan Perez');
 -----------------------------------------------
 if object_id ('empleados') is not null
  drop table empleados;
 if object_id ('clientes') is not null
  drop table clientes;

 if exists (select *from systypes
  where name = 'tipo_a�o')
   exec sp_droptype tipo_a�o;

 exec sp_addtype tipo_a�o, 'int','null';

 exec sp_help tipo_a�o;

 create table empleados(
  documento char(8),
  nombre varchar(30),
  a�oingreso tipo_a�o
 );

 if object_id ('RG_a�o') is not null
   drop rule RG_a�o;

 create rule RG_a�o
  as @a�o between 1990 and datepart(year,getdate());

 exec sp_bindrule RG_a�o, 'tipo_a�o', 'futureonly';

 exec sp_helpconstraint empleados;

 create table clientes(
  documento char(8),
  nombre varchar(30),
  a�oingreso tipo_a�o
 );

 exec sp_helpconstraint clientes;

 insert into empleados values('11111111','Ana Acosta',2050);
 select * from empleados;

 insert into clientes values('22222222','Juan Perez',2050);

 exec sp_unbindrule 'tipo_a�o';

 exec sp_helpconstraint clientes;

 exec sp_bindrule RG_a�o, 'tipo_a�o';

 insert into empleados values('33333333','Romina Guzman',1900);

 exec sp_help tipo_a�o;

 if object_id ('RG_a�onegativo') is not null
   drop rule RG_a�onegativo;

 create rule RG_a�onegativo
  as @a�o between -2000 and -1;

 exec sp_bindrule RG_a�onegativo, 'clientes.a�oingreso';

 exec sp_helpconstraint clientes;

 exec sp_help tipo_a�o;

 insert into empleados values('44444444','Pedro Perez',-1900);

 insert into clientes values('44444444','Pedro Perez',-1900);
 select * from clientes;
 ---------------------------------------------------
  if object_id ('empleados') is not null
  drop table empleados;
 if object_id ('clientes') is not null
  drop table clientes;

 if exists (select *from systypes
  where name = 'tipo_a�o')
   exec sp_droptype tipo_a�o;

 exec sp_addtype tipo_a�o, 'int','null';

 exec sp_help tipo_a�o;

 create table empleados(
  documento char(8),
  nombre varchar(30),
  a�oingreso tipo_a�o
 );

 if object_id ('VP_a�oactual') is not null
   drop default VP_a�oactual;

 create default VP_a�oactual
  as datepart(year,getdate());

 exec sp_bindefault VP_a�oactual, 'tipo_a�o', 'futureonly';

 exec sp_helpconstraint empleados;

 create table clientes(
  documento char(8),
  nombre varchar(30),
  a�oingreso tipo_a�o
 );

 exec sp_helpconstraint clientes;

 insert into empleados default values;
 select * from empleados;

 insert into clientes default values;
 select * from clientes;

 if object_id ('VP_a�o2000') is not null
   drop default Vp_a�o2000;

 create default VP_a�o2000
  as 2000;

 exec sp_bindefault VP_a�o2000, 'tipo_a�o';

 exec sp_helpconstraint empleados;

 exec sp_helpconstraint clientes;

 insert into empleados default values;
 select * from empleados;
 insert into clientes default values;
 select * from clientes;

 exec sp_help tipo_a�o;

 alter table empleados
 add constraint DF_empleados_a�o
 default 1990
 for a�oingreso;

 exec sp_unbindefault 'tipo_a�o';

 alter table empleados
 add constraint DF_empleados_a�o
 default 1990
 for a�oingreso;

 exec sp_bindefault VP_a�oactual, 'tipo_a�o';

 exec sp_help tipo_a�o;

 exec sp_helpconstraint clientes;

 exec sp_helpconstraint empleados;
--------------------------------------------------
if object_id ('empleados') is not null
  drop table empleados;

 if exists (select *from systypes
  where name = 'tipo_a�o')
  exec sp_droptype tipo_a�o;

 exec sp_addtype tipo_a�o, 'int','null';

 if object_id ('RG_a�o') is not null
   drop rule RG_a�o;

 create rule RG_a�o
  as @a�o between 1990 and datepart(year,getdate());

 exec sp_bindrule RG_a�o, 'tipo_a�o';

 create table empleados(
  documento char(8),
  nombre varchar(30),
  a�oingreso tipo_a�o
 );

 insert into empleados values('22222222','Juan Lopez',1980);

 insert into empleados values('22222222','Juan Lopez',2000);

 drop rule RG_a�o;

 exec sp_unbindrule 'tipo_a�o';

 exec sp_helpconstraint empleados;
 exec sp_help tipo_a�o;

 drop rule RG_a�o;

 exec sp_help RG_a�o;

 insert into empleados values('22222222','Juan Lopez',1980);

 exec sp_droptype tipo_a�o;

 drop table empleados;

 exec sp_help tipo_a�o;

 exec sp_droptype tipo_a�o;

 exec sp_help tipo_a�o;
 --------------------------------------------------
 if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  apellido varchar(20),
  nombre varchar(20),
  domicilio varchar(30),
  fechaingreso datetime
 );
 insert into empleados(apellido,nombre) values ('Rodriguez','Pablo');

 alter table empleados
  add sueldo decimal(5,2);

 exec sp_columns empleados;

 alter table empleados
  add codigo int identity;

 alter table empleados
  add documento char(8) not null;

 alter table empleados
  add documento char(8) not null default '00000000';

 exec sp_columns empleados;

 alter table empleados
  drop column sueldo;

 exec sp_columns empleados;

 alter table empleados
  drop column documento;

 alter table empleados
  drop column codigo,fechaingreso;

 exec sp_columns empleados;
 ----------------------------------------------------
  if (object_id('ciudades')) is not null
   drop table ciudades;
  if (object_id('clientes')) is not null
   drop table clientes;

 create table ciudades(
  codigo tinyint identity,
  nombre varchar(20),
  primary key (codigo)
 );

 create table clientes (
  codigo int identity,
  nombre varchar(30),
  domicilio varchar(30),
  codigociudad tinyint not null,
  primary key(codigo),
  constraint FK_clientes_ciudad
   foreign key (codigociudad)
   references ciudades(codigo)
   on update cascade,
 );

 insert into ciudades (nombre) values('Cordoba');
 insert into ciudades (nombre) values('Cruz del Eje');
 insert into ciudades (nombre) values('Carlos Paz');
 insert into ciudades (nombre) values('La Falda');
 insert into ciudades (nombre) values('Villa Maria');

 insert into clientes values ('Lopez Marcos','Colon 111',1);
 insert into clientes values ('Lopez Hector','San Martin 222',1);
 insert into clientes values ('Perez Ana','San Martin 333',2);
 insert into clientes values ('Garcia Juan','Rivadavia 444',3);
 insert into clientes values ('Perez Luis','Sarmiento 555',3);
 insert into clientes values ('Gomez Ines','San Martin 666',4);
 insert into clientes values ('Torres Fabiola','Alem 777',5);
 insert into clientes values ('Garcia Luis','Sucre 888',5);

 select nombre
  from ciudades
  where codigo in
   (select codigociudad
     from clientes
     where domicilio like 'San Martin %');

 select distinct ci.nombre
  from ciudades as ci
  join clientes as cl
  on codigociudad=ci.codigo
  where domicilio like 'San Martin%';

 select nombre
  from ciudades
  where codigo not in
   (select codigociudad
     from clientes
     where nombre like 'G%');

 select codigociudad
  from clientes
  where nombre like 'G%';
  ---------------------------------------------------
  if object_id('inscriptos') is not null
  drop table inscriptos;
 if object_id('socios') is not null
  drop table socios;

 create table socios(
  numero int identity,
  documento char(8),
  nombre varchar(30),
  domicilio varchar(30),
  primary key (numero)
 );
 
 create table inscriptos (
  numerosocio int not null,
  deporte varchar(20) not null,
  cuotas tinyint
  constraint CK_inscriptos_cuotas
   check (cuotas>=0 and cuotas<=10)
  constraint DF_inscriptos_cuotas default 0,
  primary key(numerosocio,deporte),
  constraint FK_inscriptos_socio
   foreign key (numerosocio)
   references socios(numero)
   on update cascade
   on delete cascade,
 );

 insert into socios values('23333333','Alberto Paredes','Colon 111');
 insert into socios values('24444444','Carlos Conte','Sarmiento 755');
 insert into socios values('25555555','Fabian Fuentes','Caseros 987');
 insert into socios values('26666666','Hector Lopez','Sucre 344');

 insert into inscriptos values(1,'tenis',1);
 insert into inscriptos values(1,'basquet',2);
 insert into inscriptos values(1,'natacion',1);
 insert into inscriptos values(2,'tenis',9);
 insert into inscriptos values(2,'natacion',1);
 insert into inscriptos values(2,'basquet',default);
 insert into inscriptos values(2,'futbol',2);
 insert into inscriptos values(3,'tenis',8);
 insert into inscriptos values(3,'basquet',9);
 insert into inscriptos values(3,'natacion',0);
 insert into inscriptos values(4,'basquet',10);

 select nombre,domicilio,
  (select count(*)
    from inscriptos as i
    where s.numero=i.numerosocio) as 'deportes'
 from socios as s;

 select nombre,
  (select (count(*)*10)
    from inscriptos as i
    where s.numero=i.numerosocio) as total,
  (select sum(i.cuotas)
    from inscriptos as i
    where s.numero=i.numerosocio) as pagas
 from socios as s;

 select nombre,
  count(i.deporte)*10 as total,
  sum(i.cuotas) as pagas
  from socios as s
  join inscriptos as i
  on numero=numerosocio
  group by nombre;
  -------------------------------------------
   if object_id('inscriptos') is not null
  drop table inscriptos;
 if object_id('socios') is not null
  drop table socios;

 create table socios(
  numero int identity,
  documento char(8),
  nombre varchar(30),
  domicilio varchar(30),
  primary key (numero)
 );
 
 create table inscriptos (
  numerosocio int not null,
  deporte varchar(20) not null,
  cuotas tinyint
  constraint CK_inscriptos_cuotas
   check (cuotas>=0 and cuotas<=10)
  constraint DF_inscriptos_cuotas default 0,
  primary key(numerosocio,deporte),
  constraint FK_inscriptos_socio
   foreign key (numerosocio)
   references socios(numero)
   on update cascade
   on delete cascade,
 );

 insert into socios values('23333333','Alberto Paredes','Colon 111');
 insert into socios values('24444444','Carlos Conte','Sarmiento 755');
 insert into socios values('25555555','Fabian Fuentes','Caseros 987');
 insert into socios values('26666666','Hector Lopez','Sucre 344');

 insert into inscriptos values(1,'tenis',1);
 insert into inscriptos values(1,'basquet',2);
 insert into inscriptos values(1,'natacion',1);
 insert into inscriptos values(2,'tenis',9);
 insert into inscriptos values(2,'natacion',1);
 insert into inscriptos values(2,'basquet',default);
 insert into inscriptos values(2,'futbol',2);
 insert into inscriptos values(3,'tenis',8);
 insert into inscriptos values(3,'basquet',9);
 insert into inscriptos values(3,'natacion',0);
 insert into inscriptos values(4,'basquet',10);

 select nombre,domicilio,
  (select count(*)
    from inscriptos as i
    where s.numero=i.numerosocio) as 'deportes'
 from socios as s;

 select nombre,
  (select (count(*)*10)
    from inscriptos as i
    where s.numero=i.numerosocio) as total,
  (select sum(i.cuotas)
    from inscriptos as i
    where s.numero=i.numerosocio) as pagas
 from socios as s;

 select nombre,
  count(i.deporte)*10 as total,
  sum(i.cuotas) as pagas
  from socios as s
  join inscriptos as i
  on numero=numerosocio
  group by nombre;
  ----------------------------------
  if object_id('deportes') is not null
  drop table deportes;

 create table deportes(
  nombre varchar(15),
  profesor varchar(30),
  dia varchar(10),
  cuota decimal(5,2),
 );
 
 insert into deportes values('tenis','Ana Lopez','lunes',20);
 insert into deportes values('natacion','Ana Lopez','martes',15);
 insert into deportes values('futbol','Carlos Fuentes','miercoles',10);
 insert into deportes values('basquet','Gaston Garcia','jueves',15);
 insert into deportes values('padle','Juan Huerta','lunes',15);
 insert into deportes values('handball','Juan Huerta','martes',10);

 select distinct d1.profesor
  from deportes as d1
  where d1.profesor in
  (select d2.profesor
    from deportes as d2 
    where d1.nombre <> d2.nombre);

 select distinct d1.profesor
  from deportes as d1
  join deportes as d2
  on d1.profesor=d2.profesor
  where d1.nombre<>d2.nombre;

 select nombre
  from deportes
  where nombre<>'natacion' and
  dia =
   (select dia
     from deportes
     where nombre='natacion');

 select d1.nombre
  from deportes as d1
  join deportes as d2
  on d1.dia=d2.dia
  where d2.nombre='natacion' and
  d1.nombre<>d2.nombre;
  ----------------------------------------
  if object_id('inscriptos') is not null
  drop table inscriptos;
 if object_id('socios') is not null
  drop table socios;
 if object_id('deportes') is not null
  drop table deportes;

 create table socios(
  documento char(8) not null, 
  nombre varchar(30),
  domicilio varchar(30),
  primary key(documento)
 );
 create table deportes(
  codigo tinyint identity,
  nombre varchar(20),
  profesor varchar(15),
  primary key(codigo)
 );
 create table inscriptos(
  documento char(8) not null, 
  codigodeporte tinyint not null,
  a�o char(4),
  matricula char(1),--'s'=paga, 'n'=impaga
  primary key(documento,codigodeporte,a�o),
  constraint FK_inscriptos_socio
   foreign key (documento)
   references socios(documento)
   on update cascade
   on delete cascade
 );

 insert into socios values('22222222','Ana Acosta','Avellaneda 111');
 insert into socios values('23333333','Betina Bustos','Bulnes 222');
 insert into socios values('24444444','Carlos Castro','Caseros 333');
 insert into socios values('25555555','Daniel Duarte','Dinamarca 44');

 insert into deportes values('basquet','Juan Juarez');
 insert into deportes values('futbol','Pedro Perez');
 insert into deportes values('natacion','Marina Morales');
 insert into deportes values('tenis','Marina Morales');

 insert into inscriptos values ('22222222',3,'2006','s');
 insert into inscriptos values ('23333333',3,'2006','s');
 insert into inscriptos values ('24444444',3,'2006','n');
 insert into inscriptos values ('22222222',3,'2005','s');
 insert into inscriptos values ('22222222',3,'2007','n');
 insert into inscriptos values ('24444444',1,'2006','s');
 insert into inscriptos values ('24444444',2,'2006','s');

 select i.documento,i.codigodeporte,d.nombre as deporte, a�o, matricula, d.profesor
 from deportes as d
 join inscriptos as i
 on d.codigo=i.codigodeporte;

 select s.nombre,td.deporte,td.profesor,td.a�o,td.matricula
  from socios as s
  join (select i.documento,i.codigodeporte,d.nombre as deporte, a�o, matricula, d.profesor
	from deportes as d
	join inscriptos as i
	on d.codigo=i.codigodeporte) as td
  on td.documento=s.documento;
  -------------------------------------------------
  if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  documento char(8),
  nombre varchar(20),
  apellido varchar(20),
  sueldo decimal(6,2),
  cantidadhijos tinyint,
  seccion varchar(20),
  primary key(documento)
 );

 insert into empleados values('22222222','Juan','Perez',300,2,'Contaduria');
 insert into empleados values('22333333','Luis','Lopez',350,0,'Contaduria');
 insert into empleados values ('22444444','Marta','Perez',500,1,'Sistemas');
 insert into empleados values('22555555','Susana','Garcia',null,2,'Secretaria');
 insert into empleados values('22666666','Jose Maria','Morales',460,3,'Secretaria');
 insert into empleados values('22777777','Andres','Perez',580,3,'Sistemas');
 insert into empleados values('22888888','Laura','Garcia',400,3,'Secretaria');

 if object_id('pa_seccion') is not null
  drop procedure pa_seccion;

 create procedure pa_seccion
  @seccion varchar(20)='%',
  @promedio decimal(6,2) output,
  @mayor decimal(6,2) output
 as
  select @promedio=avg(sueldo)
   from empleados
   where seccion like @seccion
  select @mayor=max(sueldo)
   from empleados
    where seccion like @seccion;

 declare @p decimal(6,2), @m decimal(6,2)
 execute pa_seccion 'Contaduria', @p output, @m output
 select @p as promedio, @m as mayor

 execute pa_seccion 'Secretaria', @p output, @m output
 select @p as promedio, @m as mayor;

 declare @p decimal(6,2), @m decimal(6,2)
 execute pa_seccion @promedio=@p output,@mayor= @m output
 select @p as promedio, @m as mayor;

 if object_id('pa_sueldototal') is not null
  drop procedure pa_sueldototal;

 create procedure pa_sueldototal
  @documento varchar(8)='%',
  @sueldototal decimal(8,2) output
 as
  select @sueldototal=
   case 
    when sueldo<500 then sueldo+(cantidadhijos*200)
    when sueldo>=500 then sueldo+(cantidadhijos*100)
   end
   from empleados
   where documento like @documento;

 declare @st decimal(8,2)
 exec pa_sueldototal '22666666', @st output
 select @st;

 declare @st decimal(8,2)
 exec pa_sueldototal '22999999', @st output
 select @st;

 declare @st decimal(8,2)
 exec pa_sueldototal '22555555', @st output
 select @st;

 declare @st decimal(8,2)
 exec pa_sueldototal @sueldototal=@st output
 select @st;
 --------------------------------------------------
 if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  documento char(8),
  nombre varchar(20),
  apellido varchar(20),
  cantidadhijos tinyint,
  seccion varchar(20),
  primary key(documento)
 );

 insert into empleados values('22222222','Juan','Perez',2,'Contaduria');
 insert into empleados values('22333333','Luis','Lopez',0,'Contaduria');
 insert into empleados values ('22444444','Marta','Perez',NULL,'Sistemas');
 insert into empleados values('22555555','Susana','Garcia',2,'Secretaria');
 insert into empleados values('22666666','Jose Maria','Morales',1,'Secretaria');
 insert into empleados values('22777777','Andres','Perez',3,'Sistemas');
 insert into empleados values('22888888','Laura','Garcia',3,'Secretaria');

 if object_id('pa_empleados_seccion') is not null
  drop procedure pa_empleados_seccion;

 create procedure pa_empleados_seccion
  @seccion varchar(20)=null
 as 
 if @seccion is null
 begin 
  select 'Debe indicar una seccion'
  return
 end
 select nombre from empleados where seccion=@seccion;

 exec pa_empleados_seccion 'Secretaria';

 exec pa_empleados_seccion;

 if object_id('pa_actualizarhijos') is not null
  drop procedure pa_actualizarhijos;

 create procedure pa_actualizarhijos
  @documento char(8)=null,
  @hijos tinyint=null
 as 
 if (@documento is null) or (@hijos is null)
  return 0
 else 
 begin
  update empleados set cantidadhijos=@hijos where documento=@documento
  return 1
 end;

 declare @retorno int
 exec @retorno=pa_actualizarhijos '22222222',3
 select 'Registro actualizado=1' = @retorno;

 select *from empleados;

 declare @retorno int
 exec @retorno=pa_actualizarhijos '22333333'
 select 'Registro actualizado=1' = @retorno;

 select *from empleados;

 declare @retorno int
 exec @retorno=pa_actualizarhijos '22333333',2
 if @retorno=1 select 'Registro actualizado'
 else select 'Registro no actualizado, se necesita un documento y la cantidad de hijos';

 select *from empleados;

 declare @retorno int
 exec @retorno=pa_actualizarhijos @hijos=4
 if @retorno=1 select 'Registro actualizado'
 else select 'Registro no actualizado, se necesita un documento y la cantidad de hijos';
 --------------------------------------------------------------
 if object_id('clientes') is not null
  drop table clientes;
 if object_id('ciudades') is not null
  drop table ciudades;

 create table ciudades(
  codigo tinyint identity,
  nombre varchar(20),
  constraint PK_ciudades
   primary key (codigo)
 );

 create table clientes(
  nombre varchar(20),
  apellido varchar(20),
  documento char(8),
  domicilio varchar(30),
  codigociudad tinyint
   constraint FK_clientes_ciudad
    foreign key (codigociudad)
   references ciudades(codigo)
   on update cascade
 );

 insert into ciudades values('Cordoba');
 insert into ciudades values('Carlos Paz');
 insert into ciudades values('Cruz del Eje');
 insert into ciudades values('La Falda');

 insert into clientes values('Juan','Perez','22222222','Colon 1123',1);
 insert into clientes values('Karina','Lopez','23333333','San Martin 254',2);
 insert into clientes values('Luis','Garcia','24444444','Caseros 345',1);
 insert into clientes values('Marcos','Gonzalez','25555555','Sucre 458',3);
 insert into clientes values('Nora','Torres','26666666','Bulnes 567',1);
 insert into clientes values('Oscar','Luque','27777777','San Martin 786',4);

 if object_id('vista_clientes') is not null
  drop view vista_clientes;

 create view vista_clientes
 as
  select apellido, cl.nombre, documento, domicilio, cl.codigociudad,ci.nombre as ciudad
  from clientes as cl
  join ciudades as ci
  on codigociudad=codigo
  where ci.nombre='Cordoba'
  with check option;

 select * from vista_clientes;

 update vista_clientes set apellido='Pereyra' where documento='22222222';

 select * from clientes;

 update vista_clientes set codigociudad=2 where documento='22222222';
 ---------------------------------------
 if object_id('visitas') is not null
  drop table visitas;

 create table visitas (
  numero int identity,
  nombre varchar(30),
  mail varchar(50),
  pais varchar (20),
  fecha datetime
  constraint DF_visitas_fecha default getdate(),
  comentarios text,
  constraint PK_visitas
  primary key(numero)
);

 insert into visitas values ('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina','2006-10-10 10:10',null);
 insert into visitas values ('Gustavo Gonzalez','GustavoGGonzalez@hotmail.com','Chile','2006-10-10 21:30',default);
 insert into visitas values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico',default,'Excelente p�gina');
 insert into visitas values ('Mariano Perez','PerezM@hotmail.com','Argentina','2006-11-11 14:30','Muy buena y divertida');

 declare @puntero varbinary(16)
 select @puntero=textptr(comentarios) 
  from visitas
  where numero=3
 readtext visitas.comentarios @puntero 0 10;

 declare @puntero varbinary(16)
 select @puntero=textptr(comentarios) 
  from visitas
  where numero=1
 readtext visitas.comentarios @puntero 0 10;

 declare @puntero varbinary(16)
 select @puntero=textptr(comentarios) 
  from visitas where numero=1
 if (textvalid('visitas.comentarios', @puntero)=1)
  readtext visitas.comentarios @puntero 0 0
 else select 'puntero invalido';
 -------------------------------------------------------------
 if object_id('visitas') is not null
  drop table visitas;

 create table visitas (
  numero int identity,
  nombre varchar(30),
  mail varchar(50),
  pais varchar (20),
  fecha datetime
  constraint DF_visitas_fecha default getdate(),
  comentarios text,
  constraint PK_visitas
  primary key(numero)
);

 insert into visitas values ('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina','2006-10-10 10:10',null);
 insert into visitas values ('Gustavo Gonzalez','GustavoGGonzalez@hotmail.com','Chile','2006-10-10 21:30',default);
 insert into visitas values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico',default,'Excelente p�gina');
 insert into visitas values ('Mariano Perez','PerezM@hotmail.com','Argentina','2006-11-11 14:30','Muy buena y divertida');

 select *from visitas;

 declare @puntero binary(16)
 select @puntero = textptr (comentarios)
  from visitas
  where numero=3
 
  writetext visitas.comentarios @puntero 'Esta p�gina es excelente, no hay otra mejor.';

 declare @puntero binary(16)
 select @puntero = textptr (comentarios)
  from visitas
  where numero=3
 
 readtext visitas.comentarios @puntero 0 0;

 declare @puntero varbinary(16)
 select @puntero=textptr(comentarios) 
  from visitas where numero=1

 writetext visitas.comentarios @puntero 'Es una muy buena p�gina, pero tiene algunos errores.';

 declare @puntero varbinary(16)
 select @puntero=textptr(comentarios) 
  from visitas where numero=1
 if (textvalid('visitas.comentarios', @puntero)=1)
  writetext visitas.comentarios @puntero 'Es una muy buena p�gina, pero tiene algunos errores.'
 else select 'puntero invalido, no se actualiz� el registro';

 insert into visitas values ('Salvador Quiroga','salvador@hotmail.com','Argentina','2006-09-09 18:25','');

 declare @puntero varbinary(16)
 select @puntero=textptr(comentarios) 
  from visitas where nombre='Salvador Quiroga'
 if (textvalid('visitas.comentarios', @puntero)=1)
  writetext visitas.comentarios @puntero 'Es una p�gina m�s que interesante.';

 declare @puntero binary(16)
 select @puntero = textptr (comentarios)
  from visitas
  where nombre='Salvador Quiroga'
 
  readtext visitas.comentarios @puntero 0 0;
  ------------------------------------------------------------
  if object_id('alumnos') is not null
  drop table alumnos;

 create table alumnos(
  documento char(8),
  nombre varchar(40),
  nota decimal(4,2),
  primary key(documento)
 );

 insert into alumnos values ('22222222','Pedro Lopez',5);
 insert into alumnos values ('23333333','Ana Lopez',4);
 insert into alumnos values ('24444444','Maria Juarez',8);
 insert into alumnos values ('25555555','Juan Garcia',5.6);
 insert into alumnos values ('26666666','Karina Torres',2);
 insert into alumnos values ('27777777','Nora Torres',7.5);
 insert into alumnos values ('28888888','Mariano Herrero',3.5);

 if object_id('aprobados') is not null
  drop table aprobados;

 create table aprobados(
  documento char(8),
  nombre varchar(40),
  nota decimal(4,2)
 );

 if object_id('desaprobados') is not null
  drop table desaprobados;

 create table desaprobados(
  documento char(8),
  nombre varchar(40)
 );

 if object_id('pa_aprobados') is not null
  drop procedure pa_aprobados;

 create proc pa_aprobados
  as
  select *
   from alumnos
   where nota>=4;

 insert into aprobados exec pa_aprobados;

 select * from aprobados;

 if object_id('pa_desaprobados') is not null
  drop procedure pa_desaprobados;

 create proc pa_desaprobados
  as
  select documento,nombre
   from alumnos
   where nota<4;

 insert into desaprobados exec pa_desaprobados;

 select * from desaprobados;
 --------------------------------------------
 if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  documento char(8) not null,
  nombre varchar(30) not null,
  sexo char(1),
  fechanacimiento datetime,
  fechaingreso datetime,
  cantidadhijos tinyint,
  sueldo decimal(5,2),
  primary key(documento)
);

 insert into empleados values ('22333111','Juan Perez','m','1970-05-10','1987-04-05',2,550);
 insert into empleados values ('25444444','Susana Morales','f','1975-11-06','1990-04-06',0,650);
 insert into empleados values ('20111222','Hector Pereyra','m','1965-03-25','1997-04-12',3,510);
 insert into empleados values ('30000222','Luis LUque','m','1980-03-29','1999-11-06',1,700);
 insert into empleados values ('20555444','Laura Torres','f','1965-12-22','2003-11-06',3,400);
 insert into empleados values ('30000234','Alberto Soto','m','1989-10-10','1999-11-06',2,420);
 insert into empleados values ('20125478','Ana Gomez','f','1976-09-21','1998-11-06',3,350);
 insert into empleados values ('24154269','Ofelia Garcia','f','1974-05-12','1990-11-06',0,390);
 insert into empleados values ('30415426','Oscar Torres','m','1978-05-02','1997-11-06',1,400);

 select sexo, count(*) as cantidad, obsequio=
  case 
   when sexo='f' then 'rosas'
   else 'corbata'
  end
  from empleados
  where datepart(month,fechanacimiento)=5
  group by sexo;

 select nombre,datepart(year,fechaingreso) as a�oingreso,
  datepart(year,getdate())-datepart(year,fechaingreso) as A�osdeServicio, placa=
   case (datepart(year,getdate())-datepart(year,fechaingreso)) %10
     when 0 then 'Si'  --si la cantidad de a�os es divisible por 10
     else 'No'
   end
  from empleados
  where datepart(month,fechaingreso)=4;

 select nombre,sueldo,cantidadhijos,porhijo=
  case 
   when sueldo<=500 then 200
   else 100
  end,
 salariofamilar=
  case
   when sueldo<=500 then 200*cantidadhijos
   else 100*cantidadhijos
  end,
 sueldototal=
  case
   when sueldo<=500 then sueldo+(200*cantidadhijos)
   else sueldo+(100*cantidadhijos)
  end
  from empleados
  order by sueldototal;
  ------------------------------------------------------------
  if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  documento char(8) not null,
  nombre varchar(30) not null,
  sexo char(1),
  fechanacimiento datetime,
  fechaingreso datetime,
  cantidadhijos tinyint,
  sueldo decimal(5,2),
  primary key(documento)
);

 insert into empleados values ('22333111','Juan Perez','m','1970-05-10','1987-04-05',2,550);
 insert into empleados values ('25444444','Susana Morales','f','1975-11-06','1990-04-06',0,650);
 insert into empleados values ('20111222','Hector Pereyra','m','1965-03-25','1997-04-12',3,510);
 insert into empleados values ('30000222','Luis LUque','m','1980-03-29','1999-11-06',1,700);
 insert into empleados values ('20555444','Laura Torres','f','1965-12-22','2003-11-06',3,400);
 insert into empleados values ('30000234','Alberto Soto','m','1989-10-10','1999-11-06',2,420);
 insert into empleados values ('20125478','Ana Gomez','f','1976-09-21','1998-11-06',3,350);
 insert into empleados values ('24154269','Ofelia Garcia','f','1974-05-12','1990-11-06',0,390);
 insert into empleados values ('30415426','Oscar Torres','m','1978-05-02','1997-11-06',1,400);

 select sexo, count(*) as cantidad, obsequio=
  case 
   when sexo='f' then 'rosas'
   else 'corbata'
  end
  from empleados
  where datepart(month,fechanacimiento)=5
  group by sexo;

 select nombre,datepart(year,fechaingreso) as a�oingreso,
  datepart(year,getdate())-datepart(year,fechaingreso) as A�osdeServicio, placa=
   case (datepart(year,getdate())-datepart(year,fechaingreso)) %10
     when 0 then 'Si'  --si la cantidad de a�os es divisible por 10
     else 'No'
   end
  from empleados
  where datepart(month,fechaingreso)=4;

 select nombre,sueldo,cantidadhijos,porhijo=
  case 
   when sueldo<=500 then 200
   else 100
  end,
 salariofamilar=
  case
   when sueldo<=500 then 200*cantidadhijos
   else 100*cantidadhijos
  end,
 sueldototal=
  case
   when sueldo<=500 then sueldo+(200*cantidadhijos)
   else sueldo+(100*cantidadhijos)
  end
  from empleados
  order by sueldototal;
  -----------------------------------------------
  if (object_id('libros')) is not null
  drop table libros;
 if (object_id('ventas')) is not null
  drop table ventas;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  precio decimal(6,2),
  cantidad int,
  primary key (codigo)
 );

 create table ventas(
  numero int identity,
  codigo int not null,
  preciounitario decimal(6,2),
  cantidad int, 
  constraint PK_ventas primary key (numero),
  constraint FK_ventas_codigolibro
   foreign key (codigo)
   references libros(codigo)
   on update cascade
 );

 insert into libros values('Uno','Richard Bach','Planeta',15,100);
 insert into libros values('Ilusiones','Richard Bach','Planeta',18,150);
 insert into libros values('El aleph','Borges','Emece',25,200);
 insert into libros values('Matematica estas ahi','Paenza','Nuevo siglo',20,300);
 insert into libros values('Aprenda PHP','Mario Molina','Nuevo siglo',45,200);
 
 insert into ventas values(1,15,1);
 insert into ventas values(2,18,1);
 insert into ventas values(3,25,100);
 insert into ventas values(1,15,50);

 if (object_id('pa_ventas')) is not null
  drop proc pa_ventas;

  create procedure pa_ventas
  as
   select v.numero,
   (l.titulo+'-'+l.autor+'-'+l.editorial) as libro,
   v.preciounitario,
   v.cantidad,
   (v.preciounitario*v.cantidad) as total
   from ventas as v
   join libros as l
   on v.codigo=l.codigo;

 exec pa_ventas;

 if (object_id('pa_vender')) is not null
  drop proc pa_vender;

 create procedure pa_vender
  @codigo int=null,
  @cantidad int=1
  as
   --verificamos que el c�digo exista
   if not exists (select *from libros where codigo=@codigo) or (@codigo is null)
     select 'Ingrese un codigo de libro v�lido'
   else
   begin --verificamos que haya stock
     declare @disponibles int
     select @disponibles= cantidad from libros where codigo=@codigo
     if (@disponibles<@cantidad)
       select 'Solo hay '+cast(@disponibles as varchar(10))+' disponibles'
     else
     begin
       declare @precio decimal(6,2) 
       select @precio= precio from libros where codigo=@codigo
       insert into ventas values(@codigo,@precio,@cantidad)
       update libros set cantidad=cantidad-@cantidad where @codigo=codigo
     end
   end;

 exec pa_vender 1,20;

 select *from ventas;
 select *from libros;

 exec pa_vender 9;

 exec pa_vender 5,250;
 ---------------------------------------
 if object_id('consultas') is not null
  drop table consultas;
 if object_id('medicos') is not null
  drop table medicos;

 create table medicos (
  documento char(8) not null,
  nombre varchar(30),
  constraint PK_medicos 
   primary key clustered (documento)
 );

 create table consultas(
  fecha datetime,
  medico char(8) not null,
  paciente varchar(30),
  constraint PK_consultas
   primary key (fecha,medico),
  constraint FK_consultas_medico
   foreign key (medico)
   references medicos(documento)
   on update cascade
   on delete cascade
 );

 insert into medicos values('22222222','Alfredo Acosta');
 insert into medicos values('23333333','Pedro Perez');
 insert into medicos values('24444444','Marcela Morales');

 insert into consultas values('2007/03/26 8:00','22222222','Juan Juarez');
 insert into consultas values('2007/03/26 8:00','23333333','Gaston Gomez');
 insert into consultas values('2007/03/26 8:30','22222222','Nora Norte');
 insert into consultas values('2007/03/28 9:00','22222222','Juan Juarez');
 insert into consultas values('2007/03/29 8:00','24444444','Nora Norte');
 insert into consultas values('2007/03/24 8:30','22222222','Hector Huerta'); 
 insert into consultas values('2007/03/24 9:30','23333333','Hector Huerta');

 if object_id('f_nombreDia') is not null
  drop function f_nombreDia;

 create function f_nombreDia
 (@fecha varchar(30))
  returns varchar(10)
  as
  begin
    declare @nombre varchar(10)
    set @nombre='Fecha inv�lida'   
    if (isdate(@fecha)=1)
    begin
      set @fecha=cast(@fecha as datetime)
      set @nombre=
      case datename(weekday,@fecha)
       when 'Monday' then 'lunes'
       when 'Tuesday' then 'martes'
       when 'Wednesday' then 'mi�rcoles'
       when 'Thursday' then 'jueves'
       when 'Friday' then 'viernes'
       when 'Saturday' then 's�bado'
       when 'Sunday' then 'domingo'
      end--case
    end--si es una fecha v�lida
    return @nombre
 end;
 
 if object_id('f_horario') is not null
  drop function f_horario;

 create function f_horario
 (@fecha varchar(30))
  returns varchar(5)
  as
  begin
    declare @nombre varchar(5)
    set @nombre='Fecha inv�lida'   
    if (isdate(@fecha)=1)
    begin
      set @fecha=cast(@fecha as datetime)
      set @nombre=rtrim(cast(datepart(hour,@fecha) as char(2)))+':'
      set @nombre=@nombre+rtrim(cast(datepart(minute,@fecha) as char(2)))
    end--si es una fecha v�lida
    return @nombre
 end;

 if object_id('f_fecha') is not null
  drop function f_fecha;

 create function f_fecha
 (@fecha varchar(30))
  returns varchar(12)
  as
  begin
    declare @nombre varchar(12)
    set @nombre='Fecha inv�lida'   
    if (isdate(@fecha)=1)
    begin
      set @fecha=cast(@fecha as datetime)
      set @nombre=rtrim(cast(datepart(day,@fecha) as char(2)))+'/'
      set @nombre=@nombre+rtrim(cast(datepart(month,@fecha) as char(2)))+'/'
      set @nombre=@nombre+rtrim(cast(datepart(year,@fecha) as char(4)))
    end--si es una fecha v�lida
    return @nombre
 end;

 select dbo.f_nombredia(fecha) as dia,
  dbo.f_fecha(fecha) as fecha,
  dbo.f_horario(fecha) as horario,
  paciente
  from consultas as c
  join medicos as m
  on m.documento=c.medico
  where m.nombre='Alfredo Acosta';

 select fecha, m.nombre
 from consultas as c
 join medicos as m
 on m.documento=c.medico
 where dbo.f_nombredia(fecha)='s�bado';

 declare @valor char(30)
 set @valor='2007/04/09'
 select dbo.f_nombreDia(@valor);
 ----------------------------------------
 if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  documento char(8) not null,
  apellido varchar(30) not null,
  nombre varchar(30) not null,
  domicilio varchar(30),
  ciudad varchar(30),
  fechanacimiento datetime,
  constraint PK_empleados
   primary key(documento)
 );

 insert into empleados values('22222222','Acosta','Ana','Avellaneda 123','Cordoba','1970/10/10');
 insert into empleados values('23333333','Bustos','Bernardo','Bulnes 234','Cordoba','1972/05/15');
 insert into empleados values('24444444','Caseros','Carlos','Colon 356','Carlos Paz','1980/02/25');
 insert into empleados values('25555555','Fuentes','Fabiola','Fragueiro 987','Jesus Maria','1984/06/12');

 if object_id('f_empleados') is not null
  drop function f_empleados;

 create function f_empleados
 (@opcion varchar(10)
 )
 returns @listado table
 (documento char(8),
 nombre varchar(60),
 domicilio varchar(60),
 nacimiento varchar(12))
 as 
 begin
  if @opcion not in ('total','parcial')
    set @opcion='parcial'
  if @opcion='total'
   insert @listado 
    select documento,
    (apellido+' '+nombre),
    (domicilio+' ('+ciudad+')'), 
    cast(fechanacimiento as varchar(12))
     from empleados
  else
   insert @listado
   select documento,apellido,ciudad,cast(datepart(year,fechanacimiento) as char(4))
   from empleados
  return
end;

 select *from dbo.f_empleados('total');

 select *from dbo.f_empleados();

 select *from dbo.f_empleados('');

 select *from dbo.f_empleados('parcial')
  where domicilio='Cordoba';
  -----------------------------------------------------
  if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  documento char(8) not null,
  apellido varchar(30) not null,
  nombre varchar(30) not null,
  domicilio varchar(30),
  ciudad varchar(30),
  fechanacimiento datetime,
  constraint PK_empleados
   primary key(documento)
 );

 insert into empleados values('22222222','Acosta','Ana','Avellaneda 123','Cordoba','1970/10/10');
 insert into empleados values('23333333','Bustos','Bernardo','Bulnes 234','Cordoba','1972/05/15');
 insert into empleados values('24444444','Caseros','Carlos','Colon 356','Carlos Paz','1980/02/25');
 insert into empleados values('25555555','Fuentes','Fabiola','Fragueiro 987','Jesus Maria','1984/06/12');

 if object_id('f_empleados') is not null
  drop function f_empleados;

 create function f_empleados
 (@opcion varchar(10)
 )
 returns @listado table
 (documento char(8),
 nombre varchar(60),
 domicilio varchar(60),
 nacimiento varchar(12))
 as 
 begin
  if @opcion not in ('total','parcial')
    set @opcion='parcial'
  if @opcion='total'
   insert @listado 
    select documento,
    (apellido+' '+nombre),
    (domicilio+' ('+ciudad+')'), 
    cast(fechanacimiento as varchar(12))
     from empleados
  else
   insert @listado
   select documento,apellido,ciudad,cast(datepart(year,fechanacimiento) as char(4))
   from empleados
  return
end;

 select *from dbo.f_empleados('total');

 select *from dbo.f_empleados();

 select *from dbo.f_empleados('');

 select *from dbo.f_empleados('parcial')
  where domicilio='Cordoba';