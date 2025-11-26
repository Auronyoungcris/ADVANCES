package TipoB1DanielVazquez;

import java.util.Iterator;
import java.util.Random;

public class TipoB1DanielVazquez {

	public static void main(String[] args) {
		Integer[] arra1 = new Integer[100];
		Random ale1 = new Random();
		Integer ale2 = ale1.nextInt(2, 6), total1 = 0;
		String ale3 = " ", pos1 = "";
		for (Integer i = arra1.length - 1, e = 200; i >= 0; i--, e -= 2) {
			ale2 = ale1.nextInt(2, 6);
			if (i % 3 == 0) {
				arra1[i] = e - ale2;
			} else {
				arra1[i] = e;
			}
			if (i <= 11 && i > 0) {
				pos1 += arra1[i].toString() + ", ";

			}
			total1 += arra1[i];
			if (i == 0) {
				pos1 += arra1[i].toString();
				System.out.println("Número aleatorio obtenido: " + ale2);
				System.out.println("Últimas 10 posiciones:" + pos1);
				System.out.println("La suma total es: " + total1);
			}
		}

	}

}
