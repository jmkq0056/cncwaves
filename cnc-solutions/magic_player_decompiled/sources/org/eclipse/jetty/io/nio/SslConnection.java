package org.eclipse.jetty.io.nio;

import androidx.recyclerview.widget.RecyclerView;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLEngineResult;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import org.eclipse.jetty.io.AbstractConnection;
import org.eclipse.jetty.io.AsyncEndPoint;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.io.Connection;
import org.eclipse.jetty.io.EndPoint;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;
import org.eclipse.jetty.util.thread.Timeout;

/* JADX INFO: loaded from: classes2.dex */
public class SslConnection extends AbstractConnection implements AsyncConnection {
    private static final NIOBuffer __ZERO_BUFFER = new IndirectNIOBuffer(0);
    private static final ThreadLocal<SslBuffers> __buffers = new ThreadLocal<>();
    private AsyncEndPoint _aEndp;
    private int _allocations;
    private boolean _allowRenegotiate;
    private SslBuffers _buffers;
    private AsyncConnection _connection;
    private final SSLEngine _engine;
    private boolean _handshook;
    private NIOBuffer _inbound;
    private boolean _ishut;
    private final Logger _logger;
    private boolean _oshut;
    private NIOBuffer _outbound;
    private final AtomicBoolean _progressed;
    private final SSLSession _session;
    private final SslEndPoint _sslEndPoint;
    private NIOBuffer _unwrapBuf;

    /* JADX INFO: renamed from: org.eclipse.jetty.io.nio.SslConnection$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus;
        public static final /* synthetic */ int[] $SwitchMap$javax$net$ssl$SSLEngineResult$Status;

