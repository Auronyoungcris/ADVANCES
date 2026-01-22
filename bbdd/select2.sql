ALTER SESSION SET nls_date_format='DD-MM-YYYY HH24:MI:SS';
DROP TABLE FUTBOLISTAS CASCADE CONSTRAINTS;
DROP TABLE EQUIPOS CASCADE CONSTRAINTS;
DROP TABLE PARTIDOS CASCADE CONSTRAINTS;

CREATE TABLE FUTBOLISTAS(
ID CHAR(6) PRIMARY KEY CHECK( REGEXP_LIKE( ID, 'F[0-9][0-9][0-9]20' )),
NOMBRE VARCHAR(100),
APELLIDOS VARCHAR(300),
FECHA_NACIMIENTO DATE,
POSICION VARCHAR(50) CHECK( POSICION LIKE 'PORTERO' OR POSICION LIKE 'DEFENSA' OR POSICION LIKE 'MEDIOCENTRO' OR POSICION LIKE 'DELANTERO' ),
SALARIO NUMBER(12,2) CHECK( SALARIO > 50000),
ID_EQUIPO INT
);

CREATE TABLE EQUIPOS(
ID INT PRIMARY KEY,
NOMBRE VARCHAR(100),
ESTADIO VARCHAR(100),
PRESUPUESTO NUMBER(20,2)
);

CREATE TABLE PARTIDOS(
ID INT PRIMARY KEY,
ARBITRO VARCHAR(200),
RESULTADO VARCHAR(5) CHECK( REGEXP_LIKE( RESULTADO, '[0-9][0-9]-[0-9][0-9]' )),
ESTADIO VARCHAR(100),
FECHA DATE,
ID_EQUIPO_CASA INT,
ID_EQUIPO_FUERA INT
);

ALTER TABLE FUTBOLISTAS
ADD CHECK (FECHA_NACIMIENTO > '31/DEC/1974');
ALTER TABLE FUTBOLISTAS
ADD FOREIGN KEY (ID_EQUIPO) REFERENCES EQUIPOS(ID);

ALTER TABLE PARTIDOS
ADD FOREIGN KEY (ID_EQUIPO_CASA) REFERENCES EQUIPOS(ID);
ALTER TABLE PARTIDOS
ADD FOREIGN KEY (ID_EQUIPO_FUERA) REFERENCES EQUIPOS(ID);

DELETE FROM EQUIPOS;
INSERT INTO EQUIPOS VALUES (1,'EQUIPO A', 'ESTADIO A',1000000);
INSERT INTO EQUIPOS VALUES (2,'EQUIPO B', 'ESTADIO B',2000000);
INSERT INTO EQUIPOS VALUES (3,'EQUIPO C', 'ESTADIO C',3000000);

DELETE FROM FUTBOLISTAS;
INSERT INTO FUTBOLISTAS VALUES ('F00120','PEDRO','GOMEZ','22/01/1980','PORTERO',100000,1);
INSERT INTO FUTBOLISTAS VALUES ('F00220','PEDRO LUIS','GOMEZ','20/04/1985','DEFENSA',110000,1);
INSERT INTO FUTBOLISTAS VALUES ('F00320','LUIS','GALVEZ','12/01/1990','DELANTERO',80000,1);
INSERT INTO FUTBOLISTAS VALUES ('F00420','ANTONIO','DOMINGUEZ','25/06/1981','PORTERO',340000,2);
INSERT INTO FUTBOLISTAS VALUES ('F00520','JESUS','FERNANDEZ','02/01/1995','MEDIOCENTRO',140000,2);
INSERT INTO FUTBOLISTAS VALUES ('F00620','DIEGO','DIAZ','05/04/1987','PORTERO',160000,2);
INSERT INTO FUTBOLISTAS VALUES ('F00720','PABLO','CARO','27/01/1988','DEFENSA',200000,3);
INSERT INTO FUTBOLISTAS VALUES ('F00820','ESTEBAN','BENITEZ','29/09/2000','DEFENSA',300000,3);
INSERT INTO FUTBOLISTAS VALUES ('F00920','ENRIQUE','ALVAREZ','30/09/2001','MEDIOCENTRO',120000,3);

