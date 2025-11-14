Create TABLE piezas(
    codigo int primary key,
    descripcion varchar2(100)
);
create table compuestos(
    codigo int,
    codigo_c INT
);
alter table compuestos add PRIMARY KEY(codigo, codigo_c);
alter table compuestos add CONSTRAINT codigo_compuestos_piezas_fk
FOREIGN KEY(codigo) REFERENCES piezas;
