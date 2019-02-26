package pg01.c04;

import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.*;

public class Main {
    public static void main(String[] args) throws Exception {
        int iterations = 10000000;
        int sleepMillis = 100;
        List<Thread> threads = new LinkedList<>();
        threads.add(new Thread('x', sleepMillis, iterations));
        threads.add(new Thread('o', sleepMillis, iterations));
        threads.add(new Thread('-', sleepMillis, iterations));

        List<Callable<ExecutorService>> executors = new LinkedList<>();
        executors.add(Executors::newCachedThreadPool);
        executors.add(() -> Executors.newFixedThreadPool(1));
        executors.add(Executors::newSingleThreadExecutor);
        executors.add(() -> Executors.newFixedThreadPool(2));
        executors.add(() -> Executors.newFixedThreadPool(3));

        for (Callable<ExecutorService> executorInitializer: executors) {
            ExecutorService executor = executorInitializer.call();
            for (Thread thread: threads) {
                executor.execute(thread);
            }
            executor.shutdown();
            executor.awaitTermination(5, TimeUnit.SECONDS);
            System.out.println("Finished " + executor.getClass().getName());
        }

        //Thread.yield();
    }
}
