 --EJERCICIOS TEMA6

--1. 
--Se quiere saber si un año es bisiesto o no. 
--Para ello, se debe pedir por pantalla introducir un año, y luego se mostrará un mensaje por pantalla indicando 
--"El año es bisiesto" o "El año no es bisiesto", según corresponda.
 --Un año es bisiesto si el resto de dividir el año entre 4 es cero y además, el resto de dividir ese año entre 100 
 --es distinto de cero o bien el resto de dividir ese año entre 400 es cero.
DECLARE
AGE int:=&dime_el_AGE;
BEGIN
    IF To_number(To_char(last_day(to_date('01/02/'||age, 'DD/MM/YYYY')), 'DD'))=29  then
    DBMS_OUTPUT.PUT_LINE('El año es bisiesto');
    ELSE 
    DBMS_OUTPUT.PUT_LINE('El año no es bisiesto');
    END IF;
    END;
    /
    UNDEFINE dime_el_AGE;
--2. 
--Realiza el ejercicio anterior pero usando la siguiente condición para saber si es bisiesto: "un año bisiesto tiene 366 días".
DECLARE
AGE int:= &dime_el_AGE;
BEGIN
    IF TO_DATE('01/01/'||(age+1))-TO_DATE('01/01/'||age)=366  then
    DBMS_OUTPUT.PUT_LINE('El año es bisiesto');
    ELSE 
    DBMS_OUTPUT.PUT_LINE('El año no es bisiesto');
    END IF;
    END;
    /
  UNDEFINE dime_el_AGE;
--3. 
--Obtener dos listas con los pares e impares desde el 1 hasta el número que se introduzca por pantalla.
DECLARE
minumero int:=&Dime_un_Numero;
type lista is table of int index by BINARY_INTEGER;
mispares lista;
misimpares lista;
BEGIN
    for i in 1..minumero LOOP
    if mod(i,2)=0 then
    mispares(i):=i;
    ELSE
    misimpares(i):=i;
    end if;
    end loop;
    for i in 1..mispares.count loop
    if mispares.exists(i) then 
    DBMS_OUTPUT.PUT_LINE(mispares(i));
    end if;
    end loop;
    for i in 1..misimpares.count loop
    if misimpares.exists(i) then
    DBMS_OUTPUT.PUT_LINE(misimpares(i));
    end if;
    end loop;
end;
/
 UNDEFINE Dime_un_Numero;
--4. 
--Dado un determinado código de departamento (DEPTNO) de la tabla DEPT, devolver por pantalla el nombre (DNAME).

--5. 
--Obtener el nombre (ENAME) y puesto de trabajo (JOB) del empleado (tabla EMP) que tenga el código (EMPNO) igual a 7782.

6. 
Pedir por pantalla un NIF (8 números y una letra). Comprobar si la letra es correcta y luego mostrar por pantalla si ese NIF es correcto.

7. 
Realiza una función a la que se le pase por parámetro un valor de empno de la tabla EMP, y devuelva los campos nombre y salario.
En el supuesto de que no haya encontrado ningún empno en la tabla EMP con dicho valor, que llame a una excepción que muestre por pantalla "Valor no existe en la base de datos".

8. 
Realiza una función a la que se le pase por parámetro un valor de empno de la tabla EMP, y si existe, que borre el registro completo.
En el supuesto de que no haya encontrado ningún empno en la tabla EMP con dicho valor, que llame a una excepción que muestre por pantalla "No se ha podido borrar, el valor no existe en la base de datos".

9. 
Realiza un procedimiento que muestre por pantalla el nombre de todos los departamentos de la tabla DEPT.

10. 
Realiza una función que devuelva el número total de empleados de la tabla EMP.
Si el número total es mayor de 5, crea una excepción que muestre el mensaje "hay más de 5 empleados".

11. 
Crea un programa que pida dos números enteros por pantalla. Si ambos números son divisibles entre sí (requisito, el primer número debe ser mayor o igual que el segundo), entonces que muestre por pantalla el mensaje “Son divisibles”. En caso contrario, que se muestre el mensaje "No son divisibles". NOTA: dos números son divisibles si su resto es cero. Puedes usar la función MOD.

