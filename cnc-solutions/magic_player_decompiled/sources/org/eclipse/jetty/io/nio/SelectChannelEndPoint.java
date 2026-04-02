package org.eclipse.jetty.io.nio;

import androidx.appcompat.view.a;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.nio.channels.SelectableChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.SocketChannel;
import java.util.Locale;
import org.eclipse.jetty.io.AsyncEndPoint;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.io.ConnectedEndPoint;
import org.eclipse.jetty.io.Connection;
import org.eclipse.jetty.io.EofException;
import org.eclipse.jetty.io.nio.SelectorManager;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;
import org.eclipse.jetty.util.thread.Timeout;

/* JADX INFO: loaded from: classes2.dex */
public class SelectChannelEndPoint extends ChannelEndPoint implements AsyncEndPoint, ConnectedEndPoint {
    public static final Logger LOG = Log.getLogger("org.eclipse.jetty.io.nio");
    private static final int STATE_ASYNC = 2;
    private static final int STATE_DISPATCHED = 1;
    private static final int STATE_NEEDS_DISPATCH = -1;
    private static final int STATE_UNDISPATCHED = 0;
    private final boolean WORK_AROUND_JVM_BUG_6346658;
    private volatile boolean _checkIdle;
    private volatile AsyncConnection _connection;
    private final Runnable _handler;
    private volatile long _idleTimestamp;
    private int _interestOps;
    private boolean _interruptable;
    private boolean _ishut;
    private SelectionKey _key;
    private final SelectorManager _manager;
    private boolean _onIdle;
    private boolean _open;
    private boolean _readBlocked;
    private final SelectorManager.SelectSet _selectSet;
    private int _state;
    private volatile boolean _writable;
    private boolean _writeBlocked;

