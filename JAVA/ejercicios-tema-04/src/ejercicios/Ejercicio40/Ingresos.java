package ejercicios.Ejercicio40;

public class Ingresos extends Movimiento{
	protected String descripcion ;

	

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	@Override
	public String tipoMovimiento() {
		// TODO Auto-generated method stub
		return " I ";
	}

	@Override
	public String extraMovimiento() {
		// TODO Auto-generated method stub
		return " - "+descripcion;
	}
}
