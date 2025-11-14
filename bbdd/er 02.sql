create table  personas(
    dni char(9) primary key,
    nombre varchar(50)
);
alter table personas add constraint chcdni check(regexp_like(dni,'[0-9],[0-9],[0-9],[0-9],[0-9],[0-9],[0-9],[0-9],[A-Z]'));
alter table personas add talla varchar(2) check(talla in ('S','M','L','XL'));



