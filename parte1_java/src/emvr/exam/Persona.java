/**
 * @author Erick Manuel Velasco Ramírez
 * Clase principal con el formulario que pide los datos de la persona
 */

package emvr.exam;

import java.util.Random;

public final class Persona {
	private String nss = "";
	private String nombre = "";
	private int edad = 0;
	private double peso = 0;
	private double altura = 0;
	private char sexo;
	
	public Persona() {
		nss = generaNSS();
	}
	
	private String generaNSS() {
		final Random r = new Random();
		int maxN = Constants.NSSALFA.length;
		final StringBuilder tnss = new StringBuilder(8);
		for(int i=0; i<8; i++) {
			int a = r.nextInt(maxN);
			tnss.append(Constants.NSSALFA[a]);
		}
		return tnss.toString();
	}

	public int calcularIMC() {
		final double imc = peso/(altura*altura);
		if(imc<19||(imc<20&&sexo==Constants.HOMBRE)) {
			return Constants.FALTA_DE_PESO;
		} else if (imc>25||imc>24&&sexo==Constants.MUJER) {
			return Constants.SOBREPESO;
		}
		return Constants.PESO_NORMAL;
	}
	
	public boolean esMayorDeEdad() {
		if(edad>=18) {
			return true;
		}
		return false;
	}
	
	private boolean comprobarSexo(char sexo){
		if(sexo==Constants.HOMBRE||sexo==Constants.MUJER) {
			return true;
		}
		return false;
	}	
	
	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public int getEdad() {
		return edad;
	}

	public void setEdad(int edad) {
		this.edad = edad;
	}

	public double getPeso() {
		return peso;
	}

	public void setPeso(double peso) {
		this.peso = peso;
	}

	public double getAltura() {
		return altura;
	}

	public void setAltura(double altura) {
		this.altura = altura;
	}

	public String getNSS() {
		return nss;
	}

	public char getSexo() {
		return sexo;
	}

	public boolean setSexo(char sexo) {
		if(comprobarSexo(sexo)) {
			this.sexo = sexo;
			return true;
		}
		return false;
	}
	
	public String toString() {
		return "Nombre: " + nombre + "\nNSS: " + nss + "\nEdad: " + edad + "\nSexo: " + sexo + "\nPeso: " + peso;
	}
}
