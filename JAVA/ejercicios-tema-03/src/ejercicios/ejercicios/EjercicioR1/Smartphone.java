package ejercicios.EjercicioR1;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.time.LocalDate;
import java.time.Month;
import java.time.Period;

public class Smartphone {
	private String marca;
	private String modelo;
	private String imei;
	private BigDecimal precio;
	private LocalDate fechaFabricacion;
	private Boolean activo;

	public Smartphone() {
		super();
	}

	public Smartphone(String imei) {
		super();
		this.imei = imei;
	}

	public Smartphone(String marca, String modelo, String imei) {
		super();
		this.marca = marca;
		this.modelo = modelo;
		this.imei = imei;
	}

	public void setPrecio(BigDecimal precio) {
		this.precio = precio;
	}

	public void activar() {
		activo = true;
	}

	public void desactivar() {
		activo = false;
	}
	public Integer getedad() {
		LocalDate añosTranscurridos = LocalDate.of(2000, Month.APRIL, 01);
		Period periodo =fechaFabricacion.until(añosTranscurridos);
		return periodo.getYears();
	}
	
	public void setMarca(String marca,String modelo) {
		this.marca = marca;
		this.modelo = modelo;
	}

	public void establecerFabricacion(LocalDate fechaFabricacion) {
		this.fechaFabricacion = fechaFabricacion;
	}

	public BigDecimal getPrecioMasIva() {
		BigDecimal precioIva = precio.multiply(new BigDecimal(1.21));
		return precioIva.setScale(2,RoundingMode.HALF_EVEN);
	}
	public Boolean isAltaGama(BigDecimal precioBase) {
		return precioBase.compareTo(precio)<0;
			
		}
	public Boolean isDatosCompletos() {
		return !(imei==null) || !(imei.isBlank()) && !(precio==null);
		
	}
	public Boolean isGratis() {
		return precio.equals(BigDecimal.ZERO);
		
	}
	public void rebajar() {
		precio=precio.subtract(new BigDecimal(10));
	}

	@Override
	public String toString() {
		if (activo) {
			return marca + "(" + modelo + ")";
		}
		return  marca + "(" + modelo + ") -INACTIVO";
	}
	
	}
	