12. 
Crea un programa que devuelva por pantalla el día de la semana que es.

13. 
Realiza un programa que pida por pantalla tres números y que luego muestre por pantalla el resultado de sumar los tres valores.
Debes contemplar que no se introduzcan números negativos como condición.

14. 
Desarrolla un programa que te pida por pantalla tu salario (número entero). Primero comprueba que es mayor que cero (si es menor que cero, devuelve por pantalla el mensaje "Salario no válido"). Si el salario es menor de 20000, devuelve el mensaje "Tu salario es bajo". Si el salario está entre 20000 y 40000, indica por pantalla "Tu salario está bien". Si el salario es mayor de 40000, muestra por pantalla "Tu salario está muy bien!". Debes emplear CASE… WHEN.

15. 
Crea un registro con tres campos, id, nombre y puesto, los cuáles deben tener el mismo tipo de dato que empno, ename y job de la tabla EMP. Crea una variable del tipo de ese registro, asígnale valores y muéstralo por la salida. Luego mediante un cursor implícito obtén esos campos para empno = 7698, guardándolo en esa variable del tipo de ese registro, y luego mostrándolo por la salida.

16. 
Crea una variable que sea del tipo ROWTYPE (tabla EMP) y una tabla que tenga los siguientes valores en las posiciones 1, 2 y 3: 
7839, 7698 y 7782. Mediante un bucle while que recorra toda la tabla (usa la función count para el tamaño máximo del índice), 
muestra por la salida de pantalla el nombre del trabajador (campo ename de la tabla emp) que corresponda su empno a cada valor
guardado en la tabla (7839,7698,7782).

17. 
Crea un registro que tenga los siguientes campos: codigo tipo number 4, nombre tipo varchar2 tamaño 10 y trabajo tipo varchar2 tamaño 9.
Después crea un tipo de tabla con la estructura del registro anterior (codigo, nombre, trabajo) y usa una variable con ese tipo
de tabla para guardar en ella los datos (empno, ename y job) de la tabla emp cuyo empno valga 7839. Recuerda que es una tabla,
por lo que tendrás que guardar dichos datos en la posición 1 de la tabla, por ejemplo.
Muestra por la salida de pantalla el empno, ename y job de esa tabla.

18. 
Hacer una función obtenerNombreEmp que dado por parámetro un empno te devuelva el ename.

19. 
Hacer un procedimiento mostrarDatosEmp que reciba por parámetro un empno y muestre por pantalla el nombre del empleado y el nombre de su jefe. Utiliza la función obtenerNombreEmp.

20. 
Empaqueta la función y el procedimiento anterior en un paquete denominado libreriaEmpleados.

21. 
A través de un bloque de código anónimo, llama al procedimiento mostrarDatosEmp del paquete libreriaEmpleados con el empno 7698.

22. 
Muestra por la salida el nombre de cada departamento junto al número de empleados que tiene.

23. 
Obtén el salario medio de los empleados y muestra por pantalla ese salario medio junto al resultado del 21% de ese importe y para finalizar, poner la suma del salario medio junto al 21% de dicho valor. Ej.: Importe de salario medio 1000, con 210 del 21% y total 1210.

24. 
Muestra por la salida el nombre y salario de los empleados que hayan sido contratados en septiembre.

25. 
Pide por la entrada de teclado un determinado mes y devuelve por la salida el nombre del empleado que haya sido contratado en dicho mes. En el caso de que no haya ninguno, mostrar el mensaje "No hay empleados que hayan sido contratados en ese mes".

26. Se quiere hacer un bloque de código anónimo que pida todos los campos de la tabla emp e introduzca dicho registro en la tabla.

27. 
Se quiere un código de bloque anónimo que borre registros de la tabla emp. Para ello pedirá un código empno por teclado, y si una vez comprobado que existe, se borrará de la tabla. Se debe mostrar un mensaje "No hay registros con ese código" cuando no haya empleados con
ese empno. Si se borra el registro, debes indicarlo por la pantalla con el mensaje "Se ha borrado adecuadamente el empleado".

