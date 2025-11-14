create TABLE piezas2 (
    id int,
    nombre VARCHAR2(100),
    stock int
);
create TABLE fabricantes2(
    id int,
    marca VARCHAR2(50)
);
alter table piezas2 add constraints id_piezas2_Pk primary key(id); 
alter table piezas2 add id_fabricantes int;
alter table fabricantes2 add constraints id_fabricantes2_pk primary key(id);
alter table piezas2 add constraints id_fabricantes2_piezas2_fabricantes2_FK 
foreign key (id_fabricantes) references fabricantes2;
alter table piezas2 add constraints chkpiezasstock check(stock>0);
drop table piezas2 cascade constraints;
create TABLE piezas2 (
    id int,
    nombre VARCHAR2(100),
    id_fabricantes int,
    stock int,
    primary key(id),
    foreign key (id_fabricantes) references fabricantes2,
    check (stock >=id_fabricantes)
);
alter table piezas2 add constraints chknombre check(nombre in('daniel'));
alter table piezas2 add constraints chkid check(id in('[A-Z],[0-9],[0-9],[A-Z],[0-9],[A-Z]'));
alter table piezas2 add codigo char(5);
alter table piezas2 add constraints chcodigo check(regexp_like(codigo,'[P],[0-9],[0-9],[0-9],[A-Z]'));