package pg01.c01;

public class Thread1 extends Thread implements Runnable {
    private final int iterations;
    Thread1(int iterations) {
        this.iterations = iterations;
    }
    @Override
    public void run() {
        for (int i = 0; i < this.iterations; i++) {
            System.out.println("x");
        }
    }
}
