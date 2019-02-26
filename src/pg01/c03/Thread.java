package pg01.c03;

public class Thread extends java.lang.Thread implements Runnable {
    private final int iterations;
    private final char character;
    private final int sleepMillis;
    Thread(char character, int sleepMillis, int iterations) {
        this.character = character;
        this.sleepMillis = sleepMillis;
        this.iterations = iterations;
    }
    @Override
    public void run() {
        try {
            java.lang.Thread.sleep(this.sleepMillis);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        for (int i = 0; i < this.iterations; i++) {
            System.out.println(this.character);
        }

    }
}