DELETE FROM PARTIDOS;
INSERT INTO PARTIDOS VALUES (1,'ARBITRO A','00-00','ESTADIO A','01/01/2020',1,2);
INSERT INTO PARTIDOS VALUES (2,'ARBITRO B','01-00','ESTADIO A','08/01/2020',1,3);
INSERT INTO PARTIDOS VALUES (3,'ARBITRO C','01-01','ESTADIO B','15/01/2020',2,3);
INSERT INTO PARTIDOS VALUES (4,'ARBITRO B','02-00','ESTADIO B','22/01/2020',2,1);
INSERT INTO PARTIDOS VALUES (5,'ARBITRO A','04-01','ESTADIO C','29/01/2020',3,1);
INSERT INTO PARTIDOS VALUES (6,'ARBITRO A','03-03','ESTADIO C','05/02/2020',3,2);

UPDATE FUTBOLISTAS SET ID_EQUIPO = 2 WHERE ID LIKE 'F00120';
UPDATE FUTBOLISTAS SET ID_EQUIPO = 3 WHERE ID LIKE 'F00420';
UPDATE FUTBOLISTAS SET ID_EQUIPO = 1 WHERE ID LIKE 'F00920';

DELETE FROM FUTBOLISTAS WHERE ID LIKE 'F00120' OR ID LIKE 'F00420';
commit;
select * from equipos;
select FUTBOLISTAS.POSICION from FUTBOLISTAS;
select DISTINCT FUTBOLISTAS.POSICION from futbolistas;
select DISTINCT FUTBOLISTAS.POSICION "Demarcación" from futbolistas;
select DISTINCT F.POSICION "Demarcación" from futbolistas F;
SELECT nombre from FUTBOLISTAS order by nombre desc;
select * from FUTBOLISTAS, equipos where id_equipo = equipos.id;
select salario from FUTBOLISTAS where salario> 190000 and salario<250000;
select * from FUTBOLISTAS where FUTBOLISTAS.POSICION ='DEFENSA';
select * from futbolistas where nombre like 'P%' and FUTBOLISTAS.POSICION= 'DEFENSA' order by FUTBOLISTAS.POSICION desc, nombre ASC;
select nombre || ' ' || FUTBOLISTAS.APELLIDOS from FUTBOLISTAS;
select concat(nombre,concat (' ', apellidos)) from FUTBOLISTAS;
select salario || ' euros'"Salario neto", salario*1.5 || ' euros' "Salario Bruto" from FUTBOLISTAS;
select ABS(-10)from dual;
select exp(4) from dual;
SELECT ceil(15.3) from dual;
SELECT floor(15.3) from dual;
SELECT mod(15,3) from dual;
SELECT power(15,2) from dual;
select round(15.789,1) from dual;
select sqrt(128) from dual;
select trunc(15.789,1) from dual;
select trunc(15.789) from dual;
select trunc(157.89,-2) from dual;
select sign(-15) from dual;
select chr(80) from dual;
select ascii('n') from dual;
select concat(upper(nombre), concat(' ',lower(apellidos))) from futbolistas;
--4
SELECT DISTINCT INITCAP(POSICION) 
    FROM FUTBOLISTAS
    ORDER BY INITCAP(POSICION);
--ESTO SE DEBE A QUE TENGO QUE ORDENAR POR EL VALOR MODIFICADO DE POSICION
--OTRA FORMA RÁPIDA
SELECT DISTINCT INITCAP(POSICION) 
    FROM FUTBOLISTAS
    ORDER BY 1 ASC;
--5
SELECT NOMBRE,LPAD(SUBSTR(NOMBRE,1,3),5,'-'),'--' || SUBSTR(NOMBRE,1,3),CONCAT('--',SUBSTR(NOMBRE,1,3))
    FROM FUTBOLISTAS
    WHERE ID_EQUIPO = 1;
--6
SELECT NOMBRE,RPAD(SUBSTR(NOMBRE,1,3),5,'-'),SUBSTR(NOMBRE,1,3) || '--',CONCAT(SUBSTR(NOMBRE,1,3),'--')
    FROM FUTBOLISTAS
    WHERE ID_EQUIPO = 1;
--7
SELECT REPLACE(NOMBRE,'LUIS','L.') FROM FUTBOLISTAS;
--8
SELECT SUBSTR(APELLIDOS,1,3) FROM FUTBOLISTAS;
--9
SELECT REPLACE(NOMBRE,'LUIS','L.'),LENGTH(APELLIDOS)
    FROM FUTBOLISTAS;

--EJERCICIO 15
--1
SELECT EXTRACT(DAY FROM SYSDATE),
    EXTRACT(MONTH FROM SYSDATE),
    SYSDATE
    FROM DUAL;
