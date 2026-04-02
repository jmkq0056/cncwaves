package org.eclipse.jetty.client;

import java.io.IOException;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.io.Buffers;
import org.eclipse.jetty.io.EndPoint;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class BlockingHttpConnection extends AbstractHttpConnection {
    private static final Logger LOG = Log.getLogger((Class<?>) BlockingHttpConnection.class);
    private boolean _expired;
    private boolean _requestComplete;
    private Buffer _requestContentChunk;

    public BlockingHttpConnection(Buffers buffers, Buffers buffers2, EndPoint endPoint) {
        super(buffers, buffers2, endPoint);
        this._expired = false;
    }

    @Override // org.eclipse.jetty.client.AbstractHttpConnection
    public void exchangeExpired(HttpExchange httpExchange) {
        synchronized (this) {
            super.exchangeExpired(httpExchange);
            this._expired = true;
            notifyAll();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0044, code lost:
    
        throw new java.lang.InterruptedException();
     */
    @Override // org.eclipse.jetty.client.AbstractHttpConnection, org.eclipse.jetty.io.Connection
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.eclipse.jetty.io.Connection handle() {
        /*
            Method dump skipped, instruction units count: 832
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.client.BlockingHttpConnection.handle():org.eclipse.jetty.io.Connection");
    }

    @Override // org.eclipse.jetty.io.AbstractConnection, org.eclipse.jetty.io.Connection
    public void onIdleExpired(long j4) {
        try {
            LOG.debug("onIdleExpired {}ms {} {}", Long.valueOf(j4), this, this._endp);
            this._expired = true;
            this._endp.close();
        } catch (IOException e4) {
            LOG.ignore(e4);
            try {
                this._endp.close();
            } catch (IOException e5) {
                LOG.ignore(e5);
            }
        }
        synchronized (this) {
            notifyAll();
        }
    }

    @Override // org.eclipse.jetty.client.AbstractHttpConnection
    public void reset() {
        this._requestComplete = false;
        this._expired = false;
        super.reset();
    }

    @Override // org.eclipse.jetty.client.AbstractHttpConnection
    public boolean send(HttpExchange httpExchange) {
        boolean zSend = super.send(httpExchange);
        if (zSend) {
            synchronized (this) {
                notifyAll();
            }
        }
        return zSend;
    }
}
