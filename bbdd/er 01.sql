CREATE TABLE LOTES(
    codigo int,
    num_kg NUMBER(8,2),
    precio_kg_salida number(8,2),
    precio_kg_vendido number(8,2),
    fecha date
);
alter table lotes add constraints codigo_lote_pk primary key (codigo);
alter table lotes add constraints chcknum_kg check (num_kg>0);
alter table lotes add constraints chckprecio_kg_salida check (precio_kg_salida>0);
alter table lotes 
add constraints chckprecio_kg_vendido check (precio_kg_vendido>0 and precio_kg_vendido>precio_kg_salida);
alter table lotes add constraints chckfecha check (fecha is not null);