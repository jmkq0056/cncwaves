package org.eclipse.jetty.io;

import org.eclipse.jetty.util.thread.Timeout;

/* JADX INFO: loaded from: classes2.dex */
public interface AsyncEndPoint extends ConnectedEndPoint {
    void asyncDispatch();

    void cancelTimeout(Timeout.Task task);

    void dispatch();

    boolean hasProgressed();

    boolean isCheckForIdle();

    boolean isWritable();

    void onIdleExpired(long j4);

    void scheduleTimeout(Timeout.Task task, long j4);

    void scheduleWrite();

    void setCheckForIdle(boolean z3);
}
