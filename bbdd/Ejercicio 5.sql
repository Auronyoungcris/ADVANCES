create table representantes(
    Id_licencia int,
    Nombre varchar2(100)
);
create table actores(
    Id_carne int,
    Nombre_actor varchar2(100),
    Nombre_real varchar2(100),
    Id_licencia_representate int,
    contrato varchar2(100)
);
alter table representantes add primary key (id_licencia);
alter table actores add primary key (id_carne);
alter table actores add CONSTRAINT id_licencia_representante_actores_representates_FK 
FOREIGN key (Id_licencia_representate) REFERENCES representantes; 