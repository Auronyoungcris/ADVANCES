/*integer /int / number 43
varchar / varchar2
char
date  dd/mm/yyyy dd-mm-yyyy yyyy-mm-dd mm-dd-yyyy
number(2) 0..99
number(3,1) 11,87
*/
--comentario de una linea
/* comentario
    multilinea
    fin
*/
<!-- comentario html -->
//
/**/
CREATE TABLE alumnos(
    id int,
    nombre varchar2(50),
    apellido varchar2(100),
    dni char(9)
);
alter table alumnos add fecha_nacimiento date;
alter table alumnos add drop column fecha_nacimiento;
alter table alumnos rename column apellidos to apellido;
drop table alumnos;
CREATE TABLE alumnos(
    id int,
    nombre varchar2(15),
    apellido varchar2(50),
    dni char(9)
);
alter table alumnos add codigo_postal number(5);
alter table alumnos add fecha_nacimiento date;
alter table alumnos rename column codigo_postal to c_postal;
alter table alumnos modify apellido varchar2(200);
alter table alumnos drop column c_postal;
alter table alumnos rename column fecha_nacimiento to f_nacimiento;

create table farmacias(
    codigo int primary key,
    nombre varchar2(50),
    direccion varchar2(50),
    telefono int,
    ciudad varchar2(50)
    );
drop table farmacias cascade constraints;
create table farmacias1(
    codigo int ,
    nombre varchar2(50),
    direccion varchar2(50),
    telefono int,
    ciudad varchar2(50)
    );
alter table farmacias1 add constraints pk_codigo_farmacias primary key(codigo);
drop table farmacias1 cascade constraints;
create table farmacias1(
    codigo int ,
    nombre varchar2(50),
    direccion varchar2(50),
    telefono int,
    ciudad varchar2(50)
    constraints pk_codigo_farmacias primary key
    );
create table alumnos1(
    dni char(9) primary key
    );
create table alumnos2(
    dni char(9) 
    );
alter table alumnos2 add constraint pk_dni_alumnos2 primary key(dni);
create table alumnos3 (
    dni char(9)
    constraints pk_dni_alumnos3 primary key
    );
CREATE TABLE alumnos4(
     dni CHAR(9)
);
ALTER TABLE ALUMNOS4 ADD CONSTRAINT PK_DNI_ALUMNOS4 PRIMARY KEY(DNI); 
create table examenes(
    id int primary key,
    nota number(3,1),
    id_modulo int,
    dni_alumno char(9)
    );
alter table examenes add foreign key (dni_alumno) references alumnos1;
create table examenes2(
    id int primary key,
    nota number(3,1),
    id_modulo int,
    dni_alumno char(9)
    );
alter table examenes2 add constraint fk_dni_alumno_examenes2_alumnos2 foreign key(dni_alumno) references alumnos2;
create table examenes3(
    id int,
    nota number(3,1),
    id_modulo int,
    dni_alumno char(9),
    foreign key(dni_alumno) references alumnos3
    );
ALTER TABLE EXAMENES3 ADD PRIMARY KEY (ID);
ALTER TABLE EXAMENES3 DROP CONSTRAINT SYS_C009262;
ALTER TABLE EXAMENES3 DROP CONSTRAINT SYS_C009271;
describe alumnos1;
ALTER TABLE ALUMNOS1 RENAME CONSTRAINT SYS_C009262 TO PK_DNI_ALUMNOS1;

create table localizades(
    id int ,
    localidad varchar2(100)
);
drop table localizades;
create table localidades(
    id int ,
    localidad varchar2(100)
);
alter table localidades add primary key(id);
alter table alumnos add id_localidad int;
alter table alumnos add constraint id_localidad_alumnos_fk 
foreign key(id_localidad) references localidades;
alter table localidades drop primary key;

