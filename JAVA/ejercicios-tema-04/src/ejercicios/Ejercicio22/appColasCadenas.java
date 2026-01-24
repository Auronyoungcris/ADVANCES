package ejercicios.Ejercicio22.copy;

import ejercicios.Ejercicio22.ColasCadenas;

public class appColasCadenas {

	public static void main(String[] args) {
		ColasCadenas colitas = new ColasCadenas();
		colitas.añadirCadena("primero");
		colitas.añadirCadena("segundo");
		System.out.println(colitas);
		System.out.println(colitas.sacarCadena());
		System.out.println(colitas);
		colitas.añadirCadena("tercero");
		System.out.println(colitas);
		for (Integer i=0; i< colitas.getTamaño();i++) {
			System.out.println(colitas.sacarCadena());
			i--;
		}
		colitas.añadirCadena("cuarto");
		System.out.println(colitas);
		
		

	}

}
