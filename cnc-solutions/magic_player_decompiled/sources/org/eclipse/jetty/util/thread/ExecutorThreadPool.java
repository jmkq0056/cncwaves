package org.eclipse.jetty.util.thread;

import androidx.recyclerview.widget.RecyclerView;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.eclipse.jetty.util.component.AbstractLifeCycle;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class ExecutorThreadPool extends AbstractLifeCycle implements ThreadPool {
    private static final Logger LOG = Log.getLogger((Class<?>) ExecutorThreadPool.class);
    private final ExecutorService _executor;

    public ExecutorThreadPool(ExecutorService executorService) {
        this._executor = executorService;
    }

    @Override // org.eclipse.jetty.util.thread.ThreadPool
    public boolean dispatch(Runnable runnable) {
        try {
            this._executor.execute(runnable);
            return true;
        } catch (RejectedExecutionException e4) {
            LOG.warn(e4);
            return false;
        }
    }

    @Override // org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStop() {
        super.doStop();
        this._executor.shutdownNow();
    }

    @Override // org.eclipse.jetty.util.thread.ThreadPool
    public int getIdleThreads() {
        ExecutorService executorService = this._executor;
        if (!(executorService instanceof ThreadPoolExecutor)) {
            return -1;
        }
        ThreadPoolExecutor threadPoolExecutor = (ThreadPoolExecutor) executorService;
        return threadPoolExecutor.getPoolSize() - threadPoolExecutor.getActiveCount();
    }

    @Override // org.eclipse.jetty.util.thread.ThreadPool
    public int getThreads() {
        ExecutorService executorService = this._executor;
        if (executorService instanceof ThreadPoolExecutor) {
            return ((ThreadPoolExecutor) executorService).getPoolSize();
        }
        return -1;
    }

    @Override // org.eclipse.jetty.util.thread.ThreadPool
    public boolean isLowOnThreads() {
        ExecutorService executorService = this._executor;
        if (!(executorService instanceof ThreadPoolExecutor)) {
            return false;
        }
        ThreadPoolExecutor threadPoolExecutor = (ThreadPoolExecutor) executorService;
        return threadPoolExecutor.getPoolSize() == threadPoolExecutor.getMaximumPoolSize() && threadPoolExecutor.getQueue().size() >= threadPoolExecutor.getPoolSize() - threadPoolExecutor.getActiveCount();
    }

    @Override // org.eclipse.jetty.util.thread.ThreadPool
    public void join() throws InterruptedException {
        this._executor.awaitTermination(RecyclerView.FOREVER_NS, TimeUnit.MILLISECONDS);
    }

    public ExecutorThreadPool() {
        this(new ThreadPoolExecutor(256, 256, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue()));
    }

    public ExecutorThreadPool(int i4) {
        ThreadPoolExecutor threadPoolExecutor;
        if (i4 < 0) {
            threadPoolExecutor = new ThreadPoolExecutor(256, 256, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        } else {
            threadPoolExecutor = i4 == 0 ? new ThreadPoolExecutor(32, 256, 60L, TimeUnit.SECONDS, new SynchronousQueue()) : new ThreadPoolExecutor(32, 256, 60L, TimeUnit.SECONDS, new ArrayBlockingQueue(i4));
        }
        this(threadPoolExecutor);
    }

    public ExecutorThreadPool(int i4, int i5, long j4) {
        this(i4, i5, j4, TimeUnit.MILLISECONDS);
    }

    public ExecutorThreadPool(int i4, int i5, long j4, TimeUnit timeUnit) {
        this(i4, i5, j4, timeUnit, new LinkedBlockingQueue());
    }

    public ExecutorThreadPool(int i4, int i5, long j4, TimeUnit timeUnit, BlockingQueue<Runnable> blockingQueue) {
        this(new ThreadPoolExecutor(i4, i5, j4, timeUnit, blockingQueue));
    }
}
