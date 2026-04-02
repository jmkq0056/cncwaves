package org.eclipse.jetty.util.thread;

import android.support.v4.media.e;
import android.support.v4.media.f;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.eclipse.jetty.util.BlockingArrayQueue;
import org.eclipse.jetty.util.ConcurrentHashSet;
import org.eclipse.jetty.util.component.AbstractLifeCycle;
import org.eclipse.jetty.util.component.AggregateLifeCycle;
import org.eclipse.jetty.util.component.Dumpable;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;
import org.eclipse.jetty.util.thread.ThreadPool;

/* JADX INFO: loaded from: classes2.dex */
public class QueuedThreadPool extends AbstractLifeCycle implements ThreadPool.SizedThreadPool, Executor, Dumpable {
    private static final Logger LOG = Log.getLogger((Class<?>) QueuedThreadPool.class);
    private boolean _daemon;
    private boolean _detailedDump;
    private BlockingQueue<Runnable> _jobs;
    private final Object _joinLock;
    private final AtomicLong _lastShrink;
    private int _maxIdleTimeMs;
    private int _maxQueued;
    private int _maxStopTime;
    private int _maxThreads;
    private int _minThreads;
    private String _name;
    private int _priority;
    private Runnable _runnable;
    private final ConcurrentHashSet<Thread> _threads;
    private final AtomicInteger _threadsIdle;
    private final AtomicInteger _threadsStarted;

