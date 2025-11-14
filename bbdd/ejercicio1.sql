create table categorias(
    codigo int PRIMARY key,
    descripcion varchar2(50)
);
create table productos(
    id int primary key,
    Nombre varchar2(50),
    Precio number(1,13)
);
alter table productos MODIFY precio number(3,1);