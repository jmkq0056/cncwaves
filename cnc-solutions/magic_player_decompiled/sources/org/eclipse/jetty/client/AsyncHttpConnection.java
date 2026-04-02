package org.eclipse.jetty.client;

import org.eclipse.jetty.io.AsyncEndPoint;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.io.Buffers;
import org.eclipse.jetty.io.EndPoint;
import org.eclipse.jetty.io.nio.AsyncConnection;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class AsyncHttpConnection extends AbstractHttpConnection implements AsyncConnection {
    private static final Logger LOG = Log.getLogger((Class<?>) AsyncHttpConnection.class);
    private final AsyncEndPoint _asyncEndp;
    private boolean _requestComplete;
    private Buffer _requestContentChunk;

    public AsyncHttpConnection(Buffers buffers, Buffers buffers2, EndPoint endPoint) {
        super(buffers, buffers2, endPoint);
        this._asyncEndp = (AsyncEndPoint) endPoint;
    }

    /* JADX WARN: Code restructure failed: missing block: B:137:0x0228, code lost:
    
        r7.debug("finally {} on {} progress={} {}", r8, r16, java.lang.Boolean.valueOf(r13), r16._endp);
        r16._generator.setPersistent(false);
        reset();
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x0245, code lost:
    
        monitor-enter(r16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x0246, code lost:
    
        r0 = r16._exchange;
        r16._exchange = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x024a, code lost:
    
        if (r0 == null) goto L142;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x024c, code lost:
    
        r0.cancelTimeout(r16._destination.getHttpClient());
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x0257, code lost:
    
        if (r16._status != 101) goto L150;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x0259, code lost:
    
        r0 = r0.onSwitchProtocol(r16._endp);
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x025f, code lost:
    
        if (r0 == null) goto L150;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x0261, code lost:
    
        r4 = r16._pipeline;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x0263, code lost:
    
        if (r4 == null) goto L149;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x0265, code lost:
    
        r16._destination.send(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x026a, code lost:
    
        r16._pipeline = null;
        r4 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x026d, code lost:
    
        r0 = r16._pipeline;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x026f, code lost:
    
        if (r0 == null) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x0271, code lost:
    
        r16._destination.send(r0);
        r16._pipeline = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x027a, code lost:
    
        if (r16._exchange != null) goto L158;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x0280, code lost:
    
        if (isReserved() != false) goto L158;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x0282, code lost:
    
        r16._destination.returnConnection(r16, true);
     */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0200  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // org.eclipse.jetty.client.AbstractHttpConnection, org.eclipse.jetty.io.Connection
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.eclipse.jetty.io.Connection handle() {
        /*
            Method dump skipped, instruction units count: 925
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.client.AsyncHttpConnection.handle():org.eclipse.jetty.io.Connection");
    }

    @Override // org.eclipse.jetty.io.nio.AsyncConnection
    public void onInputShutdown() {
        if (this._generator.isIdle()) {
            this._endp.shutdownOutput();
        }
    }

    @Override // org.eclipse.jetty.client.AbstractHttpConnection
    public void reset() {
        this._requestComplete = false;
        super.reset();
    }

    @Override // org.eclipse.jetty.client.AbstractHttpConnection
    public boolean send(HttpExchange httpExchange) {
        boolean zSend = super.send(httpExchange);
        if (zSend) {
            this._asyncEndp.asyncDispatch();
        }
        return zSend;
    }
}
