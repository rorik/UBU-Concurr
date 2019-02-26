package pg01.c02;

public class Thread1 extends Thread implements Runnable {
    private final int iterations;
    private final int sleepMillis;
    Thread1(int iterations, int sleepMillis) {
        this.iterations = iterations;
        this.sleepMillis = sleepMillis;
    }
    @Override
    public void run() {
        try {
            Thread.sleep(this.sleepMillis);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        for (int i = 0; i < this.iterations; i++) {
            System.out.println("x");
        }

    }
}
