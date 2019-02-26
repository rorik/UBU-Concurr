package pg01.c03;

public class Main {
    public static void main(String[] args) {
        int iterations = 100000;
        int sleepMillis = 200;
        Thread t1 = new Thread('x', sleepMillis, iterations);
        Thread t2 = new Thread('o', sleepMillis, iterations);
        Thread t3 = new Thread('-', sleepMillis, iterations);
        
        t1.start();
        t2.start();
        t3.start();

        try {
            t1.join();
            t2.join();
            t3.join();
            System.out.println("Finished");
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        //Thread.yield();
    }
}
