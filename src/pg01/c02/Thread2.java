package pg01.c02;

public class Thread2 extends Thread implements Runnable {
    private final int iterations;
    private final int sleepMillis;
    Thread2(int iterations, int sleepMillis) {
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
            System.out.println("o");
        }
    }
}
