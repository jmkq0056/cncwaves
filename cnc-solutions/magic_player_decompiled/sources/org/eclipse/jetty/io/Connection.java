package org.eclipse.jetty.io;

/* JADX INFO: loaded from: classes2.dex */
public interface Connection {
    long getTimeStamp();

    Connection handle();

    boolean isIdle();

    boolean isSuspended();

    void onClose();

    void onIdleExpired(long j4);
}
