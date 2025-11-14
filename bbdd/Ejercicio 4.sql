create table aulas2(
    Numero int,
    planta int,
    situacion varchar2(100));
alter TABLE aulas2 ADD PRIMARY KEY(Numero,Planta);
create table estudiantes2(
    Numero_Matricula int,
    Nombre varchar2(100),
    Direccion varchar2(100)
);
alter TABLE estudiantes2 ADD PRIMARY KEY(Numero_Matricula);
create TABLE asignaturas2(
    Denominacion varchar2(100),
    ciclo varchar2(50)
);
alter TABLE asignaturas2 ADD PRIMARY KEY(Denominacion,ciclo);
CREATE table estudios2(
    ID int PRIMARY KEY,
     Numero int,
     planta int,
     Numero_Matricula int,
     Denominacion varchar2(100),
     ciclo varchar2(50),
     Hora int
)
alter table estudios2 add constraint Numero_Planta_estudios2_aulas2_fk 
foreign key(Numero,planta) references aulas2;

alter table estudios2 add constraint Numero_Matricula_estudios2_estudiantes2_fk 
foreign key(Numero_Matricula) references estudiantes2;

alter table estudios2 add constraint Denominacion_ciclo_estudios2_asignaturas2_fk 
foreign key(Denominacion,ciclo) references asignaturas2;