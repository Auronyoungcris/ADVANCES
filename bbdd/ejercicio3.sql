create table aulas(
    Numero int,
    planta int,
    situacion varchar2(100));

alter table aulas add primary key (Numero,planta);

create table estudiantes(
    Numero_Matricula int,
    Nombre varchar2(100),
    Direccion varchar2(100)
);

alter table estudiantes add primary key (Numero_Matricula);

create TABLE asignaturas(
    Denominacion varchar2(100),
    ciclo varchar2(50)
);
alter table asignaturas add primary key (Denominacion,ciclo)
create table estudios(
    Numero int,
    Planta int,
    Numero_Matricula int,
    Denominacion VARCHAR2(100),
    ciclo varchar2(50),
    hora int
);
alter table estudios add primary key (Numero_Matricula, numero,planta,Denominacion,ciclo);
alter table estudios add constraint Numero_matricula_estudios_estudiantes_fk 
foreign key(Numero_Matricula) references estudiantes;
alter table estudios add constraint ciclo_estudios_estudiantes_fk 
foreign key(Denominacion,ciclo) references asignaturas;
alter table estudios add constraint Numero_Planta_estudios_aulas_fk 
foreign key(Numero,planta) references aulas;