    public SelectChannelEndPoint(SocketChannel socketChannel, SelectorManager.SelectSet selectSet, SelectionKey selectionKey, int i4) {
        super(socketChannel, i4);
        this.WORK_AROUND_JVM_BUG_6346658 = System.getProperty("os.name").toLowerCase(Locale.ENGLISH).contains("win");
        this._handler = new Runnable() { // from class: org.eclipse.jetty.io.nio.SelectChannelEndPoint.1
            @Override // java.lang.Runnable
            public void run() {
                SelectChannelEndPoint.this.handle();
            }
        };
        this._writable = true;
        this._manager = selectSet.getManager();
        this._selectSet = selectSet;
        this._state = 0;
        this._onIdle = false;
        this._open = true;
        this._key = selectionKey;
        setCheckForIdle(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x006a A[Catch: all -> 0x007d, PHI: r1
      0x006a: PHI (r1v1 int) = (r1v0 int), (r1v0 int), (r1v0 int), (r1v0 int), (r1v2 int) binds: [B:4:0x000c, B:42:0x0063, B:35:0x0051, B:37:0x0057, B:39:0x005f] A[DONT_GENERATE, DONT_INLINE], TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x000e, B:7:0x0012, B:9:0x0016, B:14:0x0022, B:16:0x0026, B:18:0x002a, B:23:0x0032, B:28:0x003f, B:33:0x004c, B:34:0x004f, B:36:0x0053, B:38:0x0059, B:42:0x0063, B:43:0x006a, B:46:0x006f), top: B:53:0x0001, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x006e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void updateKey() {
        /*
            r6 = this;
            monitor-enter(r6)
            java.nio.channels.ByteChannel r0 = r6.getChannel()     // Catch: java.lang.Throwable -> L7d
            boolean r0 = r0.isOpen()     // Catch: java.lang.Throwable -> L7d
            r1 = -1
            r2 = 0
            r3 = 1
            if (r0 == 0) goto L6a
            boolean r0 = r6._readBlocked     // Catch: java.lang.Throwable -> L7d
            if (r0 != 0) goto L21
            int r0 = r6._state     // Catch: java.lang.Throwable -> L7d
            if (r0 >= r3) goto L1f
            org.eclipse.jetty.io.nio.AsyncConnection r0 = r6._connection     // Catch: java.lang.Throwable -> L7d
            boolean r0 = r0.isSuspended()     // Catch: java.lang.Throwable -> L7d
            if (r0 != 0) goto L1f
            goto L21
        L1f:
            r0 = 0
            goto L22
        L21:
            r0 = 1
        L22:
            boolean r4 = r6._writeBlocked     // Catch: java.lang.Throwable -> L7d
            if (r4 != 0) goto L31
            int r4 = r6._state     // Catch: java.lang.Throwable -> L7d
            if (r4 >= r3) goto L2f
            boolean r4 = r6._writable     // Catch: java.lang.Throwable -> L7d
            if (r4 != 0) goto L2f
            goto L31
        L2f:
            r4 = 0
            goto L32
        L31:
            r4 = 1
        L32:
            java.net.Socket r5 = r6._socket     // Catch: java.lang.Throwable -> L7d
            boolean r5 = r5.isInputShutdown()     // Catch: java.lang.Throwable -> L7d
            if (r5 != 0) goto L3e
            if (r0 == 0) goto L3e
            r0 = 1
            goto L3f
        L3e:
            r0 = 0
        L3f:
            java.net.Socket r5 = r6._socket     // Catch: java.lang.Throwable -> L7d
            boolean r5 = r5.isOutputShutdown()     // Catch: java.lang.Throwable -> L7d
            if (r5 != 0) goto L4b
            if (r4 == 0) goto L4b
            r4 = 4
            goto L4c
        L4b:
            r4 = 0
        L4c:
            r0 = r0 | r4
            r6._interestOps = r0     // Catch: java.lang.Throwable -> L7d
            java.nio.channels.SelectionKey r0 = r6._key     // Catch: java.lang.Exception -> L61 java.lang.Throwable -> L7d
            if (r0 == 0) goto L6a
            boolean r0 = r0.isValid()     // Catch: java.lang.Exception -> L61 java.lang.Throwable -> L7d
            if (r0 == 0) goto L6a
            java.nio.channels.SelectionKey r0 = r6._key     // Catch: java.lang.Exception -> L61 java.lang.Throwable -> L7d
            int r0 = r0.interestOps()     // Catch: java.lang.Exception -> L61 java.lang.Throwable -> L7d
            r1 = r0
            goto L6a
        L61:
            r0 = move-exception
            r4 = 0
            r6._key = r4     // Catch: java.lang.Throwable -> L7d
            org.eclipse.jetty.util.log.Logger r4 = org.eclipse.jetty.io.nio.SelectChannelEndPoint.LOG     // Catch: java.lang.Throwable -> L7d
            r4.ignore(r0)     // Catch: java.lang.Throwable -> L7d
        L6a:
            int r0 = r6._interestOps     // Catch: java.lang.Throwable -> L7d
            if (r0 == r1) goto L6f
            r2 = 1
        L6f:
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L7d
            if (r2 == 0) goto L7c
            org.eclipse.jetty.io.nio.SelectorManager$SelectSet r0 = r6._selectSet
            r0.addChange(r6)
            org.eclipse.jetty.io.nio.SelectorManager$SelectSet r0 = r6._selectSet
            r0.wakeup()
        L7c:
            return
        L7d:
            r0 = move-exception
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L7d
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.io.nio.SelectChannelEndPoint.updateKey():void");
    }

    @Override // org.eclipse.jetty.io.AsyncEndPoint
    public void asyncDispatch() {
        synchronized (this) {
            int i4 = this._state;
            if (i4 == -1 || i4 == 0) {
                dispatch();
            } else if (i4 == 1 || i4 == 2) {
                this._state = 2;
            }
        }
    }

    @Override // org.eclipse.jetty.io.nio.ChannelEndPoint, org.eclipse.jetty.io.EndPoint
    public boolean blockReadable(long j4) {
        SelectorManager.SelectSet selectSet;
        synchronized (this) {
            if (isInputShutdown()) {
                throw new EofException();
            }
            long now = this._selectSet.getNow();
            long j5 = now + j4;
            boolean zIsCheckForIdle = isCheckForIdle();
            setCheckForIdle(true);
            try {
                this._readBlocked = true;
                while (!isInputShutdown() && this._readBlocked) {
                    try {
                        try {
                            updateKey();
                            wait(j4 > 0 ? j5 - now : 10000L);
                            selectSet = this._selectSet;
                        } catch (InterruptedException e4) {
                            LOG.warn(e4);
                            if (this._interruptable) {
                                throw new InterruptedIOException(e4) { // from class: org.eclipse.jetty.io.nio.SelectChannelEndPoint.3
                                    public final /* synthetic */ InterruptedException val$e;

                                    {
                                        this.val$e = e4;
                                        initCause(e4);
                                    }
                                };
                            }
                            selectSet = this._selectSet;
                        }
                        now = selectSet.getNow();
                        if (this._readBlocked && j4 > 0 && now >= j5) {
                            return false;
                        }
                    } catch (Throwable th) {
                        this._selectSet.getNow();
                        throw th;
                    }
                }
                return true;
            } finally {
                this._readBlocked = false;
                setCheckForIdle(zIsCheckForIdle);
            }
        }
    }

    @Override // org.eclipse.jetty.io.nio.ChannelEndPoint, org.eclipse.jetty.io.EndPoint
    public boolean blockWritable(long j4) {
        SelectorManager.SelectSet selectSet;
        synchronized (this) {
            if (isOutputShutdown()) {
                throw new EofException();
            }
            long now = this._selectSet.getNow();
            long j5 = now + j4;
            boolean zIsCheckForIdle = isCheckForIdle();
            setCheckForIdle(true);
            try {
                this._writeBlocked = true;
                while (this._writeBlocked && !isOutputShutdown()) {
                    try {
                        try {
                            updateKey();
                            wait(j4 > 0 ? j5 - now : 10000L);
                            selectSet = this._selectSet;
                        } catch (InterruptedException e4) {
                            LOG.warn(e4);
                            if (this._interruptable) {
                                throw new InterruptedIOException(e4) { // from class: org.eclipse.jetty.io.nio.SelectChannelEndPoint.4
                                    public final /* synthetic */ InterruptedException val$e;

                                    {
                                        this.val$e = e4;
                                        initCause(e4);
                                    }
                                };
                            }
                            selectSet = this._selectSet;
                        }
                        now = selectSet.getNow();
                        if (this._writeBlocked && j4 > 0 && now >= j5) {
                            return false;
                        }
                    } catch (Throwable th) {
                        this._selectSet.getNow();
                        throw th;
                    }
                }
                return true;
            } finally {
                this._writeBlocked = false;
                setCheckForIdle(zIsCheckForIdle);
            }
        }
    }

    @Override // org.eclipse.jetty.io.AsyncEndPoint
    public void cancelTimeout(Timeout.Task task) {
        getSelectSet().cancelTimeout(task);
    }

    public void checkIdleTimestamp(long j4) {
        if (!isCheckForIdle() || this._maxIdleTime <= 0) {
            return;
        }
        final long j5 = j4 - this._idleTimestamp;
        if (j5 > this._maxIdleTime) {
            setCheckForIdle(false);
            this._manager.dispatch(new Runnable() { // from class: org.eclipse.jetty.io.nio.SelectChannelEndPoint.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        SelectChannelEndPoint.this.onIdleExpired(j5);
                    } finally {
                        SelectChannelEndPoint.this.setCheckForIdle(true);
                    }
                }
            });
        }
    }

    @Override // org.eclipse.jetty.io.nio.ChannelEndPoint, org.eclipse.jetty.io.EndPoint
    public void close() {
        if (this.WORK_AROUND_JVM_BUG_6346658) {
            try {
                SelectionKey selectionKey = this._key;
                if (selectionKey != null) {
                    selectionKey.cancel();
                }
            } catch (Throwable th) {
                LOG.ignore(th);
            }
        }
        try {
            try {
                super.close();
            } finally {
                updateKey();
            }
        } catch (IOException e4) {
            LOG.ignore(e4);
        }
    }

    @Override // org.eclipse.jetty.io.AsyncEndPoint
    public void dispatch() {
        synchronized (this) {
            if (this._state <= 0) {
                if (this._onIdle) {
                    this._state = -1;
                } else {
                    this._state = 1;
                    if (!this._manager.dispatch(this._handler)) {
                        this._state = -1;
                        LOG.warn("Dispatched Failed! " + this + " to " + this._manager, new Object[0]);
                        updateKey();
                    }
                }
            }
        }
    }

    public void doUpdateKey() {
        synchronized (this) {
            if (!getChannel().isOpen()) {
                SelectionKey selectionKey = this._key;
                if (selectionKey != null && selectionKey.isValid()) {
                    this._key.cancel();
                }
                if (this._open) {
                    this._open = false;
                    this._selectSet.destroyEndPoint(this);
                }
                this._key = null;
            } else if (this._interestOps > 0) {
                SelectionKey selectionKey2 = this._key;
                if (selectionKey2 != null && selectionKey2.isValid()) {
                    this._key.interestOps(this._interestOps);
                } else if (((SelectableChannel) getChannel()).isRegistered()) {
                    updateKey();
                } else {
                    try {
                        this._key = ((SelectableChannel) getChannel()).register(this._selectSet.getSelector(), this._interestOps, this);
                    } catch (Exception e4) {
                        LOG.ignore(e4);
                        SelectionKey selectionKey3 = this._key;
                        if (selectionKey3 != null && selectionKey3.isValid()) {
                            this._key.cancel();
                        }
                        if (this._open) {
                            this._selectSet.destroyEndPoint(this);
                        }
                        this._open = false;
                        this._key = null;
                    }
                }
            } else {
                SelectionKey selectionKey4 = this._key;
                if (selectionKey4 == null || !selectionKey4.isValid()) {
                    this._key = null;
                } else {
                    this._key.interestOps(0);
                }
            }
        }
    }

    @Override // org.eclipse.jetty.io.nio.ChannelEndPoint, org.eclipse.jetty.io.EndPoint
    public int fill(Buffer buffer) throws Throwable {
        int iFill = super.fill(buffer);
        if (iFill > 0) {
            notIdle();
        }
        return iFill;
    }

    @Override // org.eclipse.jetty.io.nio.ChannelEndPoint, org.eclipse.jetty.io.EndPoint
    public int flush(Buffer buffer, Buffer buffer2, Buffer buffer3) {
        int iFlush = super.flush(buffer, buffer2, buffer3);
        if (iFlush == 0 && ((buffer != null && buffer.hasContent()) || ((buffer2 != null && buffer2.hasContent()) || (buffer3 != null && buffer3.hasContent())))) {
            synchronized (this) {
                this._writable = false;
                if (this._state < 1) {
                    updateKey();
                }
            }
        } else if (iFlush > 0) {
            this._writable = true;
            notIdle();
        }
        return iFlush;
    }

    @Override // org.eclipse.jetty.io.ConnectedEndPoint
    public Connection getConnection() {
        return this._connection;
    }

    public long getIdleTimestamp() {
        return this._idleTimestamp;
    }

    public SelectorManager getSelectManager() {
        return this._manager;
    }

    public SelectorManager.SelectSet getSelectSet() {
        return this._selectSet;
    }

    public SelectionKey getSelectionKey() {
        SelectionKey selectionKey;
        synchronized (this) {
            selectionKey = this._key;
        }
        return selectionKey;
    }

    /* JADX WARN: Removed duplicated region for block: B:157:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x01aa  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void handle() {
        /*
            Method dump skipped, instruction units count: 472
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.io.nio.SelectChannelEndPoint.handle():void");
    }

    @Override // org.eclipse.jetty.io.AsyncEndPoint
    public boolean hasProgressed() {
        return false;
    }

    @Override // org.eclipse.jetty.io.AsyncEndPoint
    public boolean isCheckForIdle() {
        return this._checkIdle;
    }

    public boolean isInterruptable() {
        return this._interruptable;
    }

    @Override // org.eclipse.jetty.io.AsyncEndPoint
    public boolean isWritable() {
        return this._writable;
    }

    public void notIdle() {
        this._idleTimestamp = System.currentTimeMillis();
    }

    @Override // org.eclipse.jetty.io.AsyncEndPoint
    public void onIdleExpired(long j4) {
        try {
            synchronized (this) {
                this._onIdle = true;
            }
            this._connection.onIdleExpired(j4);
            synchronized (this) {
                this._onIdle = false;
                if (this._state == -1) {
                    dispatch();
                }
            }
        } catch (Throwable th) {
            synchronized (this) {
                this._onIdle = false;
                if (this._state == -1) {
                    dispatch();
                }
                throw th;
            }
        }
    }

    public void schedule() {
        synchronized (this) {
            SelectionKey selectionKey = this._key;
            if (selectionKey != null && selectionKey.isValid()) {
                boolean z3 = this._readBlocked;
                if (!z3 && !this._writeBlocked) {
                    if ((this._key.readyOps() & 4) == 4 && (this._key.interestOps() & 4) == 4) {
                        int iInterestOps = this._key.interestOps() & (-5);
                        this._interestOps = iInterestOps;
                        this._key.interestOps(iInterestOps);
                        this._writable = true;
                    }
                    if (this._state >= 1) {
                        this._key.interestOps(0);
                    } else {
                        dispatch();
                        if (this._state >= 1 && !this._selectSet.getManager().isDeferringInterestedOps0()) {
                            this._key.interestOps(0);
                        }
                    }
                    return;
                }
                if (z3 && this._key.isReadable()) {
                    this._readBlocked = false;
                }
                if (this._writeBlocked && this._key.isWritable()) {
                    this._writeBlocked = false;
                }
                notifyAll();
                this._key.interestOps(0);
                if (this._state < 1) {
                    updateKey();
                }
                return;
            }
            this._readBlocked = false;
            this._writeBlocked = false;
            notifyAll();
        }
    }

    @Override // org.eclipse.jetty.io.AsyncEndPoint
    public void scheduleTimeout(Timeout.Task task, long j4) {
        getSelectSet().scheduleTimeout(task, j4);
    }

    @Override // org.eclipse.jetty.io.AsyncEndPoint
    public void scheduleWrite() {
        if (this._writable) {
            LOG.debug("Required scheduleWrite {}", this);
        }
        this._writable = false;
        updateKey();
    }

    @Override // org.eclipse.jetty.io.AsyncEndPoint
    public void setCheckForIdle(boolean z3) {
        if (!z3) {
            this._checkIdle = false;
        } else {
            this._idleTimestamp = System.currentTimeMillis();
            this._checkIdle = true;
        }
    }

    @Override // org.eclipse.jetty.io.ConnectedEndPoint
    public void setConnection(Connection connection) {
        AsyncConnection asyncConnection = this._connection;
        this._connection = (AsyncConnection) connection;
        if (asyncConnection == null || asyncConnection == this._connection) {
            return;
        }
        this._manager.endPointUpgraded(this, asyncConnection);
    }

    public void setInterruptable(boolean z3) {
        synchronized (this) {
            this._interruptable = z3;
        }
    }

    @Override // org.eclipse.jetty.io.nio.ChannelEndPoint, org.eclipse.jetty.io.EndPoint
    public void setMaxIdleTime(int i4) {
        this._maxIdleTime = i4;
    }

    public String toString() {
        String strA;
        SelectionKey selectionKey = this._key;
        if (selectionKey == null) {
            strA = "-";
        } else if (selectionKey.isValid()) {
            strA = selectionKey.isReadable() ? "r" : "";
            if (selectionKey.isWritable()) {
                strA = a.a(strA, "w");
            }
        } else {
            strA = "!";
        }
        return String.format("SCEP@%x{l(%s)<->r(%s),s=%d,open=%b,ishut=%b,oshut=%b,rb=%b,wb=%b,w=%b,i=%d%s}-{%s}", Integer.valueOf(hashCode()), this._socket.getRemoteSocketAddress(), this._socket.getLocalSocketAddress(), Integer.valueOf(this._state), Boolean.valueOf(isOpen()), Boolean.valueOf(isInputShutdown()), Boolean.valueOf(isOutputShutdown()), Boolean.valueOf(this._readBlocked), Boolean.valueOf(this._writeBlocked), Boolean.valueOf(this._writable), Integer.valueOf(this._interestOps), strA, this._connection);
    }

    public boolean undispatch() {
        synchronized (this) {
            if (this._state == 2) {
                this._state = 1;
                return false;
            }
            this._state = 0;
            updateKey();
            return true;
        }
    }

    @Override // org.eclipse.jetty.io.nio.ChannelEndPoint, org.eclipse.jetty.io.EndPoint
    public int flush(Buffer buffer) throws IOException {
        int iFlush = super.flush(buffer);
        if (iFlush == 0 && buffer != null && buffer.hasContent()) {
            synchronized (this) {
                this._writable = false;
                if (this._state < 1) {
                    updateKey();
                }
            }
        } else if (iFlush > 0) {
            this._writable = true;
            notIdle();
        }
        return iFlush;
    }
}
