package org.eclipse.jetty.server;

import android.support.v4.media.f;
import java.io.IOException;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.TimeUnit;
import org.eclipse.jetty.util.BlockingArrayQueue;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class AsyncNCSARequestLog extends NCSARequestLog {
    private static final Logger LOG = Log.getLogger((Class<?>) AsyncNCSARequestLog.class);
    private final BlockingQueue<String> _queue;
    private transient WriterThread _thread;
    private boolean _warnedFull;

    public class WriterThread extends Thread {
        public WriterThread() {
            StringBuilder sbA = f.a("AsyncNCSARequestLog@");
            sbA.append(Integer.toString(AsyncNCSARequestLog.this.hashCode(), 16));
            setName(sbA.toString());
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (AsyncNCSARequestLog.this.isRunning()) {
                try {
                    String str = (String) AsyncNCSARequestLog.this._queue.poll(10L, TimeUnit.SECONDS);
                    if (str != null) {
                        AsyncNCSARequestLog.super.write(str);
                    }
                    while (!AsyncNCSARequestLog.this._queue.isEmpty()) {
                        String str2 = (String) AsyncNCSARequestLog.this._queue.poll();
                        if (str2 != null) {
                            AsyncNCSARequestLog.super.write(str2);
                        }
                    }
                } catch (IOException e4) {
                    AsyncNCSARequestLog.LOG.warn(e4);
                } catch (InterruptedException e5) {
                    AsyncNCSARequestLog.LOG.ignore(e5);
                }
            }
        }
    }

    public AsyncNCSARequestLog() {
        this(null, null);
    }

    @Override // org.eclipse.jetty.server.NCSARequestLog, org.eclipse.jetty.util.component.AbstractLifeCycle
    public synchronized void doStart() {
        super.doStart();
        WriterThread writerThread = new WriterThread();
        this._thread = writerThread;
        writerThread.start();
    }

    @Override // org.eclipse.jetty.server.NCSARequestLog, org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStop() throws InterruptedException {
        this._thread.interrupt();
        this._thread.join();
        super.doStop();
        this._thread = null;
    }

    @Override // org.eclipse.jetty.server.NCSARequestLog
    public void write(String str) {
        if (this._queue.offer(str)) {
            return;
        }
        if (this._warnedFull) {
            LOG.warn("Log Queue overflow", new Object[0]);
        }
        this._warnedFull = true;
    }

    public AsyncNCSARequestLog(BlockingQueue<String> blockingQueue) {
        this(null, blockingQueue);
    }

    public AsyncNCSARequestLog(String str) {
        this(str, null);
    }

    public AsyncNCSARequestLog(String str, BlockingQueue<String> blockingQueue) {
        super(str);
        this._queue = blockingQueue == null ? new BlockingArrayQueue<>(1024) : blockingQueue;
    }
}
