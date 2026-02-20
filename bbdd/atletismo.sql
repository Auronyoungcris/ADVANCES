--1 ¿Cuántos atletas pertenecen al club 'Club Atlético Málaga'? Ponle como alias de columna "Total".
select count(*) "TOTAL" from ATLETAS join clubes on ATLETAS.NIF_CLUB = clubes.nif where clubes.NOMBRE='Club Atlético Málaga';
--2 ¿Qué nombre de entrenamiento, sin repetir, han realizado los atletas del club 'Club Atlético Sevilla'?
SELECT distinct entrenamientos.nombre from entrenamientos 
join ATLETAS_REALIZAN_ENTRENAMIENTOS on ATLETAS_REALIZAN_ENTRENAMIENTOS.ID_ENTRENAMIENTO = entrenamientos.ID 
join ATLETAS on ATLETAS.DNI =ATLETAS_REALIZAN_ENTRENAMIENTOS.DNI_ATLETA
join clubes on ATLETAS.NIF_CLUB = clubes.nif where clubes.NOMBRE = 'Club Atlético Sevilla';
--3 Se quiere saber los apellidos junto al nombre, separado por coma y en una única columna, de los atletas que hayan conseeguido al menos una victoria. El resultado debe devolverse con todos los caracteres en mayúsculas. Ejemplo: GARCÍA SÁNCHEZ, IVÁN
select upper(APELLIDOS),upper(nombre) from ATLETAS WHERE NUM_VICTORIAS_PROFESIONAL >=1;
--4 ¿Cuál es el dni y el nombre de los atletas que pertenecen al club 'Vallecas Deportivo'? Ordena el resultado por el dni de mayor a menor, y no uses join, solo subconsultas.
select dni, nombre from ATLETAS where nif_club=(select nif from clubes where nombre='Vallecas Deportivo') order by dni desc;
--5 Se quiere mostrar el nombre del club junto al número de atletas que hay en él. Solo se quieren mostrar los clubes que tengan entre 3 y 5 atletas (inclusive 3 y 5) y ordena el resultado de mayor a menor número de atletas.
select nombre, count(*) from ATLETAS join clubes on ATLETAS.NIF_CLUB =clubes.NIF group by clubes.NOMBRE having COUNT(*)>=3 and COUNT(*)<=4 order by COUNT(*) desc;
--6 Indica el nombre, apellidos y número de caracteres del campo apellidos (ponle como alias de columnas "Num. caracteres") del atleta que tiene más letras en su apellido.

--7 Se quiere saber el nombre, los apellidos y el número de carreras de los atletas que han participado en más carreras. Ordena el resultado por orden alfabético de los apellidos.

--8 Devuelve todos los campos de los clubes cuyo responsable tiene por nombre Pedro y el nif del club tiene un 9 entre sus dígitos.

--9 ¿Cuál es el nombre de los atletas que han realizado menos entrenamientos?

--10 Devuelve el día de la semana de la fecha de inicio de inscripción en carreras (alias de columna "Día inicio") y el día del mes de la fecha de fin de inscripción en carreras (alias de columna "Mes fin") para aquellas carreras que NO se celebren en la localidad de "Córdoba".

--11 Devuelve el nombre de la carrera y el número de espacios que tiene el nombre de la carrera. Para esta segunda columna, usa el alias de columna "Nun.espacios".

--12 ¿Cuál es el nombre y los apellidos del atleta que es mayor?

--13 ¿Cuál es el nombre del club donde está el atleta más joven? Devuelve el resultado con todas las letras en minúsculas.

--14 Si solo sumamos las horas del tiempo que han empleado los participantes de la carrera 'Grand Prix Madrid', ¿qué valor da?

--15 Se quiere el nombre del entrenamiento con todas sus letras en mayúsculas que tiene dureza igual a 10 y además, la duración está entre 50 y 100.

--16 Devuelve el número de dorsal de todos aquellos dorsales que han participado en carreras que sean un número PAR.