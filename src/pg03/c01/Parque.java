package pg03.c01;

import java.util.Hashtable;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Parque implements IParque{

	private int contadorPersonasTotales;
	private Hashtable<String,Integer> contadoresPersonasPuerta;
	private long tinicial;
	private double tmedio;
	
	private static Random generadorAleatorios = new Random();
	
	public Parque() {
		contadorPersonasTotales = 0;
		contadoresPersonasPuerta = new Hashtable<String,Integer>();
		tinicial = System.currentTimeMillis();
		tmedio = 0;
	}
	
	@Override
	public synchronized void entrarAlParque(String puerta) {
		contadorPersonasTotales++;
		
		try {
			TimeUnit.MILLISECONDS.sleep(generadorAleatorios.nextInt(3000));
		} catch (InterruptedException e) {
			Logger.getGlobal().log(Level.INFO,"Interrupcion del hilo que utiliza el objeto parque.");
			return;
		}

		contadoresPersonasPuerta.putIfAbsent(puerta, 0);
		Integer contPu = contadoresPersonasPuerta.get(puerta);
		contPu++;
		contadoresPersonasPuerta.put(puerta, contPu);

		long tActual = System.currentTimeMillis();
		tmedio = (tmedio + (tActual - tinicial))/2.0;
		
		imprimirInfo(puerta);

		checkInvariante();
	}

	private void imprimirInfo(String idPuerta) {
		System.out.println("Entrada al parque por puerta " + idPuerta);
		System.out.println("--> Personas en el parque: " + contadorPersonasTotales + " tiempo medio de estancia: " + tmedio/1000);
		contadoresPersonasPuerta.forEach((puerta, entradas) -> System.out.println("----> Por puerta " + puerta + " " + entradas));
	}
	
	private void checkInvariante() {
		assert contadoresPersonasPuerta.values().stream().mapToInt(Integer::intValue).sum() == contadorPersonasTotales : "Invariante incorrecta";
	}
}
