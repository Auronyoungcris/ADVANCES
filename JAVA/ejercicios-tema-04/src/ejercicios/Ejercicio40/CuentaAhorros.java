package ejercicios.Ejercicio40;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

public class CuentaAhorros {
	private BigDecimal cuentaBancaria;
	private List<Movimiento> listaMovimiento;
	private BigDecimal dinero;

	public CuentaAhorros(BigDecimal cuentaBancaria) {
		this.cuentaBancaria = cuentaBancaria;
		listaMovimiento = new ArrayList<>();
	}
	public void añadirMovimiento(Movimiento movimiento) {
		listaMovimiento.add(movimiento);
	}
	public void Totaldinero() {
		for (Ingresos ingresos : listaMovimiento) {
			
		}
	}
	
}
