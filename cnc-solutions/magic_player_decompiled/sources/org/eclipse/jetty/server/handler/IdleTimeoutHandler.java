package org.eclipse.jetty.server.handler;

import g2.b;
import j2.c;
import j2.e;
import org.eclipse.jetty.io.EndPoint;
import org.eclipse.jetty.server.AbstractHttpConnection;
import org.eclipse.jetty.server.Request;

/* JADX INFO: loaded from: classes2.dex */
public class IdleTimeoutHandler extends HandlerWrapper {
    private int _idleTimeoutMs = 1000;
    private boolean _applyToAsync = false;

    public long getIdleTimeoutMs() {
        return this._idleTimeoutMs;
    }

    @Override // org.eclipse.jetty.server.handler.HandlerWrapper, org.eclipse.jetty.server.Handler
    public void handle(String str, Request request, c cVar, e eVar) {
        final int maxIdleTime;
        AbstractHttpConnection currentConnection = AbstractHttpConnection.getCurrentConnection();
        final EndPoint endPoint = currentConnection == null ? null : currentConnection.getEndPoint();
        if (endPoint == null) {
            maxIdleTime = -1;
        } else {
            maxIdleTime = endPoint.getMaxIdleTime();
            endPoint.setMaxIdleTime(this._idleTimeoutMs);
        }
        try {
            super.handle(str, request, cVar, eVar);
            if (endPoint != null) {
                if (this._applyToAsync && cVar.isAsyncStarted()) {
                    cVar.getAsyncContext().addListener(new g2.c() { // from class: org.eclipse.jetty.server.handler.IdleTimeoutHandler.1
                        @Override // g2.c
                        public void onComplete(b bVar) {
                            endPoint.setMaxIdleTime(maxIdleTime);
                        }

                        @Override // g2.c
                        public void onError(b bVar) {
                            endPoint.setMaxIdleTime(maxIdleTime);
                        }

                        @Override // g2.c
                        public void onStartAsync(b bVar) {
                        }

                        @Override // g2.c
                        public void onTimeout(b bVar) {
                        }
                    });
                } else {
                    endPoint.setMaxIdleTime(maxIdleTime);
                }
            }
        } catch (Throwable th) {
            if (endPoint != null) {
                if (this._applyToAsync && cVar.isAsyncStarted()) {
                    cVar.getAsyncContext().addListener(new g2.c() { // from class: org.eclipse.jetty.server.handler.IdleTimeoutHandler.1
                        @Override // g2.c
                        public void onComplete(b bVar) {
                            endPoint.setMaxIdleTime(maxIdleTime);
                        }

                        @Override // g2.c
                        public void onError(b bVar) {
                            endPoint.setMaxIdleTime(maxIdleTime);
                        }

                        @Override // g2.c
                        public void onStartAsync(b bVar) {
                        }

                        @Override // g2.c
                        public void onTimeout(b bVar) {
                        }
                    });
                } else {
                    endPoint.setMaxIdleTime(maxIdleTime);
                }
            }
            throw th;
        }
    }

    public boolean isApplyToAsync() {
        return this._applyToAsync;
    }

    public void setApplyToAsync(boolean z3) {
        this._applyToAsync = z3;
    }

    public void setIdleTimeoutMs(int i4) {
        this._idleTimeoutMs = i4;
    }
}
