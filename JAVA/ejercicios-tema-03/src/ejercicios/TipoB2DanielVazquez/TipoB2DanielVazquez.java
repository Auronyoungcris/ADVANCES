
package TipoB2DanielVazquez;


import java.util.Scanner;

public class TipoB2DanielVazquez {

	public static void main(String[] args) {
		Scanner sc =new Scanner(System.in);
		System.out.println("Dime un número del 1 al 9: ");
		Integer num1 = sc.nextInt();
		for (Integer fila=num1;fila>0;fila--) {
			for (Integer cW=1;cW<fila; cW++) {
				System.out.print(".");
			}
			for (Integer columna=fila;fila<=num1;columna++) {
				System.out.print(columna);
			}
			for (Integer cB =num1-1;cB>=fila;cB--) {
				System.out.print(cB);
				
			}
			System.out.println();
		}
		sc.close();

	}

}
