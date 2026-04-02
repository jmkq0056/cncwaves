package org.eclipse.jetty.continuation;

import g2.e0;

/* JADX INFO: loaded from: classes2.dex */
public interface Continuation {
    public static final String ATTRIBUTE = "org.eclipse.jetty.continuation";

    void addContinuationListener(ContinuationListener continuationListener);

    void complete();

    Object getAttribute(String str);

    e0 getServletResponse();

    boolean isExpired();

    boolean isInitial();

    boolean isResponseWrapped();

    boolean isResumed();

    boolean isSuspended();

    void removeAttribute(String str);

    void resume();

    void setAttribute(String str, Object obj);

    void setTimeout(long j4);

    void suspend();

    void suspend(e0 e0Var);

    void undispatch();
}
