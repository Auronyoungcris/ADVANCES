package ejercicios.Ejercicio23;

import java.util.ArrayList;
import java.util.List;

public class Pila {
	private List<String> lisCc;

	public Pila() {
		lisCc = new ArrayList<>();
	}

	public void añadirCadena(String recibo) {
		lisCc.add(0, recibo);
	}

	public String sacarCadena() {
		String removeDelete = lisCc.get(0);
		lisCc.remove(0);
		return removeDelete;
	}

	public Integer getTamaño() {
		return lisCc.size();
	}

	@Override
	public String toString() {
		return "Pila [" + lisCc + "]";
	}

	

}
