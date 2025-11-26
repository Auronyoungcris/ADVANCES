package TipoB4DanielVazquez;

import java.util.Scanner;

public class TipoB4DanielVazquez {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		Integer num1 = 0, num2 = 1;
		String pala1 = "", palaF = "";
		do {
			System.out.println("Indique un número entre 2 y 6:");
			num1 = sc.nextInt();
			if (num1 < 2 || num1 > 6) {
				System.out.println("El número no es correcto. Inténtelo de nuevo.");
			}
		} while (num1 < 2 || num1 > 6);
		sc.nextLine();
		while (num2 <= num1) {
			do {
				System.out.println("Indica la palabra número " + num2);

				pala1 = sc.nextLine();
				if (pala1.length() >= 5 && (pala1.contains("te") || pala1.contains("ca"))) {
					System.out.println("PALABRA CORRECTA");
					num2++;
					palaF += pala1 + " ";
				} else {
					System.out.println("Palabra erronea");
				}
			} while (pala1.length() < 5 || (!(pala1.contains("ca")) && !(pala1.contains("te"))));
		}
		System.out.println("Frase obtenida: \n" + palaF);
		sc.close();
	}

}
