package org.eclipse.jetty.io;

import java.io.IOException;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractConnection implements Connection {
    private static final Logger LOG = Log.getLogger((Class<?>) AbstractConnection.class);
    public final EndPoint _endp;
    private final long _timeStamp;

    public AbstractConnection(EndPoint endPoint) {
        this._endp = endPoint;
        this._timeStamp = System.currentTimeMillis();
    }

    public EndPoint getEndPoint() {
        return this._endp;
    }

    @Override // org.eclipse.jetty.io.Connection
    public long getTimeStamp() {
        return this._timeStamp;
    }

    @Override // org.eclipse.jetty.io.Connection
    public void onIdleExpired(long j4) {
        try {
            LOG.debug("onIdleExpired {}ms {} {}", Long.valueOf(j4), this, this._endp);
            if (this._endp.isInputShutdown() || this._endp.isOutputShutdown()) {
                this._endp.close();
            } else {
                this._endp.shutdownOutput();
            }
        } catch (IOException e4) {
            LOG.ignore(e4);
            try {
                this._endp.close();
            } catch (IOException e5) {
                LOG.ignore(e5);
            }
        }
    }

    public String toString() {
        return String.format("%s@%x", getClass().getSimpleName(), Integer.valueOf(hashCode()));
    }

    public AbstractConnection(EndPoint endPoint, long j4) {
        this._endp = endPoint;
        this._timeStamp = j4;
    }
}
