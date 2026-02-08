package ejercicios.Ejercicio33;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class CarritoComrpra {
	private LocalDate fechaCreacion;
	private LocalDate fechaModificacion;
	private Cliente miCliente;
	private List<Articulo> listaArticulo;

	public CarritoComrpra(Cliente miCliente) {
		listaArticulo = new ArrayList<>();
		this.miCliente = miCliente;
		fechaCreacion = LocalDate.now();
		fechaModificacion = LocalDate.now();
	}

	public LocalDate getFechaCreacion() {
		return fechaCreacion;
	}

	public LocalDate getFechaModificacion() {
		return fechaModificacion;
	}

	public Cliente getMiCliente() {
		return miCliente;
	}

	public List<Articulo> getListaArticulo() {
		return listaArticulo;
	}

	public Integer getCantidad() {
		return listaArticulo.size();
	}

	public Double getTotal() {
		Double precio = 0.0;
		if (listaArticulo.size() != 0) {
			for (Integer i = 0; i < listaArticulo.size(); i++) {
				precio += listaArticulo.get(i).getPrecio();

			}
		}
		return precio;
	}

	public Double getPrecioMedio() {
		return getTotal() / listaArticulo.size();
	}

	public String getModificacionFormato() {
		DateTimeFormatter formato = DateTimeFormatter.ofPattern("dd/MM/yyyy");
		return fechaModificacion.format(formato);
	}

	@Override
	public String toString() {
		return "CarritoComrpra [fecha de modificación=" + getModificacionFormato() + ", Cliente=" + miCliente
				+ "Cantidad de articulos=" + listaArticulo.size() + ", Suma total a pagar=" + getTotal() + "]";
	}

	public void addArticulo(Articulo articulo) {
		listaArticulo.add(articulo);
	}

	public void borrarArticulo(Articulo articulo) {
		if (listaArticulo.size() != 0) {
			listaArticulo.remove(articulo);
		}
	}

	public void vaciarCesta() {
		if (listaArticulo.size() != 0) {
			for (Integer i = listaArticulo.size()-1; i >= 0; i--) {
				listaArticulo.remove(listaArticulo.get(i));
			}
		}

	}

}
