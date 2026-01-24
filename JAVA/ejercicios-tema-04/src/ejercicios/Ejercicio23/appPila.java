package ejercicios.Ejercicio23;

import java.util.Iterator;

public class appPila {

	public static void main(String[] args) {
		Pila pilita = new Pila();
		pilita.añadirCadena("primero");
		pilita.añadirCadena("segundo");
		pilita.añadirCadena("segundo");
		System.out.println(pilita);
		System.out.println(pilita.sacarCadena());
		System.out.println(pilita);
		pilita.añadirCadena("tercero");
		System.out.println(pilita);
		for (Integer i=0; i< pilita.getTamaño();i++) {
			pilita.sacarCadena();
			i--;
		}
		pilita.añadirCadena("cuarto");
		System.out.println(pilita);
	}

}
