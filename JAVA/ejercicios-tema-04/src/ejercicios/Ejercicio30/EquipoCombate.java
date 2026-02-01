package ejercicios.Ejercicio30;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;;

public class EquipoCombate {
	private List<Personaje> listaDePersonaje;

	public EquipoCombate() {
		listaDePersonaje = new ArrayList<>();
	}

	public List<Personaje> getListaDePersonaje() {
		return listaDePersonaje;
	}

	public void setListaDePersonaje(List<Personaje> listaDePersonaje) {
		this.listaDePersonaje = listaDePersonaje;
	}

	public Integer getVidaEquipo() {
		Integer vidaEquipo = 0;
		for (Integer i = 0; i < getListaDePersonaje().size(); i++) {
			vidaEquipo += getListaDePersonaje().get(i).getVida();
		}
		return vidaEquipo;
	}

	public void añadirPersonaje(Personaje personaje) {
		Boolean duplicado = false;
		if (getListaDePersonaje().size() == 0) {
			getListaDePersonaje().add(personaje);
			return;
		}
		if (getListaDePersonaje().size() < 5 && getListaDePersonaje().size() > 0) {
			if (getListaDePersonaje().size() > 1) {
				for (Integer i = 0; i < getListaDePersonaje().size(); i++) {
					if (getListaDePersonaje().get(i).equals(personaje)) {
						System.out.println("PERSONAJE DUPLICADO");
						duplicado = true;

					}
				}
			}
			if (duplicado == false) {
				getListaDePersonaje().add(personaje);
			}

		} else {
			System.out.println("MAXIMO DE PERSONAJES ALCANZADO");
		}

	}
}
