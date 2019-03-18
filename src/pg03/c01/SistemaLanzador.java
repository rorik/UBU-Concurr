package pg03.c01;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class SistemaLanzador {
	
	public static void main(String[] args) {
		final IParque parque = new Parque();
		ExecutorService executor = Executors.newCachedThreadPool();
		for (String nombre: new String[] {"A","B"}) {
			executor.submit(new ActividadEntradaPuerta(nombre, parque));
		}
	}
}
