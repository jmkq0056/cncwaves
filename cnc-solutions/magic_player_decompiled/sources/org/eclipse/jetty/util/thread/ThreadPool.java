package org.eclipse.jetty.util.thread;

/* JADX INFO: loaded from: classes2.dex */
public interface ThreadPool {

    public interface SizedThreadPool extends ThreadPool {
        int getMaxThreads();

        int getMinThreads();

        void setMaxThreads(int i4);

        void setMinThreads(int i4);
    }

    boolean dispatch(Runnable runnable);

    int getIdleThreads();

    int getThreads();

    boolean isLowOnThreads();

    void join();
}
