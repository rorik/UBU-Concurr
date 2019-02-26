package pg01.c02;

public class Main {
    public static void main(String[] args) {
        int iterations = 100000;
        int sleepMillis = 2000;
        Thread1 t1 = new Thread1(iterations, sleepMillis);
        Thread2 t2 = new Thread2(iterations, sleepMillis);
        Thread3 t3 = new Thread3(iterations, sleepMillis);
        
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