--2
SELECT ADD_MONTHS(SYSDATE,6) FROM DUAL;
--3
SELECT FLOOR(MONTHS_BETWEEN(SYSDATE,FECHA_NACIMIENTO))
    FROM FUTBOLISTAS;
--4
SELECT LAST_DAY(SYSDATE) FROM DUAL;
--5
SELECT NEXT_DAY(SYSDATE,'LUNES') FROM DUAL;
--SELECT NEXT_DAY(SYSDATE,'MONDAY') FROM DUAL;
--6
SELECT SYSDATE-4,SYSDATE+1 FROM DUAL;
--EJERCICIO 15B
/*SE QUIERE MOSTRAR EL NOMBRE DEL FUTBOLISTA, JUNTO
A UNA BARRA VERTICAL Y DESPUÉS EL DÍA DE SU NACIMIENTO
SEGUIDO DE TRES CARACTERES DEL MES CUANDO NACIÓ
EJE: NOMBRE|21MAR
*/
SELECT NOMBRE || '|'|| EXTRACT(DAY FROM FECHA_NACIMIENTO) || SUBSTR(TO_CHAR(FECHA_NACIMIENTO,'MONTH'),1,3)
    FROM FUTBOLISTAS;
--LA OTRA OPCIÓN SERÍA USAR LA MÁSCARA MON QUE ME DA DIRECTAMENTE ESOS TRES CARACTERES DEL MES
SELECT NOMBRE || '|'|| EXTRACT(DAY FROM FECHA_NACIMIENTO) || TO_CHAR(FECHA_NACIMIENTO,'MON')
    FROM FUTBOLISTAS;
SELECT NOMBRE || '|'|| EXTRACT(DAY FROM FECHA_NACIMIENTO) || SUBSTR(TO_CHAR(FECHA_NACIMIENTO,'MONTH'),1,3)
    FROM FUTBOLISTAS;
--LA OTRA OPCIÓN SERÍA USAR LA MÁSCARA MON QUE ME DA DIRECTAMENTE ESOS TRES CARACTERES DEL MES
SELECT NOMBRE || '|'|| EXTRACT(DAY FROM FECHA_NACIMIENTO) || TO_CHAR(FECHA_NACIMIENTO,'MON')
    FROM FUTBOLISTAS;
--CAST
--TO_CHAR()
--TO_NUMBER()
SELECT TO_NUMBER('1')+TO_NUMBER('2') FROM DUAL;
--TO_DATE()
SELECT TO_NUMBER('123€','999L') FROM DUAL;
SELECT TO_NUMBER('$123','$999') FROM DUAL;
SELECT TO_NUMBER('-$123','S$999') FROM DUAL;
--TO_CHAR()
SELECT TO_CHAR(SYSDATE,'HH24') FROM DUAL;
ALTER SESSION SET NLS_TERRITORY = 'SPAIN'; --SI TENEMOS DOMINGO COMO PRIMER DÍA EN LUGAR DE LUNES
--TO_DATE()
SELECT TO_DATE('09-01-2026','DD-MM-YYYY') FROM DUAL;
SELECT TO_DATE('01-09-2026','MM-DD-YYYY') FROM DUAL;

--EJERCICIO 16
--1
SELECT TO_NUMBER('1000.45','9999.99') FROM DUAL;
--2
SELECT TO_NUMBER('1000.45€','9999.99L') FROM DUAL;
--3
SELECT TO_NUMBER('-$1000.45','S$9999.99') FROM DUAL;
--4
SELECT TO_CHAR(SYSDATE,'DD/MM/YYYY'),
    SYSDATE,
    TO_CHAR(SYSDATE,'DD-mon-YYYY'),
    TO_CHAR(SYSDATE,'DD')||' de ' || TRIM(TO_CHAR(SYSDATE,'month')) || ' de ' || TO_CHAR(SYSDATE,'YYYY')
    FROM DUAL;
--5
SELECT TO_NUMBER(SUBSTR(ID,4,3)) FROM FUTBOLISTAS;
--6
SELECT TO_CHAR(FECHA_NACIMIENTO,'YYYY') 
    FROM FUTBOLISTAS
    ORDER BY TO_CHAR(FECHA_NACIMIENTO,'YYYY');
SELECT TO_CHAR(FECHA_NACIMIENTO,'YYYY') 
    FROM FUTBOLISTAS
    ORDER BY 1;  
