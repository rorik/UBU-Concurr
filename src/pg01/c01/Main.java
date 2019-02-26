package pg01.c01;

public class Main {
    public static void main(String[] args) {
        int iterations = 100000;
        Thread1 t1 = new Thread1(iterations);
        Thread2 t2 = new Thread2(iterations);
        Thread3 t3 = new Thread3(iterations);
        t1.start();
        t2.start();
        t3.start();
    }
}
