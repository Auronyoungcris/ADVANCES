1.	Indica cuántos productos son del material MECANICO.

select count(*) from productos where material = 'MECANICO';

2.	Se quiere saber el nombre en minúsculas y el precio (redondeado a un decimal) de los productos cuyo precio esté entre 2 y 20 euros.

select lower(nombre) "Nombre",round(precio,1) "Precio" from productos where precio <=20 and precio>=2;

3.	¿Cuántas compras se hicieron en 2022?

select count(ref)"Número de compras" from compras where fecha >= '01/01/2022' and fecha<='31/12/2022';

4.	¿Cuál es el precio medio (AVG) de los productos cuyo nombre empieza por la letra M?

select avg(precio) from productos where nombre like'M%';

5.	¿Cuál es el teléfono de los clientes cuyo apellido termina en EZ?

select tfno from clientes where nombre like '%EZ';

6.	¿Cuántas compras ha hecho MARIA ALVAREZ? Indica solo el número.

select count(ref)"Número de compras" from compras join clientes on compras.cli = clientes.id where clientes.nombre ='MARIA ALVAREZ';

7.	Queremos mostrar una lista agrupada con los nombres de los materiales de los productos y el peso medio de estos.

select material, avg(peso) from productos group by material;

8.	Indica el nombre de todos los productos ordenados por el nombre y en orden alfabético (A…Z).

select nombre from productos order by nombre;

9.	¿Cuál es la suma total de las ventas de productos realizadas en 2023 (registros de la tabla compras y precio de la tabla productos)?

select sum(precio) from productos join compras on productos.id = compras.pro where compras.fecha>='01/01/2023' and compras.fecha<='31/12/2023';

10.	Se quiere sabe el nombre de los productos, sin repetir, que ha comprado ANDRES PEREZ (utiliza el nombre del cliente, no su id).

select distinct productos.NOMBRE from productos 
join compras on compras.pro = productos.id
join clientes on compras.cli = clientes.id where clientes.nombre = 'ANDRES PEREZ';

11.	Indica el nombre y el precio del producto más pesado de entre los que ha comprado ANDRES PEREZ.
12.	Indica los distintos materiales de productos que hay, sin repetir, y ordénalos de la Z a la A.
13.	Se quiere mostrar el nombre de producto junto al material en una única columna, donde debe presentarse con una frase de este estilo: “El PRODUCTO es MATERIAL”. Ej.: El tornillo es mecánico. Todo debe ir en minúsculas (nombre y material).
14.	¿Cuántos clientes tienen un teléfono que empieza por 1111?
15.	¿Cuál es la empresa proveedor del producto que ha comprado LUISA ANTUNEZ?
16.	Indica el nombre del producto más barato del material ELECTRICO.
17.	Indica el nombre del producto menos pesado del material MECANICO. Ese nombre debe tener en mayúsculas la primera letra y en minúsculas el resto de sus letras.
18.	Indica el nombre y el código postal de los proveedores de Bormujos (41930) y Mairena del Aljarafe (41927). Para ello emplea UNION de ambos select.
19.	Di todos los datos de los proveedores que tengan al menos una vocal I en su nombre de empresa.
20.	Devuelve el precio del producto cuyo nombre es MARTILLO redondeado a un único decimal.
21.	¿Qué día de la semana fue cuando se hizo la última compra (Ej.: lunes, martes, etc.? Debes calcular esa fecha última, no indicarla directamente.
22.	Muestra en una lista agrupada los años y los números de compras hechas en cada uno de esos años (una fila por año).
23.	Indica solo el nombre (sin el apellido) de los clientes.
24.	Se quiere saber el nombre de los productos que se han comprado sin repetir el nombre.
25.	¿Cuántos clientes tienen un nombre que empieza por vocal?
