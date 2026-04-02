package org.eclipse.jetty.server;

import org.eclipse.jetty.io.AsyncEndPoint;
import org.eclipse.jetty.io.EndPoint;
import org.eclipse.jetty.io.nio.AsyncConnection;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class AsyncHttpConnection extends AbstractHttpConnection implements AsyncConnection {
    private final AsyncEndPoint _asyncEndp;
    private boolean _readInterested;
    private int _total_no_progress;
    private static final int NO_PROGRESS_INFO = Integer.getInteger("org.mortbay.jetty.NO_PROGRESS_INFO", 100).intValue();
    private static final int NO_PROGRESS_CLOSE = Integer.getInteger("org.mortbay.jetty.NO_PROGRESS_CLOSE", 200).intValue();
    private static final Logger LOG = Log.getLogger((Class<?>) AsyncHttpConnection.class);

    public AsyncHttpConnection(Connector connector, EndPoint endPoint, Server server) {
        super(connector, endPoint, server);
        this._readInterested = true;
        this._asyncEndp = (AsyncEndPoint) endPoint;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:(2:10|(1:12))(16:13|(0)(1:17)|173|19|(1:29)|30|(1:32)|33|171|34|(1:38)(1:37)|(1:(5:41|(1:45)|46|(1:50)|51)(1:52))|(2:56|57)|58|182|93)|173|19|(5:21|23|25|27|29)|30|(0)|33|171|34|(5:38|(0)|(3:54|56|57)|58|182)(0)|93) */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x01e2, code lost:
    
        r12 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x01e7, code lost:
    
        if (r10 != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x01f1, code lost:
    
        if (r17._response.getStatus() == 101) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x01f3, code lost:
    
        r6 = (org.eclipse.jetty.io.Connection) r17._request.getAttribute("org.eclipse.jetty.io.Connection");
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x01fb, code lost:
    
        reset();
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0204, code lost:
    
        if (r17._generator.isPersistent() == false) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x020e, code lost:
    
        org.eclipse.jetty.server.AsyncHttpConnection.LOG.warn("Safety net oshut!!!  IF YOU SEE THIS, PLEASE RAISE BUGZILLA", new java.lang.Object[0]);
        r17._endp.shutdownOutput();
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x021c, code lost:
    
        r17._readInterested = false;
        org.eclipse.jetty.server.AsyncHttpConnection.LOG.debug("Disabled read interest while writing response {}", r17._endp);
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00ff, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0108, code lost:
    
        r10 = org.eclipse.jetty.server.AsyncHttpConnection.LOG;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x010e, code lost:
    
        if (r10.isDebugEnabled() != false) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0110, code lost:
    
        r10.debug("uri=" + r17._uri, new java.lang.Object[r9]);
        r10.debug("fields=" + r17._requestFields, new java.lang.Object[r9]);
        r10.debug(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0143, code lost:
    
        r17._generator.sendError(r0.getStatus(), r0.getReason(), null, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0152, code lost:
    
        r11 = r11 | true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0154, code lost:
    
        r0 = r17._parser.isComplete();
        r9 = r17._generator.isComplete();
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0160, code lost:
    
        if (r0 == false) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0164, code lost:
    
        r13 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0166, code lost:
    
        r13 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0167, code lost:
    
        if (r0 != false) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0169, code lost:
    
        if (r9 != false) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0173, code lost:
    
        if (r17._response.getStatus() == 101) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x017f, code lost:
    
        r12 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0180, code lost:
    
        reset();
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0189, code lost:
    
        if (r17._generator.isPersistent() == false) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0193, code lost:
    
        r10.warn("Safety net oshut!!!  IF YOU SEE THIS, PLEASE RAISE BUGZILLA", new java.lang.Object[0]);
        r17._endp.shutdownOutput();
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x019f, code lost:
    
        r17._readInterested = false;
        r10.debug("Disabled read interest while writing response {}", r17._endp);
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x01ac, code lost:
    
        if (r13 != false) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01ba, code lost:
    
        r10.debug("suspended {}", r17);
        r10 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01c6, code lost:
    
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01cc, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01cd, code lost:
    
        r9 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:102:0x01e4  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00a1  */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v18 */
    @Override // org.eclipse.jetty.server.AbstractHttpConnection, org.eclipse.jetty.io.Connection
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.eclipse.jetty.io.Connection handle() throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 895
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.server.AsyncHttpConnection.handle():org.eclipse.jetty.io.Connection");
    }

    @Override // org.eclipse.jetty.server.AbstractHttpConnection, org.eclipse.jetty.io.Connection
    public boolean isSuspended() {
        return !this._readInterested || super.isSuspended();
    }

    @Override // org.eclipse.jetty.io.nio.AsyncConnection
    public void onInputShutdown() {
        if (this._generator.isIdle() && !this._request.getAsyncContinuation().isSuspended()) {
            this._endp.close();
        }
        if (this._parser.isIdle()) {
            this._parser.setPersistent(false);
        }
    }

    @Override // org.eclipse.jetty.server.AbstractHttpConnection
    public void reset() {
        this._readInterested = true;
        LOG.debug("Enabled read interest {}", this._endp);
        super.reset();
    }
}
