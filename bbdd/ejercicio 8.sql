create table actores2 (
    identificador int PRIMARY KEY,
    nombre VARCHAR2(100),
    identificador_personaje INT
);
create table personajes2(
    identificador int PRIMARY KEY,
     nombre VARCHAR2(100),
     pelicula varchar2(100),
     identificador_actor int
);
alter table actores2 add CONSTRAINT identificador_personaje_actores2_personajes2_FK
FOREIGN KEY(identificador_personaje) references personajes2;

alter table personajes2 add CONSTRAINT identificador_actor_personajes2_actores2_FK
FOREIGN KEY(identificador_actor) references actores2;