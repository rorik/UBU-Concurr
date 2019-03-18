package pg03.c02;

import pg03.c01.ActividadEntradaPuerta;
import pg03.c01.IParque;
import pg03.c01.Parque;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class SistemaLanzador {
	final static private int N = 5;
	
	public static void main(String[] args) {
		final IParque parque = new Parque();
		ExecutorService executor = Executors.newCachedThreadPool();
		for (int i = 0; i < N; i++) {
			executor.submit(new ActividadEntradaPuerta(Character.toString('A' + i), parque));
		}
	}
}
