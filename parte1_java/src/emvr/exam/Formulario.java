/**
 * @author Erick Manuel Velasco Ramírez
 * Clase Persona
 * contiene Nombre, genera NSS, edad, peso, altura, calcula IMC y notifica si es mayor de edad
 */

package emvr.exam;

import java.util.Scanner;

public class Formulario {

	public static void main(String[] args) {
		
		final Scanner input = new Scanner(System.in);
		final String badInput = "El parámetro que ingresó es incorrecto, por favor intente de nuevo";
		String sinput = "";
		final Persona persona = new Persona();
		
		//pide nombre
		String nombre = "";
		while(nombre.length()==0) {
			System.out.print("Dame tu nombre: ");
			nombre = input.nextLine();
			if(nombre.length()==0) {
				System.out.println(badInput);
			}
		}
		persona.setNombre(nombre);
		
		//pide edad
		int edad = -1;
		while(edad<0||edad>150) {
			System.out.print("Dime tu edad (años): ");
			sinput = input.nextLine();
			try {
				edad = Integer.parseInt(sinput);
			} catch (NumberFormatException nfe) {
				//exception, el usuario ingreso un valor no válido
			}
			if(edad<0||edad>150) {
				System.out.println(badInput);
			}
		}
		persona.setEdad(edad);
			
		//pide sexo
		char sexo = 'n';
		while(!persona.setSexo(sexo)) {
			System.out.print("Dime tu sexo (H/M): ");
			sinput = input.nextLine();
			try {
				sexo = sinput.toUpperCase().toCharArray()[0];
			} catch (ArrayIndexOutOfBoundsException aiobe) {
				//exception, el usuario ingreso un valor no válido
			}
			if(!persona.setSexo(sexo)) {
				System.out.println(badInput);
			}
		}

		//pide altura
		double peso = 0;
		while(peso<=0||peso>=800) {
			System.out.print("Dime tu peso (kg): ");
			sinput = input.nextLine();
			try {
				peso = Double.parseDouble(sinput);
			} catch (NumberFormatException nfe) {
				//exception, el usuario ingreso un valor no válido
			}
			if(peso<=0||peso>=800) {
				System.out.println(badInput);
			}
		}
		persona.setPeso(peso);
		
		//pide altura
		double altura = 0;
		while(altura<=0||altura>=3) {
			System.out.print("Dime tu altura (m): ");
			sinput = input.nextLine();
			try {
				altura = Double.parseDouble(sinput);
			} catch (NumberFormatException nfe) {
				//exception, el usuario ingreso un valor no válido
			}
			if(altura<=0||altura>=3) {
				System.out.println(badInput);
			}
		}
		persona.setAltura(altura);
		
		input.close();
		
		final int imc = persona.calcularIMC();
		if(imc==Constants.FALTA_DE_PESO) {
			System.out.println("Usted está bajo de peso.");
		} else if (imc==Constants.PESO_NORMAL) {
			System.out.println("Su peso es normal.");
		} else {
			System.out.println("Usted tiene sobrepeso.");
		}
		
		if(persona.esMayorDeEdad()) {
			System.out.println("Usted es mayor de edad.");
		} else {
			System.out.println("Usted es menor de edad.");
		}
		
		System.out.println(persona.toString());
		
	}

}