--16B. NOMBRE DE LOS FUTBOLISTAS NACIDOS EN AÑO PAR
SELECT NOMBRE,FECHA_NACIMIENTO
    FROM FUTBOLISTAS
    WHERE MOD(TO_NUMBER(TO_CHAR(FECHA_NACIMIENTO,'YYYY')),2) = 0;
--16C. NOMBRE DE LOS FUTBOLISTAS NACIDOS EN LUNES, MIÉRCOLES O SÁBADO
SELECT NOMBRE,TRIM(TO_CHAR(FECHA_NACIMIENTO,'DAY'))
    FROM FUTBOLISTAS
    WHERE TRIM(TO_CHAR(FECHA_NACIMIENTO,'DAY')) IN ('LUNES','MIÉRCOLES','SÁBADO');
SELECT NOMBRE
    FROM FUTBOLISTAS
    WHERE TRIM(TO_CHAR(FECHA_NACIMIENTO,'D')) IN (1,3,6);
SELECT NOMBRE,TRIM(TO_CHAR(FECHA_NACIMIENTO,'DAY'))
    FROM FUTBOLISTAS
    WHERE TRIM(TO_CHAR(FECHA_NACIMIENTO,'DAY')) = 'LUNES'
        OR TRIM(TO_CHAR(FECHA_NACIMIENTO,'DAY')) = 'MIÉRCOLES'
        OR TRIM(TO_CHAR(FECHA_NACIMIENTO,'DAY')) = 'SÁBADO';
select decode(EQUIPOS.PRESUPUESTO,1000000,'1000K',2000000,'2000K',3000000,'3000K') "Presupuesto K" from equipos;

select posicion, COUNT(*) "Cantidad" from FUTBOLISTAS group by posicion HAVING FUTBOLISTAS.POSICION='DEFENSA' or FUTBOLISTAS.POSICION='DELANTERO';
select posicion, COUNT(*) "Cantidad" from FUTBOLISTAS group by posicion HAVING FUTBOLISTAS.POSICION in('DEFENSA','DELANTERO') order by count(*);
select sum(salario) from futbolistas;
select ID_EQUIPO, sum(salario) from futbolistas group by ID_EQUIPO;
select ID_EQUIPO, sum(salario) from futbolistas group by ID_EQUIPO having sum(salario)>200000 and sum(salario)<400000;
select  min(salario) from FUTBOLISTAS;
select nombre , salario from futbolistas where salario =(select  min(salario) from FUTBOLISTAS);
select  max(salario) from FUTBOLISTAS;
select  max(FUTBOLISTAS.FECHA_NACIMIENTO) from FUTBOLISTAS;
select max(EXTRACT(year from FUTBOLISTAS.FECHA_NACIMIENTO)) from FUTBOLISTAS;
select nombre, salario from futbolistas where extract(year from fecha_nacimiento) = (select max(extract(year from fecha_nacimiento ))from futbolistas);
select avg(salario) from FUTBOLISTAS;
select trunc(avg(salario)) || '€' "salario medio truncado" from FUTBOLISTAS;

alter table futbolistas add altura int;
alter table futbolistas add peso number(4,1);
alter table futbolistas modify altura number(3,2);
update futbolistas set altura= 1.79 where nombre='PEDRO LUIS';
COMMIT;
update futbolistas set peso= 76 where nombre='PEDRO LUIS';
update futbolistas set altura= 1.74 where nombre='LUIS';
update futbolistas set peso= 71.5 where nombre='LUIS';
COMMIT;
update futbolistas set altura= 1.69 where nombre='JESUS';
update futbolistas set peso= 66 where nombre='JESUS';
update futbolistas set altura= 1.89 where nombre='DIEGO';
update futbolistas set peso= 82 where nombre='DIEGO';
update futbolistas set altura= 1.83 where nombre='PABLO';
update futbolistas set peso= 84 where nombre='PABLO';
update futbolistas set altura= 1.80 where nombre='ESTEBAN';
update futbolistas set peso= 81.50 where nombre='ESTEBAN';
update futbolistas set altura= 1.62 where nombre='ENRIQUE';
update futbolistas set peso= 60 where nombre='ENRIQUE';
COMMIT;
select altura from futbolistas;
select nombre, altura  from FUTBOLISTAS where altura=(select max(altura) from futbolistas);
select apellidos, peso from FUTBOLISTAS where peso=(select min(peso) from futbolistas);
select count(*) from FUTBOLISTAS where altura  between 1.75 and 1.82;
select round(avg(altura),2) from FUTBOLISTAS;
select nombre  from futbolistas where salario= (select max(salario)from futbolistas);
select fecha_nacimiento from futbolistas where salario=(select min(salario) from futbolistas);
select round(avg(altura),2) from FUTBOLISTAS group by FUTBOLISTAS.POSICION;
select count(*), id_equipo from futbolistas group by id_equipo;
select count(*), id_equipo from futbolistas group by id_equipo having id_equipo=1 or id_equipo=2;

