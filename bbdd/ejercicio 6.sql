create table empleados(
    dni char(9) primary key,
    Nombre VARCHAR2(100),
    DNISupervisor char(9)
);
alter table empleados MODIFY DNISupervisor char(9);
alter table empleados add foreign key(DNISupervisor) REFERENCES empleados;