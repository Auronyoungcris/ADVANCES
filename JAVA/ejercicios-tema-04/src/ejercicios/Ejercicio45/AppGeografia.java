package ejercicios.Ejercicio45;

public class AppGeografia {

	public static void main(String[] args) {
		Geografia g1 = new Geografia();
		g1.agregarPais("Egipto","El Cairo");
		g1.agregarPais("Suiza","Berna");
		g1.agregarPais("Austria","Praga");
		g1.agregarPais("Hungria","Budapest");
		g1.agregarPais("Austria","Viena");
		g1.agregarPais("Brasil","Brasilia");
		g1.imprimirPaises();
		System.out.println("Su número promedio de palabras es: "+g1.calcularLongitudMediaPaises());
		System.out.println(g1.imprimirNumeroPaisesLetra("b"));
		System.out.println(g1.mismaLetra());
		g1.eliminarPaisConCapitalLetra("b");
		g1.imprimirPaises();
	}

}