select * from futbolistas, equipos where futbolistas.id_equipo = equipos.id;
alter table equipos rename column id to id_equipo;
alter table equipos rename column nombre to nombre_equipo;
COMMIT;
select *from futbolistas natural join equipos;
select futbolistas.nombre, EQUIPOS.NOMBRE_EQUIPO from futbolistas join equipos on FUTBOLISTAS.ID_EQUIPO = EQUIPOS.ID_EQUIPO;
INSERT into futbolistas values('F12320','LUIS','GARCIA','11/01/2000','DELANTERO',100000,NULL,NULL,NULL);
INSERT into FUTBOLISTAS(ID,NOMBRE) values ('F23420','ANTONY');
COMMIT;
insert into equipos values (4,'PFF','INDETERMINADO',0);
COMMIT;
select FUTBOLISTAS.nombre,equipos.nombre_equipo from FUTBOLISTAS inner join equipos on EQUIPOS.ID_EQUIPO=FUTBOLISTAS.ID_EQUIPO;
select * from FUTBOLISTAS left join equipos on equipos.id_equipo =FUTBOLISTAS.id_equipo;
select * from futbolistas right join equipos on equipos.id_equipo = FUTBOLISTAS.ID_EQUIPO;
select * from futbolistas full outer  join equipos on equipos.id_equipo =futbolistas.id_equipo;
select futbolistas.nombre, FUTBOLISTAS.apellidos, EQUIPOS.NOMBRE_EQUIPO from FUTBOLISTAS join equipos on futbolistas.id_equipo=equipos.ID_EQUIPO where futbolistas.posicion ='DEFENSA';
select futbolistas.nombre, FUTBOLISTAS.apellidos, EQUIPOS.NOMBRE_EQUIPO from FUTBOLISTAS right join equipos on futbolistas.id_equipo=equipos.ID_EQUIPO;
select futbolistas.nombre, FUTBOLISTAS.apellidos, EQUIPOS.NOMBRE_EQUIPO from FUTBOLISTAS left join equipos on futbolistas.id_equipo=equipos.ID_EQUIPO;

select partidos.id, PARTIDOS.ARBITRO, partidos.RESULTADO, partidos.ESTADIO, partidos.FECHA, casa.NOMBRE_EQUIPO "casa", fuera.NOMBRE_EQUIPO "fuera"
 from partidos join equipos casa on casa.ID_EQUIPO = PARTIDOS.ID_EQUIPO_CASA 
 join equipos fuera on fuera.ID_EQUIPO =partidos.ID_EQUIPO_FUERA;
select FUTBOLISTAS.SALARIO from FUTBOLISTAS UNION select EQUIPOS.PRESUPUESTO from EQUIPOS;
select estadio from equipos INTERSECT select estadio from partidos;
select estadio from equipos minus select estadio from partidos;
select id_equipo from equipos where EQUIPOS.NOMBRE_EQUIPO = 'EQUIPO A';
select nombre from FUTBOLISTAS where id_equipo = (select id_equipo from equipos where EQUIPOS.NOMBRE_EQUIPO = 'EQUIPO A');
select nombre from FUTBOLISTAS join equipos on FUTBOLISTAS.ID_EQUIPO = EQUIPOS.ID_EQUIPO where equipos.NOMBRE_EQUIPO = 'EQUIPO A';
select id_equipo from equipos where EQUIPOS.NOMBRE_EQUIPO = 'EQUIPO A'or EQUIPOS.NOMBRE_EQUIPO = 'EQUIPO B';
select lower(FUTBOLISTAS.NOMBRE) from FUTBOLISTAS where id_equipo in (select id_equipo from equipos where EQUIPOS.NOMBRE_EQUIPO = 'EQUIPO A'or equipos.nombre_equipo = 'EQUIPO B');
select lower(FUTBOLISTAS.NOMBRE) from FUTBOLISTAS join equipos on FUTBOLISTAS.ID_EQUIPO =equipos.ID_EQUIPO where nombre_equipo = 'EQUIPO A' or nombre_equipo ='EQUIPO B';