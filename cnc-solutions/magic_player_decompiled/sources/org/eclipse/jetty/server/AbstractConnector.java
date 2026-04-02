package org.eclipse.jetty.server;

import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.concurrent.atomic.AtomicLong;
import org.eclipse.jetty.http.HttpBuffers;
import org.eclipse.jetty.http.HttpBuffersImpl;
import org.eclipse.jetty.http.HttpFields;
import org.eclipse.jetty.http.HttpHeaders;
import org.eclipse.jetty.io.Buffers;
import org.eclipse.jetty.io.Connection;
import org.eclipse.jetty.io.EndPoint;
import org.eclipse.jetty.io.EofException;
import org.eclipse.jetty.util.StringUtil;
import org.eclipse.jetty.util.component.AggregateLifeCycle;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;
import org.eclipse.jetty.util.statistic.CounterStatistic;
import org.eclipse.jetty.util.statistic.SampleStatistic;
import org.eclipse.jetty.util.thread.ThreadPool;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractConnector extends AggregateLifeCycle implements HttpBuffers, Connector {
    private static final Logger LOG = Log.getLogger((Class<?>) AbstractConnector.class);
    private transient Thread[] _acceptorThreads;
    public final HttpBuffersImpl _buffers;
    private boolean _forwarded;
    private String _forwardedCipherSuiteHeader;
    private String _forwardedSslSessionIdHeader;
    private String _host;
    private String _hostHeader;
    private String _name;
    private Server _server;
    private ThreadPool _threadPool;
    private boolean _useDNS;
    private int _port = 0;
    private String _integralScheme = "https";
    private int _integralPort = 0;
    private String _confidentialScheme = "https";
    private int _confidentialPort = 0;
    private int _acceptQueueSize = 0;
    private int _acceptors = 1;
    private int _acceptorPriorityOffset = 0;
    private String _forwardedHostHeader = HttpHeaders.X_FORWARDED_HOST;
    private String _forwardedServerHeader = HttpHeaders.X_FORWARDED_SERVER;
    private String _forwardedForHeader = HttpHeaders.X_FORWARDED_FOR;
    private String _forwardedProtoHeader = HttpHeaders.X_FORWARDED_PROTO;
    private boolean _reuseAddress = true;
    public int _maxIdleTime = 200000;
    public int _lowResourceMaxIdleTime = -1;
    public int _soLingerTime = -1;
    private final AtomicLong _statsStartedAt = new AtomicLong(-1);
    private final CounterStatistic _connectionStats = new CounterStatistic();
    private final SampleStatistic _requestStats = new SampleStatistic();
    private final SampleStatistic _connectionDurationStats = new SampleStatistic();

    public class Acceptor implements Runnable {
        public int _acceptor;

        public Acceptor(int i4) {
            this._acceptor = 0;
            this._acceptor = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            Thread threadCurrentThread = Thread.currentThread();
            synchronized (AbstractConnector.this) {
                if (AbstractConnector.this._acceptorThreads == null) {
                    return;
                }
                AbstractConnector.this._acceptorThreads[this._acceptor] = threadCurrentThread;
                String name = AbstractConnector.this._acceptorThreads[this._acceptor].getName();
                threadCurrentThread.setName(name + " Acceptor" + this._acceptor + " " + AbstractConnector.this);
                int priority = threadCurrentThread.getPriority();
                try {
                    threadCurrentThread.setPriority(priority - AbstractConnector.this._acceptorPriorityOffset);
                    while (AbstractConnector.this.isRunning() && AbstractConnector.this.getConnection() != null) {
                        try {
                            try {
                                AbstractConnector.this.accept(this._acceptor);
                            } catch (IOException e4) {
                                AbstractConnector.LOG.ignore(e4);
                            } catch (Throwable th) {
                                AbstractConnector.LOG.warn(th);
                            }
                        } catch (InterruptedException e5) {
                            AbstractConnector.LOG.ignore(e5);
                        } catch (EofException e6) {
                            AbstractConnector.LOG.ignore(e6);
                        }
                    }
                    threadCurrentThread.setPriority(priority);
                    threadCurrentThread.setName(name);
                    synchronized (AbstractConnector.this) {
                        if (AbstractConnector.this._acceptorThreads != null) {
                            AbstractConnector.this._acceptorThreads[this._acceptor] = null;
                        }
                    }
                } catch (Throwable th2) {
                    threadCurrentThread.setPriority(priority);
                    threadCurrentThread.setName(name);
                    synchronized (AbstractConnector.this) {
                        if (AbstractConnector.this._acceptorThreads != null) {
                            AbstractConnector.this._acceptorThreads[this._acceptor] = null;
                        }
                        throw th2;
                    }
                }
            }
        }
    }

    public AbstractConnector() {
        HttpBuffersImpl httpBuffersImpl = new HttpBuffersImpl();
        this._buffers = httpBuffersImpl;
        addBean(httpBuffersImpl);
    }

    private void updateNotEqual(AtomicLong atomicLong, long j4, long j5) {
        long j6 = atomicLong.get();
        while (j4 != j6 && !atomicLong.compareAndSet(j6, j5)) {
            j6 = atomicLong.get();
        }
    }

    public abstract void accept(int i4);

    public void checkForwardedHeaders(EndPoint endPoint, Request request) {
        String stringField;
        String stringField2;
        HttpFields requestFields = request.getConnection().getRequestFields();
        if (getForwardedCipherSuiteHeader() != null && (stringField2 = requestFields.getStringField(getForwardedCipherSuiteHeader())) != null) {
            request.setAttribute("javax.servlet.request.cipher_suite", stringField2);
        }
        if (getForwardedSslSessionIdHeader() != null && (stringField = requestFields.getStringField(getForwardedSslSessionIdHeader())) != null) {
            request.setAttribute("javax.servlet.request.ssl_session_id", stringField);
            request.setScheme("https");
        }
        String leftMostFieldValue = getLeftMostFieldValue(requestFields, getForwardedHostHeader());
        String leftMostFieldValue2 = getLeftMostFieldValue(requestFields, getForwardedServerHeader());
        String leftMostFieldValue3 = getLeftMostFieldValue(requestFields, getForwardedForHeader());
        String leftMostFieldValue4 = getLeftMostFieldValue(requestFields, getForwardedProtoHeader());
        String str = this._hostHeader;
        InetAddress byName = null;
        if (str != null) {
            requestFields.put(HttpHeaders.HOST_BUFFER, str);
            request.setServerName(null);
            request.setServerPort(-1);
            request.getServerName();
        } else if (leftMostFieldValue != null) {
            requestFields.put(HttpHeaders.HOST_BUFFER, leftMostFieldValue);
            request.setServerName(null);
            request.setServerPort(-1);
            request.getServerName();
        } else if (leftMostFieldValue2 != null) {
            request.setServerName(leftMostFieldValue2);
        }
        if (leftMostFieldValue3 != null) {
            request.setRemoteAddr(leftMostFieldValue3);
            if (this._useDNS) {
                try {
                    byName = InetAddress.getByName(leftMostFieldValue3);
                } catch (UnknownHostException e4) {
                    LOG.ignore(e4);
                }
            }
            if (byName != null) {
                leftMostFieldValue3 = byName.getHostName();
            }
            request.setRemoteHost(leftMostFieldValue3);
        }
        if (leftMostFieldValue4 != null) {
            request.setScheme(leftMostFieldValue4);
        }
    }

    public void configure(Socket socket) {
        try {
            socket.setTcpNoDelay(true);
            int i4 = this._soLingerTime;
            if (i4 >= 0) {
                socket.setSoLinger(true, i4 / 1000);
            } else {
                socket.setSoLinger(false, 0);
            }
        } catch (Exception e4) {
            LOG.ignore(e4);
        }
    }

    public void connectionClosed(Connection connection) {
        connection.onClose();
        if (this._statsStartedAt.get() == -1) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - connection.getTimeStamp();
        this._requestStats.set(connection instanceof AbstractHttpConnection ? ((AbstractHttpConnection) connection).getRequests() : 0);
        this._connectionStats.decrement();
        this._connectionDurationStats.set(jCurrentTimeMillis);
    }

    public void connectionOpened(Connection connection) {
        if (this._statsStartedAt.get() == -1) {
            return;
        }
        this._connectionStats.increment();
    }

    public void connectionUpgraded(Connection connection, Connection connection2) {
        this._requestStats.set(connection instanceof AbstractHttpConnection ? ((AbstractHttpConnection) connection).getRequests() : 0L);
    }

    @Override // org.eclipse.jetty.server.Connector
    public void customize(EndPoint endPoint, Request request) {
        if (isForwarded()) {
            checkForwardedHeaders(endPoint, request);
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // org.eclipse.jetty.util.component.AggregateLifeCycle, org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStart() {
        if (this._server == null) {
            throw new IllegalStateException("No server");
        }
        open();
        if (this._threadPool == null) {
            ThreadPool threadPool = this._server.getThreadPool();
            this._threadPool = threadPool;
            addBean(threadPool, false);
        }
        super.doStart();
        synchronized (this) {
            this._acceptorThreads = new Thread[getAcceptors()];
            for (int i4 = 0; i4 < this._acceptorThreads.length; i4++) {
                if (!this._threadPool.dispatch(new Acceptor(i4))) {
                    throw new IllegalStateException("!accepting");
                }
            }
            if (this._threadPool.isLowOnThreads()) {
                LOG.warn("insufficient threads configured for {}", this);
            }
        }
        LOG.info("Started {}", this);
    }

    @Override // org.eclipse.jetty.util.component.AggregateLifeCycle, org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStop() {
        Thread[] threadArr;
        try {
            close();
        } catch (IOException e4) {
            LOG.warn(e4);
        }
        super.doStop();
        synchronized (this) {
            threadArr = this._acceptorThreads;
            this._acceptorThreads = null;
        }
        if (threadArr != null) {
            for (Thread thread : threadArr) {
                if (thread != null) {
                    thread.interrupt();
                }
            }
        }
    }

    public int getAcceptQueueSize() {
        return this._acceptQueueSize;
    }

    public int getAcceptorPriorityOffset() {
        return this._acceptorPriorityOffset;
    }

    public int getAcceptors() {
        return this._acceptors;
    }

    @Override // org.eclipse.jetty.server.Connector
    public int getConfidentialPort() {
        return this._confidentialPort;
    }

    @Override // org.eclipse.jetty.server.Connector
    public String getConfidentialScheme() {
        return this._confidentialScheme;
    }

    @Override // org.eclipse.jetty.server.Connector
    public int getConnections() {
        return (int) this._connectionStats.getTotal();
    }

    @Override // org.eclipse.jetty.server.Connector
    public long getConnectionsDurationMax() {
        return this._connectionDurationStats.getMax();
    }

    @Override // org.eclipse.jetty.server.Connector
    public double getConnectionsDurationMean() {
        return this._connectionDurationStats.getMean();
    }

    @Override // org.eclipse.jetty.server.Connector
    public double getConnectionsDurationStdDev() {
        return this._connectionDurationStats.getStdDev();
    }

    @Override // org.eclipse.jetty.server.Connector
    public long getConnectionsDurationTotal() {
        return this._connectionDurationStats.getTotal();
    }

    @Override // org.eclipse.jetty.server.Connector
    public int getConnectionsOpen() {
        return (int) this._connectionStats.getCurrent();
    }

    @Override // org.eclipse.jetty.server.Connector
    public int getConnectionsOpenMax() {
        return (int) this._connectionStats.getMax();
    }

    @Override // org.eclipse.jetty.server.Connector
    public int getConnectionsRequestsMax() {
        return (int) this._requestStats.getMax();
    }

    @Override // org.eclipse.jetty.server.Connector
    public double getConnectionsRequestsMean() {
        return this._requestStats.getMean();
    }

    @Override // org.eclipse.jetty.server.Connector
    public double getConnectionsRequestsStdDev() {
        return this._requestStats.getStdDev();
    }

    public String getForwardedCipherSuiteHeader() {
        return this._forwardedCipherSuiteHeader;
    }

    public String getForwardedForHeader() {
        return this._forwardedForHeader;
    }

    public String getForwardedHostHeader() {
        return this._forwardedHostHeader;
    }

    public String getForwardedProtoHeader() {
        return this._forwardedProtoHeader;
    }

    public String getForwardedServerHeader() {
        return this._forwardedServerHeader;
    }

    public String getForwardedSslSessionIdHeader() {
        return this._forwardedSslSessionIdHeader;
    }

    @Override // org.eclipse.jetty.server.Connector
    public String getHost() {
        return this._host;
    }

    public String getHostHeader() {
        return this._hostHeader;
    }

    @Override // org.eclipse.jetty.server.Connector
    public int getIntegralPort() {
        return this._integralPort;
    }

    @Override // org.eclipse.jetty.server.Connector
    public String getIntegralScheme() {
        return this._integralScheme;
    }

    public String getLeftMostFieldValue(HttpFields httpFields, String str) {
        String stringField;
        if (str == null || (stringField = httpFields.getStringField(str)) == null) {
            return null;
        }
        int iIndexOf = stringField.indexOf(44);
        return iIndexOf == -1 ? stringField : stringField.substring(0, iIndexOf);
    }

    @Override // org.eclipse.jetty.server.Connector
    @Deprecated
    public final int getLowResourceMaxIdleTime() {
        return getLowResourcesMaxIdleTime();
    }

    public int getLowResourcesMaxIdleTime() {
        return this._lowResourceMaxIdleTime;
    }

    @Override // org.eclipse.jetty.http.HttpBuffers
    public int getMaxBuffers() {
        return this._buffers.getMaxBuffers();
    }

    @Override // org.eclipse.jetty.server.Connector
    public int getMaxIdleTime() {
        return this._maxIdleTime;
    }

    @Override // org.eclipse.jetty.server.Connector
    public String getName() {
        if (this._name == null) {
            StringBuilder sb = new StringBuilder();
            sb.append(getHost() == null ? StringUtil.ALL_INTERFACES : getHost());
            sb.append(":");
            sb.append(getLocalPort() <= 0 ? getPort() : getLocalPort());
            this._name = sb.toString();
        }
        return this._name;
    }

    @Override // org.eclipse.jetty.server.Connector
    public int getPort() {
        return this._port;
    }

    @Override // org.eclipse.jetty.http.HttpBuffers
    public int getRequestBufferSize() {
        return this._buffers.getRequestBufferSize();
    }

    @Override // org.eclipse.jetty.http.HttpBuffers
    public Buffers.Type getRequestBufferType() {
        return this._buffers.getRequestBufferType();
    }

    @Override // org.eclipse.jetty.http.HttpBuffers
    public Buffers getRequestBuffers() {
        return this._buffers.getRequestBuffers();
    }

    @Override // org.eclipse.jetty.http.HttpBuffers
    public int getRequestHeaderSize() {
        return this._buffers.getRequestHeaderSize();
    }

    @Override // org.eclipse.jetty.http.HttpBuffers
    public Buffers.Type getRequestHeaderType() {
        return this._buffers.getRequestHeaderType();
    }

    @Override // org.eclipse.jetty.server.Connector
    public int getRequests() {
        return (int) this._requestStats.getTotal();
    }

    @Override // org.eclipse.jetty.server.Connector
    public boolean getResolveNames() {
        return this._useDNS;
    }

    @Override // org.eclipse.jetty.http.HttpBuffers
    public int getResponseBufferSize() {
        return this._buffers.getResponseBufferSize();
    }

    @Override // org.eclipse.jetty.http.HttpBuffers
    public Buffers.Type getResponseBufferType() {
        return this._buffers.getResponseBufferType();
    }

    @Override // org.eclipse.jetty.http.HttpBuffers
    public Buffers getResponseBuffers() {
        return this._buffers.getResponseBuffers();
    }

    @Override // org.eclipse.jetty.http.HttpBuffers
    public int getResponseHeaderSize() {
        return this._buffers.getResponseHeaderSize();
    }

    @Override // org.eclipse.jetty.http.HttpBuffers
    public Buffers.Type getResponseHeaderType() {
        return this._buffers.getResponseHeaderType();
    }

    public boolean getReuseAddress() {
        return this._reuseAddress;
    }

    @Override // org.eclipse.jetty.server.Connector
    public Server getServer() {
        return this._server;
    }

    public int getSoLingerTime() {
        return this._soLingerTime;
    }

    @Override // org.eclipse.jetty.server.Connector
    public boolean getStatsOn() {
        return this._statsStartedAt.get() != -1;
    }

    @Override // org.eclipse.jetty.server.Connector
    public long getStatsOnMs() {
        long j4 = this._statsStartedAt.get();
        if (j4 != -1) {
            return System.currentTimeMillis() - j4;
        }
        return 0L;
    }

    public ThreadPool getThreadPool() {
        return this._threadPool;
    }

    @Override // org.eclipse.jetty.server.Connector
    public boolean isConfidential(Request request) {
        return this._forwarded && request.getScheme().equalsIgnoreCase("https");
    }

    public boolean isForwarded() {
        return this._forwarded;
    }

    @Override // org.eclipse.jetty.server.Connector
    public boolean isIntegral(Request request) {
        return false;
    }

    @Override // org.eclipse.jetty.server.Connector
    public boolean isLowResources() {
        ThreadPool threadPool = this._threadPool;
        return threadPool != null ? threadPool.isLowOnThreads() : this._server.getThreadPool().isLowOnThreads();
    }

    public void join() throws InterruptedException {
        Thread[] threadArr;
        synchronized (this) {
            threadArr = this._acceptorThreads;
        }
        if (threadArr != null) {
            for (Thread thread : threadArr) {
                if (thread != null) {
                    thread.join();
                }
            }
        }
    }

    @Override // org.eclipse.jetty.server.Connector
    public void persist(EndPoint endPoint) {
    }

    public void setAcceptQueueSize(int i4) {
        this._acceptQueueSize = i4;
    }

    public void setAcceptorPriorityOffset(int i4) {
        this._acceptorPriorityOffset = i4;
    }

    public void setAcceptors(int i4) {
        if (i4 > Runtime.getRuntime().availableProcessors() * 2) {
            LOG.warn("Acceptors should be <=2*availableProcessors: " + this, new Object[0]);
        }
        this._acceptors = i4;
    }

    public void setConfidentialPort(int i4) {
        this._confidentialPort = i4;
    }

    public void setConfidentialScheme(String str) {
        this._confidentialScheme = str;
    }

    public void setForwarded(boolean z3) {
        if (z3) {
            LOG.debug("{} is forwarded", this);
        }
        this._forwarded = z3;
    }

    public void setForwardedCipherSuiteHeader(String str) {
        this._forwardedCipherSuiteHeader = str;
    }

    public void setForwardedForHeader(String str) {
        this._forwardedForHeader = str;
    }

    public void setForwardedHostHeader(String str) {
        this._forwardedHostHeader = str;
    }

    public void setForwardedProtoHeader(String str) {
        this._forwardedProtoHeader = str;
    }

    public void setForwardedServerHeader(String str) {
        this._forwardedServerHeader = str;
    }

    public void setForwardedSslSessionIdHeader(String str) {
        this._forwardedSslSessionIdHeader = str;
    }

    @Override // org.eclipse.jetty.server.Connector
    public void setHost(String str) {
        this._host = str;
    }

    public void setHostHeader(String str) {
        this._hostHeader = str;
    }

    public void setIntegralPort(int i4) {
        this._integralPort = i4;
    }

    public void setIntegralScheme(String str) {
        this._integralScheme = str;
    }

    @Override // org.eclipse.jetty.server.Connector
    @Deprecated
    public final void setLowResourceMaxIdleTime(int i4) {
        setLowResourcesMaxIdleTime(i4);
    }

    public void setLowResourcesMaxIdleTime(int i4) {
        this._lowResourceMaxIdleTime = i4;
    }

    @Override // org.eclipse.jetty.http.HttpBuffers
    public void setMaxBuffers(int i4) {
        this._buffers.setMaxBuffers(i4);
    }

    @Override // org.eclipse.jetty.server.Connector
    public void setMaxIdleTime(int i4) {
        this._maxIdleTime = i4;
    }

    public void setName(String str) {
        this._name = str;
    }

    @Override // org.eclipse.jetty.server.Connector
    public void setPort(int i4) {
        this._port = i4;
    }

    @Override // org.eclipse.jetty.http.HttpBuffers
    public void setRequestBufferSize(int i4) {
        this._buffers.setRequestBufferSize(i4);
    }

    @Override // org.eclipse.jetty.http.HttpBuffers
    public void setRequestBuffers(Buffers buffers) {
        this._buffers.setRequestBuffers(buffers);
    }

    @Override // org.eclipse.jetty.http.HttpBuffers
    public void setRequestHeaderSize(int i4) {
        this._buffers.setRequestHeaderSize(i4);
    }

    public void setResolveNames(boolean z3) {
        this._useDNS = z3;
    }

    @Override // org.eclipse.jetty.http.HttpBuffers
    public void setResponseBufferSize(int i4) {
        this._buffers.setResponseBufferSize(i4);
    }

    @Override // org.eclipse.jetty.http.HttpBuffers
    public void setResponseBuffers(Buffers buffers) {
        this._buffers.setResponseBuffers(buffers);
    }

    @Override // org.eclipse.jetty.http.HttpBuffers
    public void setResponseHeaderSize(int i4) {
        this._buffers.setResponseHeaderSize(i4);
    }

    public void setReuseAddress(boolean z3) {
        this._reuseAddress = z3;
    }

    @Override // org.eclipse.jetty.server.Connector
    public void setServer(Server server) {
        this._server = server;
    }

    public void setSoLingerTime(int i4) {
        this._soLingerTime = i4;
    }

    @Override // org.eclipse.jetty.server.Connector
    public void setStatsOn(boolean z3) {
        if (!z3 || this._statsStartedAt.get() == -1) {
            Logger logger = LOG;
            if (logger.isDebugEnabled()) {
                logger.debug("Statistics on = " + z3 + " for " + this, new Object[0]);
            }
            statsReset();
            this._statsStartedAt.set(z3 ? System.currentTimeMillis() : -1L);
        }
    }

    public void setThreadPool(ThreadPool threadPool) {
        removeBean(this._threadPool);
        this._threadPool = threadPool;
        addBean(threadPool);
    }

    @Override // org.eclipse.jetty.server.Connector
    public void statsReset() {
        updateNotEqual(this._statsStartedAt, -1L, System.currentTimeMillis());
        this._requestStats.reset();
        this._connectionStats.reset();
        this._connectionDurationStats.reset();
    }

    public void stopAccept(int i4) {
    }

    public String toString() {
        Object[] objArr = new Object[3];
        objArr[0] = getClass().getSimpleName();
        objArr[1] = getHost() == null ? StringUtil.ALL_INTERFACES : getHost();
        objArr[2] = Integer.valueOf(getLocalPort() <= 0 ? getPort() : getLocalPort());
        return String.format("%s@%s:%d", objArr);
    }
}
