package ejercicios.Ejercicio02;

import java.util.Scanner;

public class ConsoleInOut {
	private Scanner skynnet;

	public ConsoleInOut() {
		skynnet = new Scanner(System.in);
	}

	public void close() {
		skynnet.close();
	}

	public void write(String phraseUser) {
		System.out.println(phraseUser);
	}

	public Integer readInteger(String phraseUser, Integer numberUser) {
		System.out.println(phraseUser);
		numberUser = skynnet.nextInt();
		return numberUser;
	}

	public void readInteger(String phraseUser, Integer numberMax, Integer numberMin, Integer numberUser) {
		do {
			numberUser = skynnet.nextInt();
		} while (numberUser > numberMin || numberUser < numberMax);
	}

	public Double readDouble(String phraseUser, Double numberUser) {
		System.out.println(phraseUser);
		numberUser = skynnet.nextDouble();
		return numberUser;
	}

	public void readDouble(String phraseUser, Double numberMax, Double numberMin, Double numberUser) {
		do {
			numberUser = skynnet.nextDouble();
		} while (numberUser > numberMin || numberUser < numberMax);
	}

	public void readString(String phraseUser, String phraseNoEmpty) {
		do {
			phraseNoEmpty = skynnet.nextLine();
		} while (phraseNoEmpty.isEmpty());
	}

	public void waitEnter() {
		System.out.println("Pulse ENTER para continuar");
		skynnet.nextLine();
	}

	public Boolean isContinue(String phraseUser, Boolean selectUser) {
		do {

			System.out.println("¿Desea continuar (S/N)?");
			phraseUser = skynnet.nextLine();
			if (phraseUser.equalsIgnoreCase("s")) {
				selectUser = true;
			}
			if (phraseUser.equalsIgnoreCase("n")) {
				selectUser = false;
			}
		} while (!(phraseUser.equalsIgnoreCase("s")) && !(phraseUser.equalsIgnoreCase("n")));
		return selectUser;
	}
}
