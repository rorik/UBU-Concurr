package pg03.c01;

import java.util.logging.Level;
import java.util.logging.Logger;

public class ActividadEntradaPuerta implements Runnable{

	private static final int NUMENTRADAS = 20;
	private String idPuerta;
	private IParque parque;
	
	public ActividadEntradaPuerta(String nombre, IParque contador) {
		this.idPuerta = nombre;
		this.parque = contador;
	}
	
	@Override
	public void run() {
		int iteracion;
		for (iteracion = 0; iteracion < NUMENTRADAS; iteracion++) {
			parque.entrarAlParque(idPuerta);
		}
		Logger.getGlobal().log(Level.INFO,"Finalizada entrada por la puerta " + idPuerta);
		return;
	}

}
