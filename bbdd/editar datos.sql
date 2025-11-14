create table estudiantes3(
    id int,
    Nombre varchar(50),
    apellidos varchar(100),
    edad INT
);
alter table estudiantes3 add CONSTRAINT id_estudiantes3_PK primary key(id);
insert into ESTUDIANTES3 (id,nombre,apellidos) values (1,'Luis','Garcia');
insert into estudiantes3(id,edad) values (2,null);
insert into estudiantes3(id, nombre) values(3,'Pedro');
insert into estudiantes3(id,apellidos,edad) values(4,'Perez',22);
alter table estudiantes3 add ciclo varchar2(50);
alter table estudiantes3 drop ciclo;