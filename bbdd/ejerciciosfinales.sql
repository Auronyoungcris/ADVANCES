create table estacion(
    nombre varchar2(50),
    dirección VARCHAR2(100),
    telefono int,
    dni_responsable varchar2(50)
);
create table responsable(
    nombre varchar2(50),
    apellidos VARCHAR2(100),
    dni varchar2(50),
    edad int,
    dirección VARCHAR2(100),
    tipo_telefono varchar2(50),
    Numero_telefono int
);
alter table estacion add id_estacion int;
alter table estacion add CONSTRAINT id_estacion_PK PRIMARY key(id_estacion);
alter table responsable  add constraint dni_responsable_pk primary key (dni);
alter table estacion add constraint dni_responsable_estacion_fk foreign key (dni_responsable) REFERENCES responsable;
alter table estacion add numero_andenes int;
alter table estacion add Volumen_entradas int;
alter table estacion add localidad varchar2(50);
alter table estacion add numero_empresas_operan int;
