create table CUENTAS_BANCARIAS(
    numero int PRIMARY KEY,
    saldo number(3,1)
);
create table transacciones(
    codigo int PRIMARY key,
    tipo VARCHAR2(50),
    cantidad int,
    numero int
);
alter
alter table transacciones add constraint numero_cuentas_bancarias_transacciones
foreign key(numero) references cuentas_bancarias;