    public QueuedThreadPool() {
        this._threadsStarted = new AtomicInteger();
        this._threadsIdle = new AtomicInteger();
        this._lastShrink = new AtomicLong();
        this._threads = new ConcurrentHashSet<>();
        this._joinLock = new Object();
        this._maxIdleTimeMs = 60000;
        this._maxThreads = 254;
        this._minThreads = 8;
        this._maxQueued = -1;
        this._priority = 5;
        this._daemon = false;
        this._maxStopTime = 100;
        this._detailedDump = false;
        this._runnable = new Runnable() { // from class: org.eclipse.jetty.util.thread.QueuedThreadPool.3
            /* JADX WARN: Removed duplicated region for block: B:67:0x011b  */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void run() throws java.lang.Throwable {
                /*
                    Method dump skipped, instruction units count: 334
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.util.thread.QueuedThreadPool.AnonymousClass3.run():void");
            }
        };
        StringBuilder sbA = f.a("qtp");
        sbA.append(super.hashCode());
        this._name = sbA.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Runnable idleJobPoll() {
        return this._jobs.poll(this._maxIdleTimeMs, TimeUnit.MILLISECONDS);
    }

    private boolean startThread(int i4) {
        if (!this._threadsStarted.compareAndSet(i4, i4 + 1)) {
            return false;
        }
        try {
            Thread threadNewThread = newThread(this._runnable);
            threadNewThread.setDaemon(this._daemon);
            threadNewThread.setPriority(this._priority);
            threadNewThread.setName(this._name + "-" + threadNewThread.getId());
            this._threads.add(threadNewThread);
            threadNewThread.start();
            return true;
        } catch (Throwable th) {
            this._threadsStarted.decrementAndGet();
            throw th;
        }
    }

    @Override // org.eclipse.jetty.util.thread.ThreadPool
    public boolean dispatch(Runnable runnable) {
        int i4;
        if (isRunning()) {
            int size = this._jobs.size();
            int idleThreads = getIdleThreads();
            if (this._jobs.offer(runnable)) {
                if ((idleThreads == 0 || size > idleThreads) && (i4 = this._threadsStarted.get()) < this._maxThreads) {
                    startThread(i4);
                }
                return true;
            }
        }
        LOG.debug("Dispatched {} to stopped {}", runnable, this);
        return false;
    }

    @Override // org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStart() {
        BlockingQueue<Runnable> blockingArrayQueue;
        super.doStart();
        this._threadsStarted.set(0);
        if (this._jobs == null) {
            if (this._maxQueued > 0) {
                blockingArrayQueue = new ArrayBlockingQueue<>(this._maxQueued);
            } else {
                int i4 = this._minThreads;
                blockingArrayQueue = new BlockingArrayQueue<>(i4, i4);
            }
            this._jobs = blockingArrayQueue;
        }
        int i5 = this._threadsStarted.get();
        while (isRunning() && i5 < this._minThreads) {
            startThread(i5);
            i5 = this._threadsStarted.get();
        }
    }

    @Override // org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStop() throws InterruptedException {
        super.doStop();
        long jCurrentTimeMillis = System.currentTimeMillis();
        while (this._threadsStarted.get() > 0 && System.currentTimeMillis() - jCurrentTimeMillis < this._maxStopTime / 2) {
            Thread.sleep(1L);
        }
        this._jobs.clear();
        Runnable runnable = new Runnable() { // from class: org.eclipse.jetty.util.thread.QueuedThreadPool.1
            @Override // java.lang.Runnable
            public void run() {
            }
        };
        int i4 = this._threadsIdle.get();
        while (true) {
            int i5 = i4 - 1;
            if (i4 <= 0) {
                break;
            }
            this._jobs.offer(runnable);
            i4 = i5;
        }
        Thread.yield();
        if (this._threadsStarted.get() > 0) {
            Iterator<Thread> it = this._threads.iterator();
            while (it.hasNext()) {
                it.next().interrupt();
            }
        }
        while (this._threadsStarted.get() > 0 && System.currentTimeMillis() - jCurrentTimeMillis < this._maxStopTime) {
            Thread.sleep(1L);
        }
        Thread.yield();
        int size = this._threads.size();
        if (size > 0) {
            Logger logger = LOG;
            logger.warn(size + " threads could not be stopped", new Object[0]);
            if (size == 1 || logger.isDebugEnabled()) {
                for (Thread thread : this._threads) {
                    LOG.info("Couldn't stop " + thread, new Object[0]);
                    for (StackTraceElement stackTraceElement : thread.getStackTrace()) {
                        LOG.info(" at " + stackTraceElement, new Object[0]);
                    }
                }
            }
        }
        synchronized (this._joinLock) {
            this._joinLock.notifyAll();
        }
    }

    @Override // org.eclipse.jetty.util.component.Dumpable
    public String dump() {
        return AggregateLifeCycle.dump(this);
    }

    public String dumpThread(long j4) {
        for (Thread thread : this._threads) {
            if (thread.getId() == j4) {
                StringBuilder sb = new StringBuilder();
                sb.append(thread.getId());
                sb.append(" ");
                sb.append(thread.getName());
                sb.append(" ");
                sb.append(thread.getState());
                sb.append(":\n");
                StackTraceElement[] stackTrace = thread.getStackTrace();
                for (StackTraceElement stackTraceElement : stackTrace) {
                    sb.append("  at ");
                    sb.append(stackTraceElement.toString());
                    sb.append('\n');
                }
                return sb.toString();
            }
        }
        return null;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        if (!dispatch(runnable)) {
            throw new RejectedExecutionException();
        }
    }

    @Override // org.eclipse.jetty.util.thread.ThreadPool
    public int getIdleThreads() {
        return this._threadsIdle.get();
    }

    public int getMaxIdleTimeMs() {
        return this._maxIdleTimeMs;
    }

    public int getMaxQueued() {
        return this._maxQueued;
    }

    public int getMaxStopTimeMs() {
        return this._maxStopTime;
    }

    @Override // org.eclipse.jetty.util.thread.ThreadPool.SizedThreadPool
    public int getMaxThreads() {
        return this._maxThreads;
    }

    @Override // org.eclipse.jetty.util.thread.ThreadPool.SizedThreadPool
    public int getMinThreads() {
        return this._minThreads;
    }

    public String getName() {
        return this._name;
    }

    public BlockingQueue<Runnable> getQueue() {
        return this._jobs;
    }

    @Override // org.eclipse.jetty.util.thread.ThreadPool
    public int getThreads() {
        return this._threadsStarted.get();
    }

    public int getThreadsPriority() {
        return this._priority;
    }

    public boolean interruptThread(long j4) {
        for (Thread thread : this._threads) {
            if (thread.getId() == j4) {
                thread.interrupt();
                return true;
            }
        }
        return false;
    }

    public boolean isDaemon() {
        return this._daemon;
    }

    public boolean isDetailedDump() {
        return this._detailedDump;
    }

    @Override // org.eclipse.jetty.util.thread.ThreadPool
    public boolean isLowOnThreads() {
        return this._threadsStarted.get() == this._maxThreads && this._jobs.size() >= this._threadsIdle.get();
    }

    @Override // org.eclipse.jetty.util.thread.ThreadPool
    public void join() throws InterruptedException {
        synchronized (this._joinLock) {
            while (isRunning()) {
                this._joinLock.wait();
            }
        }
        while (isStopping()) {
            Thread.sleep(1L);
        }
    }

    public Thread newThread(Runnable runnable) {
        return new Thread(runnable);
    }

    public void runJob(Runnable runnable) {
        runnable.run();
    }

    public void setDaemon(boolean z3) {
        this._daemon = z3;
    }

    public void setDetailedDump(boolean z3) {
        this._detailedDump = z3;
    }

    public void setMaxIdleTimeMs(int i4) {
        this._maxIdleTimeMs = i4;
    }

    public void setMaxQueued(int i4) {
        if (isRunning()) {
            throw new IllegalStateException("started");
        }
        this._maxQueued = i4;
    }

    public void setMaxStopTimeMs(int i4) {
        this._maxStopTime = i4;
    }

    @Override // org.eclipse.jetty.util.thread.ThreadPool.SizedThreadPool
    public void setMaxThreads(int i4) {
        this._maxThreads = i4;
        if (this._minThreads > i4) {
            this._minThreads = i4;
        }
    }

    @Override // org.eclipse.jetty.util.thread.ThreadPool.SizedThreadPool
    public void setMinThreads(int i4) {
        this._minThreads = i4;
        if (i4 > this._maxThreads) {
            this._maxThreads = i4;
        }
        int i5 = this._threadsStarted.get();
        while (isStarted() && i5 < this._minThreads) {
            startThread(i5);
            i5 = this._threadsStarted.get();
        }
    }

    public void setName(String str) {
        if (isRunning()) {
            throw new IllegalStateException("started");
        }
        this._name = str;
    }

    public void setThreadsPriority(int i4) {
        this._priority = i4;
    }

    @Deprecated
    public boolean stopThread(long j4) {
        for (Thread thread : this._threads) {
            if (thread.getId() == j4) {
                thread.stop();
                return true;
            }
        }
        return false;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this._name);
        sb.append("{");
        sb.append(getMinThreads());
        sb.append("<=");
        sb.append(getIdleThreads());
        sb.append("<=");
        sb.append(getThreads());
        sb.append("/");
        sb.append(getMaxThreads());
        sb.append(",");
        BlockingQueue<Runnable> blockingQueue = this._jobs;
        return e.a(sb, blockingQueue == null ? -1 : blockingQueue.size(), "}");
    }

    @Override // org.eclipse.jetty.util.component.Dumpable
    public void dump(Appendable appendable, String str) throws IOException {
        ArrayList arrayList = new ArrayList(getMaxThreads());
        Iterator<Thread> it = this._threads.iterator();
        while (true) {
            final boolean z3 = true;
            if (!it.hasNext()) {
                AggregateLifeCycle.dumpObject(appendable, this);
                AggregateLifeCycle.dump(appendable, str, arrayList);
                return;
            }
            final Thread next = it.next();
            final StackTraceElement[] stackTrace = next.getStackTrace();
            if (stackTrace != null) {
                for (StackTraceElement stackTraceElement : stackTrace) {
                    if ("idleJobPoll".equals(stackTraceElement.getMethodName())) {
                        break;
                    }
                }
                z3 = false;
            } else {
                z3 = false;
            }
            if (this._detailedDump) {
                arrayList.add(new Dumpable() { // from class: org.eclipse.jetty.util.thread.QueuedThreadPool.2
                    @Override // org.eclipse.jetty.util.component.Dumpable
                    public String dump() {
                        return null;
                    }

                    @Override // org.eclipse.jetty.util.component.Dumpable
                    public void dump(Appendable appendable2, String str2) throws IOException {
                        appendable2.append(String.valueOf(next.getId())).append(' ').append(next.getName()).append(' ').append(next.getState().toString()).append(z3 ? " IDLE" : "").append('\n');
                        if (z3) {
                            return;
                        }
                        AggregateLifeCycle.dump(appendable2, str2, Arrays.asList(stackTrace));
                    }
                });
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append(next.getId());
                sb.append(" ");
                sb.append(next.getName());
                sb.append(" ");
                sb.append(next.getState());
                sb.append(" @ ");
                sb.append(stackTrace.length > 0 ? stackTrace[0] : "???");
                sb.append(z3 ? " IDLE" : "");
                arrayList.add(sb.toString());
            }
        }
    }

    public QueuedThreadPool(int i4) {
        this();
        setMaxThreads(i4);
    }

    public QueuedThreadPool(BlockingQueue<Runnable> blockingQueue) {
        this();
        this._jobs = blockingQueue;
        blockingQueue.clear();
    }
}
