package pg01.c01;

public class Thread2 extends Thread implements Runnable {
    private final int iterations;
    Thread2(int iterations) {
        this.iterations = iterations;
    }
    @Override
    public void run() {
        for (int i = 0; i < this.iterations; i++) {
            System.out.println("o");
        }
    }
}