        static {
            int[] iArr = new int[SSLEngineResult.Status.values().length];
            $SwitchMap$javax$net$ssl$SSLEngineResult$Status = iArr;
            try {
                iArr[SSLEngineResult.Status.BUFFER_UNDERFLOW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$javax$net$ssl$SSLEngineResult$Status[SSLEngineResult.Status.BUFFER_OVERFLOW.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$javax$net$ssl$SSLEngineResult$Status[SSLEngineResult.Status.OK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$javax$net$ssl$SSLEngineResult$Status[SSLEngineResult.Status.CLOSED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[SSLEngineResult.HandshakeStatus.values().length];
            $SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus = iArr2;
            try {
                iArr2[SSLEngineResult.HandshakeStatus.FINISHED.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus[SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus[SSLEngineResult.HandshakeStatus.NEED_TASK.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus[SSLEngineResult.HandshakeStatus.NEED_WRAP.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus[SSLEngineResult.HandshakeStatus.NEED_UNWRAP.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public static class SslBuffers {
        public final NIOBuffer _in;
        public final NIOBuffer _out;
        public final NIOBuffer _unwrap;

        public SslBuffers(int i4, int i5) {
            this._in = new IndirectNIOBuffer(i4);
            this._out = new IndirectNIOBuffer(i4);
            this._unwrap = new IndirectNIOBuffer(i5);
        }
    }

    public SslConnection(SSLEngine sSLEngine, EndPoint endPoint) {
        this(sSLEngine, endPoint, System.currentTimeMillis());
    }

    private void allocateBuffers() {
        synchronized (this) {
            int i4 = this._allocations;
            this._allocations = i4 + 1;
            if (i4 == 0 && this._buffers == null) {
                ThreadLocal<SslBuffers> threadLocal = __buffers;
                SslBuffers sslBuffers = threadLocal.get();
                this._buffers = sslBuffers;
                if (sslBuffers == null) {
                    this._buffers = new SslBuffers(this._session.getPacketBufferSize() * 2, this._session.getApplicationBufferSize() * 2);
                }
                SslBuffers sslBuffers2 = this._buffers;
                this._inbound = sslBuffers2._in;
                this._outbound = sslBuffers2._out;
                this._unwrapBuf = sslBuffers2._unwrap;
                threadLocal.set(null);
            }
        }
    }

    private void closeInbound() {
        try {
            this._engine.closeInbound();
        } catch (SSLException e4) {
            this._logger.debug(e4);
        }
    }

    private ByteBuffer extractByteBuffer(Buffer buffer) {
        return buffer.buffer() instanceof NIOBuffer ? ((NIOBuffer) buffer.buffer()).getByteBuffer() : ByteBuffer.wrap(buffer.array());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:155:0x019a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0086 A[Catch: IOException -> 0x01a0, all -> 0x01ad, TRY_LEAVE, TryCatch #3 {IOException -> 0x01a0, blocks: (B:41:0x007e, B:43:0x0086), top: B:147:0x007e }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00e0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized boolean process(org.eclipse.jetty.io.Buffer r17, org.eclipse.jetty.io.Buffer r18) {
        /*
            Method dump skipped, instruction units count: 547
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.io.nio.SslConnection.process(org.eclipse.jetty.io.Buffer, org.eclipse.jetty.io.Buffer):boolean");
    }

    private void releaseBuffers() {
        synchronized (this) {
            int i4 = this._allocations - 1;
            this._allocations = i4;
            if (i4 == 0 && this._buffers != null && this._inbound.length() == 0 && this._outbound.length() == 0 && this._unwrapBuf.length() == 0) {
                this._inbound = null;
                this._outbound = null;
                this._unwrapBuf = null;
                __buffers.set(this._buffers);
                this._buffers = null;
            }
        }
    }

    private synchronized boolean unwrap(Buffer buffer) {
        SSLEngineResult sSLEngineResultUnwrap;
        int iPosition;
        int iPosition2;
        int i4 = 0;
        int i5 = 0;
        if (!this._inbound.hasContent()) {
            return false;
        }
        ByteBuffer byteBufferExtractByteBuffer = extractByteBuffer(buffer);
        synchronized (byteBufferExtractByteBuffer) {
            ByteBuffer byteBuffer = this._inbound.getByteBuffer();
            synchronized (byteBuffer) {
                try {
                    try {
                        try {
                            try {
                                byteBufferExtractByteBuffer.position(buffer.putIndex());
                                byteBufferExtractByteBuffer.limit(buffer.capacity());
                                int iPosition3 = byteBufferExtractByteBuffer.position();
                                byteBuffer.position(this._inbound.getIndex());
                                byteBuffer.limit(this._inbound.putIndex());
                                int iPosition4 = byteBuffer.position();
                                sSLEngineResultUnwrap = this._engine.unwrap(byteBuffer, byteBufferExtractByteBuffer);
                                if (this._logger.isDebugEnabled()) {
                                    this._logger.debug("{} unwrap {} {} consumed={} produced={}", this._session, sSLEngineResultUnwrap.getStatus(), sSLEngineResultUnwrap.getHandshakeStatus(), Integer.valueOf(sSLEngineResultUnwrap.bytesConsumed()), Integer.valueOf(sSLEngineResultUnwrap.bytesProduced()));
                                }
                                iPosition = byteBuffer.position() - iPosition4;
                                this._inbound.skip(iPosition);
                                this._inbound.compact();
                                iPosition2 = byteBufferExtractByteBuffer.position() - iPosition3;
                                buffer.setPutIndex(buffer.putIndex() + iPosition2);
                            } catch (Exception e4) {
                                throw new IOException(e4);
                            }
                        } catch (SSLException e5) {
                            this._logger.debug(String.valueOf(this._endp), e5);
                            this._endp.close();
                            throw e5;
                        }
                    } catch (IOException e6) {
                        throw e6;
                    }
                } finally {
                    byteBuffer.position(0);
                    byteBuffer.limit(byteBuffer.capacity());
                    byteBufferExtractByteBuffer.position(0);
                    byteBufferExtractByteBuffer.limit(byteBufferExtractByteBuffer.capacity());
                }
            }
        }
        int i6 = AnonymousClass1.$SwitchMap$javax$net$ssl$SSLEngineResult$Status[sSLEngineResultUnwrap.getStatus().ordinal()];
        if (i6 != 1) {
            if (i6 != 2) {
                if (i6 != 3) {
                    if (i6 != 4) {
                        this._logger.debug("{} wrap default {}", this._session, sSLEngineResultUnwrap);
                        throw new IOException(sSLEngineResultUnwrap.toString());
                    }
                    this._logger.debug("unwrap CLOSE {} {}", this, sSLEngineResultUnwrap);
                    if (sSLEngineResultUnwrap.getHandshakeStatus() == SSLEngineResult.HandshakeStatus.FINISHED) {
                        this._endp.close();
                    }
                } else if (sSLEngineResultUnwrap.getHandshakeStatus() == SSLEngineResult.HandshakeStatus.FINISHED) {
                    this._handshook = true;
                }
            } else if (this._logger.isDebugEnabled()) {
                this._logger.debug("{} unwrap {} {}->{}", this._session, sSLEngineResultUnwrap.getStatus(), this._inbound.toDetailString(), buffer.toDetailString());
            }
        } else if (this._endp.isInputShutdown()) {
            this._inbound.clear();
        }
        return iPosition > 0 || iPosition2 > 0;
    }

    private synchronized boolean wrap(Buffer buffer) {
        SSLEngineResult sSLEngineResultWrap;
        int iPosition;
        int iPosition2;
        ByteBuffer byteBufferExtractByteBuffer = extractByteBuffer(buffer);
        synchronized (byteBufferExtractByteBuffer) {
            this._outbound.compact();
            ByteBuffer byteBuffer = this._outbound.getByteBuffer();
            synchronized (byteBuffer) {
                int i4 = 0;
                int i5 = 0;
                try {
                    try {
                        try {
                            try {
                                byteBufferExtractByteBuffer.position(buffer.getIndex());
                                byteBufferExtractByteBuffer.limit(buffer.putIndex());
                                int iPosition3 = byteBufferExtractByteBuffer.position();
                                byteBuffer.position(this._outbound.putIndex());
                                byteBuffer.limit(byteBuffer.capacity());
                                int iPosition4 = byteBuffer.position();
                                sSLEngineResultWrap = this._engine.wrap(byteBufferExtractByteBuffer, byteBuffer);
                                if (this._logger.isDebugEnabled()) {
                                    this._logger.debug("{} wrap {} {} consumed={} produced={}", this._session, sSLEngineResultWrap.getStatus(), sSLEngineResultWrap.getHandshakeStatus(), Integer.valueOf(sSLEngineResultWrap.bytesConsumed()), Integer.valueOf(sSLEngineResultWrap.bytesProduced()));
                                }
                                iPosition = byteBufferExtractByteBuffer.position() - iPosition3;
                                buffer.skip(iPosition);
                                iPosition2 = byteBuffer.position() - iPosition4;
                                NIOBuffer nIOBuffer = this._outbound;
                                nIOBuffer.setPutIndex(nIOBuffer.putIndex() + iPosition2);
                            } catch (Exception e4) {
                                throw new IOException(e4);
                            }
                        } catch (SSLException e5) {
                            this._logger.debug(String.valueOf(this._endp), e5);
                            this._endp.close();
                            throw e5;
                        }
                    } catch (IOException e6) {
                        throw e6;
                    }
                } finally {
                    byteBuffer.position(0);
                    byteBuffer.limit(byteBuffer.capacity());
                    byteBufferExtractByteBuffer.position(0);
                    byteBufferExtractByteBuffer.limit(byteBufferExtractByteBuffer.capacity());
                }
            }
        }
        int i6 = AnonymousClass1.$SwitchMap$javax$net$ssl$SSLEngineResult$Status[sSLEngineResultWrap.getStatus().ordinal()];
        if (i6 == 1) {
            throw new IllegalStateException();
        }
        if (i6 != 2) {
            if (i6 != 3) {
                if (i6 != 4) {
                    this._logger.debug("{} wrap default {}", this._session, sSLEngineResultWrap);
                    throw new IOException(sSLEngineResultWrap.toString());
                }
                this._logger.debug("wrap CLOSE {} {}", this, sSLEngineResultWrap);
                if (sSLEngineResultWrap.getHandshakeStatus() == SSLEngineResult.HandshakeStatus.FINISHED) {
                    this._endp.close();
                }
            } else if (sSLEngineResultWrap.getHandshakeStatus() == SSLEngineResult.HandshakeStatus.FINISHED) {
                this._handshook = true;
            }
        }
        return iPosition > 0 || iPosition2 > 0;
    }

    public AsyncEndPoint getSslEndPoint() {
        return this._sslEndPoint;
    }

    @Override // org.eclipse.jetty.io.Connection
    public Connection handle() {
        try {
            allocateBuffers();
            boolean zProcess = true;
            while (zProcess) {
                zProcess = this._engine.getHandshakeStatus() != SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING ? process(null, null) : false;
                AsyncConnection asyncConnection = (AsyncConnection) this._connection.handle();
                if (asyncConnection != this._connection && asyncConnection != null) {
                    this._connection = asyncConnection;
                    zProcess = true;
                }
                this._logger.debug("{} handle {} progress={}", this._session, this, Boolean.valueOf(zProcess));
            }
            return this;
        } finally {
            releaseBuffers();
            if (!this._ishut && this._sslEndPoint.isInputShutdown() && this._sslEndPoint.isOpen()) {
                this._ishut = true;
                try {
                    this._connection.onInputShutdown();
                } catch (Throwable th) {
                    this._logger.warn("onInputShutdown failed", th);
                    try {
                        this._sslEndPoint.close();
                    } catch (IOException e4) {
                        this._logger.ignore(e4);
                    }
                }
            }
        }
    }

    public boolean isAllowRenegotiate() {
        return this._allowRenegotiate;
    }

    @Override // org.eclipse.jetty.io.Connection
    public boolean isIdle() {
        return false;
    }

    @Override // org.eclipse.jetty.io.Connection
    public boolean isSuspended() {
        return false;
    }

    public SslEndPoint newSslEndPoint() {
        return new SslEndPoint();
    }

    @Override // org.eclipse.jetty.io.Connection
    public void onClose() {
        Connection connection = this._sslEndPoint.getConnection();
        if (connection == null || connection == this) {
            return;
        }
        connection.onClose();
    }

    @Override // org.eclipse.jetty.io.AbstractConnection, org.eclipse.jetty.io.Connection
    public void onIdleExpired(long j4) {
        try {
            this._logger.debug("onIdleExpired {}ms on {}", Long.valueOf(j4), this);
            if (this._endp.isOutputShutdown()) {
                this._sslEndPoint.close();
            } else {
                this._sslEndPoint.shutdownOutput();
            }
        } catch (IOException e4) {
            this._logger.warn(e4);
            super.onIdleExpired(j4);
        }
    }

    @Override // org.eclipse.jetty.io.nio.AsyncConnection
    public void onInputShutdown() {
    }

    public void setAllowRenegotiate(boolean z3) {
        this._allowRenegotiate = z3;
    }

    @Override // org.eclipse.jetty.io.AbstractConnection
    public String toString() {
        return String.format("%s %s", super.toString(), this._sslEndPoint);
    }

    public SslConnection(SSLEngine sSLEngine, EndPoint endPoint, long j4) {
        super(endPoint, j4);
        this._logger = Log.getLogger("org.eclipse.jetty.io.nio.ssl");
        this._allowRenegotiate = true;
        this._progressed = new AtomicBoolean();
        this._engine = sSLEngine;
        this._session = sSLEngine.getSession();
        this._aEndp = (AsyncEndPoint) endPoint;
        this._sslEndPoint = newSslEndPoint();
    }

    public class SslEndPoint implements AsyncEndPoint {
        public SslEndPoint() {
        }

        @Override // org.eclipse.jetty.io.AsyncEndPoint
        public void asyncDispatch() {
            SslConnection.this._aEndp.asyncDispatch();
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public boolean blockReadable(long j4) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j5 = j4 > 0 ? j4 + jCurrentTimeMillis : RecyclerView.FOREVER_NS;
            while (jCurrentTimeMillis < j5 && !SslConnection.this.process(null, null)) {
                SslConnection.this._endp.blockReadable(j5 - jCurrentTimeMillis);
                jCurrentTimeMillis = System.currentTimeMillis();
            }
            return jCurrentTimeMillis < j5;
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public boolean blockWritable(long j4) {
            return SslConnection.this._endp.blockWritable(j4);
        }

        @Override // org.eclipse.jetty.io.AsyncEndPoint
        public void cancelTimeout(Timeout.Task task) {
            SslConnection.this._aEndp.cancelTimeout(task);
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public void close() {
            SslConnection.this._logger.debug("{} ssl endp.close", SslConnection.this._session);
            SslConnection.this._endp.close();
        }

        @Override // org.eclipse.jetty.io.AsyncEndPoint
        public void dispatch() {
            SslConnection.this._aEndp.dispatch();
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public int fill(Buffer buffer) {
            int length = buffer.length();
            SslConnection.this.process(buffer, null);
            int length2 = buffer.length() - length;
            if (length2 == 0 && isInputShutdown()) {
                return -1;
            }
            return length2;
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public int flush(Buffer buffer) {
            int length = buffer.length();
            SslConnection.this.process(null, buffer);
            return length - buffer.length();
        }

        @Override // org.eclipse.jetty.io.ConnectedEndPoint
        public Connection getConnection() {
            return SslConnection.this._connection;
        }

        public AsyncEndPoint getEndpoint() {
            return SslConnection.this._aEndp;
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public String getLocalAddr() {
            return SslConnection.this._aEndp.getLocalAddr();
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public String getLocalHost() {
            return SslConnection.this._aEndp.getLocalHost();
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public int getLocalPort() {
            return SslConnection.this._aEndp.getLocalPort();
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public int getMaxIdleTime() {
            return SslConnection.this._aEndp.getMaxIdleTime();
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public String getRemoteAddr() {
            return SslConnection.this._aEndp.getRemoteAddr();
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public String getRemoteHost() {
            return SslConnection.this._aEndp.getRemoteHost();
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public int getRemotePort() {
            return SslConnection.this._aEndp.getRemotePort();
        }

        public SSLEngine getSslEngine() {
            return SslConnection.this._engine;
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public Object getTransport() {
            return SslConnection.this._endp;
        }

        @Override // org.eclipse.jetty.io.AsyncEndPoint
        public boolean hasProgressed() {
            return SslConnection.this._progressed.getAndSet(false);
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public boolean isBlocking() {
            return false;
        }

        @Override // org.eclipse.jetty.io.AsyncEndPoint
        public boolean isCheckForIdle() {
            return SslConnection.this._aEndp.isCheckForIdle();
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public boolean isInputShutdown() {
            boolean z3;
            synchronized (SslConnection.this) {
                z3 = SslConnection.this._endp.isInputShutdown() && (SslConnection.this._unwrapBuf == null || !SslConnection.this._unwrapBuf.hasContent()) && (SslConnection.this._inbound == null || !SslConnection.this._inbound.hasContent());
            }
            return z3;
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public boolean isOpen() {
            return SslConnection.this._endp.isOpen();
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public boolean isOutputShutdown() {
            boolean z3;
            synchronized (SslConnection.this) {
                z3 = SslConnection.this._oshut || !isOpen() || SslConnection.this._engine.isOutboundDone();
            }
            return z3;
        }

        @Override // org.eclipse.jetty.io.AsyncEndPoint
        public boolean isWritable() {
            return SslConnection.this._aEndp.isWritable();
        }

        @Override // org.eclipse.jetty.io.AsyncEndPoint
        public void onIdleExpired(long j4) {
            SslConnection.this._aEndp.onIdleExpired(j4);
        }

        @Override // org.eclipse.jetty.io.AsyncEndPoint
        public void scheduleTimeout(Timeout.Task task, long j4) {
            SslConnection.this._aEndp.scheduleTimeout(task, j4);
        }

        @Override // org.eclipse.jetty.io.AsyncEndPoint
        public void scheduleWrite() {
            SslConnection.this._aEndp.scheduleWrite();
        }

        @Override // org.eclipse.jetty.io.AsyncEndPoint
        public void setCheckForIdle(boolean z3) {
            SslConnection.this._aEndp.setCheckForIdle(z3);
        }

        @Override // org.eclipse.jetty.io.ConnectedEndPoint
        public void setConnection(Connection connection) {
            SslConnection.this._connection = (AsyncConnection) connection;
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public void setMaxIdleTime(int i4) {
            SslConnection.this._aEndp.setMaxIdleTime(i4);
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public void shutdownInput() {
            SslConnection.this._logger.debug("{} ssl endp.ishut!", SslConnection.this._session);
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public void shutdownOutput() {
            synchronized (SslConnection.this) {
                try {
                    SslConnection.this._logger.debug("{} ssl endp.oshut {}", SslConnection.this._session, this);
                    SslConnection.this._oshut = true;
                    SslConnection.this._engine.closeOutbound();
                } catch (Exception e4) {
                    throw new IOException(e4);
                }
            }
            flush();
        }

        public String toString() {
            NIOBuffer nIOBuffer = SslConnection.this._inbound;
            NIOBuffer nIOBuffer2 = SslConnection.this._outbound;
            NIOBuffer nIOBuffer3 = SslConnection.this._unwrapBuf;
            return String.format("SSL %s i/o/u=%d/%d/%d ishut=%b oshut=%b {%s}", SslConnection.this._engine.getHandshakeStatus(), Integer.valueOf(nIOBuffer == null ? -1 : nIOBuffer.length()), Integer.valueOf(nIOBuffer2 == null ? -1 : nIOBuffer2.length()), Integer.valueOf(nIOBuffer3 != null ? nIOBuffer3.length() : -1), Boolean.valueOf(SslConnection.this._ishut), Boolean.valueOf(SslConnection.this._oshut), SslConnection.this._connection);
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public int flush(Buffer buffer, Buffer buffer2, Buffer buffer3) {
            if (buffer != null && buffer.hasContent()) {
                return flush(buffer);
            }
            if (buffer2 != null && buffer2.hasContent()) {
                return flush(buffer2);
            }
            if (buffer3 == null || !buffer3.hasContent()) {
                return 0;
            }
            return flush(buffer3);
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public void flush() {
            SslConnection.this.process(null, null);
        }
    }
}
