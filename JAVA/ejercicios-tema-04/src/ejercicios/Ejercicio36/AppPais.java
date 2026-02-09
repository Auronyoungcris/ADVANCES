package ejercicios.Ejercicio36;

import java.util.HashSet;
import java.util.Set;

public class AppPais {
	public static void main(String[] args) {
		Set<Pais> bolsa =new HashSet<>();
		bolsa.add(null);
		for (Pais pais : bolsa) {
			System.out.println(pais);
		}
		bolsa.add(new Pais("ES","España"));
		bolsa.add(new Pais("CK","Isla Cook"));
		bolsa.add(new Pais("CK","Isla Caimán"));
		for (Pais pais : bolsa) {
			System.out.println(pais);
		}
		bolsa.add(new Pais("ES","España"));
		for (Pais pais : bolsa) {
			System.out.println(pais);
		}
	}

}
