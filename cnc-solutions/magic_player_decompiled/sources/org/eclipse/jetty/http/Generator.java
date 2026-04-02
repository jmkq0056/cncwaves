package org.eclipse.jetty.http;

import org.eclipse.jetty.io.Buffer;

/* JADX INFO: loaded from: classes2.dex */
public interface Generator {
    public static final boolean LAST = true;
    public static final boolean MORE = false;

    void addContent(Buffer buffer, boolean z3);

    void complete();

    void completeHeader(HttpFields httpFields, boolean z3);

    int flushBuffer();

    int getContentBufferSize();

    long getContentWritten();

    void increaseContentBufferSize(int i4);

    boolean isAllContentWritten();

    boolean isBufferFull();

    boolean isCommitted();

    boolean isComplete();

    boolean isIdle();

    boolean isPersistent();

    boolean isWritten();

    void reset();

    void resetBuffer();

    void returnBuffers();

    void sendError(int i4, String str, String str2, boolean z3);

    void setContentLength(long j4);

    void setDate(Buffer buffer);

    void setHead(boolean z3);

    void setPersistent(boolean z3);

    void setRequest(String str, String str2);

    void setResponse(int i4, String str);

    void setSendServerVersion(boolean z3);

    void setVersion(int i4);
}
