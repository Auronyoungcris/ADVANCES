package TipoB3DanielVazquez;

import java.util.Scanner;

public class TipoB3DanielVazquez {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		Integer space1 = 0, space2 = 0;
		String pala1 = "", part1 = "", part2 = "", part3 = "";
		do {
			System.out.println("Escriba 3 palabras separadas por comas que empiecen por t o T: ");
			pala1 = sc.nextLine();
			space1 = pala1.indexOf(",");
			space2 = pala1.lastIndexOf(",");
			part1 = pala1.substring(0, space1);
			part2 = pala1.substring(space1 + 1, space2);
			part3 = pala1.substring(space2 + 1);

		} while (!(pala1.contains(",")) || !(part1.startsWith("t")) && !(part1.startsWith("T"))
				|| !(part2.startsWith("t")) && !(part2.startsWith("T"))
				|| !(part3.startsWith("t")) && !(part3.startsWith("T")));
		System.out.println("Indique un número mayor a cero ");
		Integer num1 = sc.nextInt();
		if (num1 == part1.length()) {
			System.out.println("La palabra " + part1 + " tiene una longitud de " + num1);
		} else if (num1 == part2.length()) {
			System.out.println("La palabra " + part2 + " tiene una longitud de " + num1);
		} else if (num1 == part3.length()) {
			System.out.println("La palabra " + part3 + " tiene una longitud de " + num1);
		} else {
			System.out.println("No hay ninguna palabra con longitud " + num1);
		}

		sc.close();

	}

}
