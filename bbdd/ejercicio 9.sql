create table directivos(
    Dni int PRIMARY KEY,
    Nombre VARCHAR2(100),
    puesto VARCHAR2(100),
    comision number(3,1),
    departamento VARCHAR2(100)
);
create table comerciales(
    Dni int PRIMARY KEY,
    Nombre VARCHAR2(100),
    puesto VARCHAR2(100),
    comision number(3,1),
    departamento VARCHAR2(100)
);
create table tecnicos(
    Dni int PRIMARY KEY,
    Nombre VARCHAR2(100),
    puesto VARCHAR2(100),
    comision number(3,1),
    equipo VARCHAR2(100)
);
drop table comerciales cascade CONSTRAINT;