28. 
Se quiere saber el nombre de los empleados que hayan sido contratados en un determinado mes. Para ello debes crear un bloque de código anónimo que pida un mes por el teclado con letras. Con esa información debes obtener todos los registros de la tabla emp cuyo hiredate haya sido en dicho mes, recuperar el nombre y mostrarlo por la salida.

29. 
Se quiere saber cuántos empleados hay en cada departamento. Para ello crea un bloque de código anónimo que pida por teclado el código de departamento deptno. Después, habrá que comprobar que dicho código existe o no en la tabla dept mostrando un mensaje en caso positivo y otro en caso negativo. Si hay departamentos con ese código, se comprobará que hay o no empleados de ese departamento en la tabla emp, mostrando mensajes en ambos casos (positivo y negativo). Para finalizar, sí y solo sí hay empleados de ese departamento, debes calcular el número de empleados que hay de ese departamento e indicarlo en un mensaje como el que sigue “Hay xx empleados en ese departamento”, donde xx es el número obtenido del total de empleados de ese departamento.

30. 
Se quiere saber el número de veces de cierta vocal que tienen los nombres de los empleados. Para ello se pedirá al usuario por teclado una vocal, que habrá que comprobar inicialmente si realmente lo es o no. Si es vocal, se contará cuantas veces aparece en cada nombre de cada empleado, indicando un mensaje como el que sigue: "KING tiene 1 vez la vocal i" donde se debe haber introducido inicialmente por teclado "i". Deben mostrarse todos los empleados con el número de veces que aparece la vocal introducida.

31. 
Se quiere un bloque de código anónimo que busque el empleado que tiene el nombre más largo y el que tiene el nombre más corto. En caso de coincidencia en el tamaño de los nombres, se pondrán todos.

32. 
Haz una función llamada DevolverCodDept que reciba el nombre de un departamento y devuelva su código.

33. 
Realiza un procedimiento llamado HallarNumEmp que recibiendo un nombre de departamento, muestre en pantalla el número de empleados de dicho departamento. Puedes utilizar la función creada en el ejercicio 32. Si el departamento no tiene empleados deberá mostrar un mensaje informando de ello. Si el departamento no existe se tratará la excepción correspondiente.

34. 
Realiza una función llamada CalcularCosteSalarial que reciba un nombre de departamento y devuelva la suma de los salarios y comisiones de los empleados de dicho departamento. Trata las excepciones que consideres necesarias.

35. 
Realiza un procedimiento MostrarCostesSalariales que muestre los nombres de todos los departamentos y el coste salarial de cada uno de ellos. Puedes usar la función del ejercicio 34.

36. 
Realiza un procedimiento MostrarAbreviaturas que muestre las tres primeras letras del nombre de cada empleado.

37. 
Realiza un procedimiento MostrarMasAntiguos que muestre el nombre del empleado más antiguo de cada departamento junto con el nombre del departamento. Trata las excepciones que consideres necesarias.

38. 
Realiza un procedimiento MostrarJefes que reciba el nombre de un departamento y muestre los nombres de los empleados de ese departamento que son jefes de otros empleados.Trata las excepciones que consideres necesarias.

39. 
Realiza un procedimiento MostrarMejoresVendedores que muestre los nombres de los dos vendedores con más comisiones. Trata las excepciones que consideres necesarias.

40. 
Realiza un procedimiento MostrarsodaelpmE que reciba el nombre de un departamento al revés y muestre los nombres de los empleados de ese departamento. Trata las excepciones que consideres necesarias.

41. 
Realiza un procedimiento RecortarSueldos que recorte el sueldo un 20% a los empleados cuyo nombre empiece por la letra que recibe como parámetro.Trata las excepciones que consideres necesarias.

42. 
Realiza un procedimiento BorrarBecarios que borre a los dos empleados más nuevos de cada departamento. Trata las excepciones que consideres necesarias.