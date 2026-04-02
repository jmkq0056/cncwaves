package org.eclipse.jetty.server.session;

import android.support.v4.media.f;
import android.support.v4.media.g;
import j2.c;
import j2.m;
import j2.n;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamClass;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicReference;
import org.eclipse.jetty.server.SessionIdManager;
import org.eclipse.jetty.server.handler.ContextHandler;
import org.eclipse.jetty.util.StringUtil;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class JDBCSessionManager extends AbstractSessionManager {
    private static final Logger LOG = Log.getLogger((Class<?>) JDBCSessionManager.class);
    public JDBCSessionIdManager _jdbcSessionIdMgr = null;
    public long _saveIntervalSec = 60;
    private ConcurrentHashMap<String, AbstractSession> _sessions;

    private String calculateRowId(Session session) {
        StringBuilder sbA = g.a(canonicalize(this._context.getContextPath()), "_");
        sbA.append(getVirtualHost(this._context));
        StringBuilder sbA2 = g.a(sbA.toString(), "_");
        sbA2.append(session.getId());
        return sbA2.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String canonicalize(String str) {
        return str == null ? "" : str.replace('/', '_').replace('.', '_').replace('\\', '_');
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Connection getConnection() {
        return ((JDBCSessionIdManager) getSessionIdManager()).getConnection();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getVirtualHost(ContextHandler.Context context) {
        String[] virtualHosts;
        return (context == null || (virtualHosts = context.getContextHandler().getVirtualHosts()) == null || virtualHosts.length == 0 || virtualHosts[0] == null) ? StringUtil.ALL_INTERFACES : virtualHosts[0];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSessionAccessTime(Session session) throws SQLException {
        Connection connection = getConnection();
        PreparedStatement preparedStatementPrepareStatement = null;
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            connection.setAutoCommit(true);
            preparedStatementPrepareStatement = connection.prepareStatement(this._jdbcSessionIdMgr._updateSessionAccessTime);
            preparedStatementPrepareStatement.setString(1, getSessionIdManager().getWorkerName());
            preparedStatementPrepareStatement.setLong(2, session.getAccessed());
            preparedStatementPrepareStatement.setLong(3, session.getLastAccessedTime());
            preparedStatementPrepareStatement.setLong(4, jCurrentTimeMillis);
            preparedStatementPrepareStatement.setLong(5, session.getExpiryTime());
            preparedStatementPrepareStatement.setString(6, session.getRowId());
            preparedStatementPrepareStatement.executeUpdate();
            session.setLastSaved(jCurrentTimeMillis);
            preparedStatementPrepareStatement.close();
            Logger logger = LOG;
            if (logger.isDebugEnabled()) {
                logger.debug("Updated access time session id=" + session.getId(), new Object[0]);
            }
            try {
                preparedStatementPrepareStatement.close();
            } catch (Exception e4) {
                LOG.warn(e4);
            }
            connection.close();
        } finally {
        }
    }

    @Override // org.eclipse.jetty.server.session.AbstractSessionManager
    public void addSession(AbstractSession abstractSession) {
        if (abstractSession == null) {
            return;
        }
        synchronized (this) {
            this._sessions.put(abstractSession.getClusterId(), abstractSession);
        }
        try {
            synchronized (abstractSession) {
                abstractSession.willPassivate();
                storeSession((Session) abstractSession);
                abstractSession.didActivate();
            }
        } catch (Exception e4) {
            Logger logger = LOG;
            StringBuilder sbA = f.a("Unable to store new session id=");
            sbA.append(abstractSession.getId());
            logger.warn(sbA.toString(), e4);
        }
    }

    public void cacheInvalidate(Session session) {
    }

    public void deleteSession(Session session) throws SQLException {
        Connection connection = getConnection();
        PreparedStatement preparedStatementPrepareStatement = null;
        try {
            connection.setAutoCommit(true);
            preparedStatementPrepareStatement = connection.prepareStatement(this._jdbcSessionIdMgr._deleteSession);
            preparedStatementPrepareStatement.setString(1, session.getRowId());
            preparedStatementPrepareStatement.executeUpdate();
            Logger logger = LOG;
            if (logger.isDebugEnabled()) {
                logger.debug("Deleted Session " + session, new Object[0]);
            }
            try {
                preparedStatementPrepareStatement.close();
            } catch (Exception e4) {
                LOG.warn(e4);
            }
            connection.close();
        } finally {
        }
    }

    @Override // org.eclipse.jetty.server.session.AbstractSessionManager, org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStart() {
        SessionIdManager sessionIdManager = this._sessionIdManager;
        if (sessionIdManager == null) {
            throw new IllegalStateException("No session id manager defined");
        }
        this._jdbcSessionIdMgr = (JDBCSessionIdManager) sessionIdManager;
        this._sessions = new ConcurrentHashMap<>();
        super.doStart();
    }

    @Override // org.eclipse.jetty.server.session.AbstractSessionManager, org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStop() {
        this._sessions.clear();
        this._sessions = null;
        super.doStop();
    }

    public void expire(List<?> list) {
        if (isStopping() || isStopped()) {
            return;
        }
        ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
        ListIterator<?> listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            try {
                String str = (String) listIterator.next();
                Logger logger = LOG;
                if (logger.isDebugEnabled()) {
                    logger.debug("Expiring session id " + str, new Object[0]);
                }
                Session session = (Session) this._sessions.get(str);
                if (session != null) {
                    session.timeout();
                    listIterator.remove();
                } else if (logger.isDebugEnabled()) {
                    logger.debug("Unrecognized session id=" + str, new Object[0]);
                }
            } finally {
                try {
                } finally {
                }
            }
        }
    }

    public long getSaveInterval() {
        return this._saveIntervalSec;
    }

    @Override // org.eclipse.jetty.server.session.AbstractSessionManager
    public int getSessions() {
        int size;
        synchronized (this) {
            size = this._sessions.size();
        }
        return size;
    }

    public void invalidateSession(String str) {
        Session session;
        synchronized (this) {
            session = (Session) this._sessions.get(str);
        }
        if (session != null) {
            session.invalidate();
        }
    }

    @Override // org.eclipse.jetty.server.session.AbstractSessionManager
    public void invalidateSessions() {
    }

    public Session loadSession(final String str, final String str2, final String str3) throws Exception {
        final AtomicReference atomicReference = new AtomicReference();
        final AtomicReference atomicReference2 = new AtomicReference();
        Runnable runnable = new Runnable() { // from class: org.eclipse.jetty.server.session.JDBCSessionManager.1
            /* JADX WARN: Removed duplicated region for block: B:59:0x0117 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:64:0x0125 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:72:? A[SYNTHETIC] */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void run() throws java.lang.Throwable {
                /*
                    Method dump skipped, instruction units count: 306
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.server.session.JDBCSessionManager.AnonymousClass1.run():void");
            }
        };
        ContextHandler.Context context = this._context;
        if (context == null) {
            runnable.run();
        } else {
            context.getContextHandler().handle(runnable);
        }
        if (atomicReference2.get() == null) {
            return (Session) atomicReference.get();
        }
        this._jdbcSessionIdMgr.removeSession(str);
        throw ((Exception) atomicReference2.get());
    }

    @Override // org.eclipse.jetty.server.session.AbstractSessionManager
    public AbstractSession newSession(c cVar) {
        return new Session(cVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:11:0x002a  */
    @Override // org.eclipse.jetty.server.session.AbstractSessionManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean removeSession(java.lang.String r6) {
        /*
            r5 = this;
            monitor-enter(r5)
            java.util.concurrent.ConcurrentHashMap<java.lang.String, org.eclipse.jetty.server.session.AbstractSession> r0 = r5._sessions     // Catch: java.lang.Throwable -> L2d
            java.lang.Object r0 = r0.remove(r6)     // Catch: java.lang.Throwable -> L2d
            org.eclipse.jetty.server.session.JDBCSessionManager$Session r0 = (org.eclipse.jetty.server.session.JDBCSessionManager.Session) r0     // Catch: java.lang.Throwable -> L2d
            if (r0 == 0) goto L26
            r5.deleteSession(r0)     // Catch: java.lang.Exception -> Lf java.lang.Throwable -> L2d
            goto L26
        Lf:
            r1 = move-exception
            org.eclipse.jetty.util.log.Logger r2 = org.eclipse.jetty.server.session.JDBCSessionManager.LOG     // Catch: java.lang.Throwable -> L2d
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L2d
            r3.<init>()     // Catch: java.lang.Throwable -> L2d
            java.lang.String r4 = "Problem deleting session id="
            r3.append(r4)     // Catch: java.lang.Throwable -> L2d
            r3.append(r6)     // Catch: java.lang.Throwable -> L2d
            java.lang.String r6 = r3.toString()     // Catch: java.lang.Throwable -> L2d
            r2.warn(r6, r1)     // Catch: java.lang.Throwable -> L2d
        L26:
            if (r0 == 0) goto L2a
            r6 = 1
            goto L2b
        L2a:
            r6 = 0
        L2b:
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L2d
            return r6
        L2d:
            r6 = move-exception
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L2d
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.server.session.JDBCSessionManager.removeSession(java.lang.String):boolean");
    }

    public void setSaveInterval(long j4) {
        this._saveIntervalSec = j4;
    }

    public void storeSession(Session session) throws SQLException {
        if (session == null) {
            return;
        }
        Connection connection = getConnection();
        PreparedStatement preparedStatementPrepareStatement = null;
        try {
            String strCalculateRowId = calculateRowId(session);
            long jCurrentTimeMillis = System.currentTimeMillis();
            connection.setAutoCommit(true);
            preparedStatementPrepareStatement = connection.prepareStatement(this._jdbcSessionIdMgr._insertSession);
            preparedStatementPrepareStatement.setString(1, strCalculateRowId);
            preparedStatementPrepareStatement.setString(2, session.getId());
            preparedStatementPrepareStatement.setString(3, session.getCanonicalContext());
            preparedStatementPrepareStatement.setString(4, session.getVirtualHost());
            preparedStatementPrepareStatement.setString(5, getSessionIdManager().getWorkerName());
            preparedStatementPrepareStatement.setLong(6, session.getAccessed());
            preparedStatementPrepareStatement.setLong(7, session.getLastAccessedTime());
            preparedStatementPrepareStatement.setLong(8, session.getCreationTime());
            preparedStatementPrepareStatement.setLong(9, session.getCookieSet());
            preparedStatementPrepareStatement.setLong(10, jCurrentTimeMillis);
            preparedStatementPrepareStatement.setLong(11, session.getExpiryTime());
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            new ObjectOutputStream(byteArrayOutputStream).writeObject(session.getAttributeMap());
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            preparedStatementPrepareStatement.setBinaryStream(12, (InputStream) new ByteArrayInputStream(byteArray), byteArray.length);
            preparedStatementPrepareStatement.executeUpdate();
            session.setRowId(strCalculateRowId);
            session.setLastSaved(jCurrentTimeMillis);
            Logger logger = LOG;
            if (logger.isDebugEnabled()) {
                logger.debug("Stored session " + session, new Object[0]);
            }
            try {
                preparedStatementPrepareStatement.close();
            } catch (Exception e4) {
                LOG.warn(e4);
            }
            connection.close();
        } finally {
        }
    }

    public void updateSession(Session session) throws SQLException {
        if (session == null) {
            return;
        }
        Connection connection = getConnection();
        PreparedStatement preparedStatementPrepareStatement = null;
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            connection.setAutoCommit(true);
            preparedStatementPrepareStatement = connection.prepareStatement(this._jdbcSessionIdMgr._updateSession);
            preparedStatementPrepareStatement.setString(1, getSessionIdManager().getWorkerName());
            preparedStatementPrepareStatement.setLong(2, session.getAccessed());
            preparedStatementPrepareStatement.setLong(3, session.getLastAccessedTime());
            preparedStatementPrepareStatement.setLong(4, jCurrentTimeMillis);
            preparedStatementPrepareStatement.setLong(5, session.getExpiryTime());
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            new ObjectOutputStream(byteArrayOutputStream).writeObject(session.getAttributeMap());
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            preparedStatementPrepareStatement.setBinaryStream(6, (InputStream) new ByteArrayInputStream(byteArray), byteArray.length);
            preparedStatementPrepareStatement.setString(7, session.getRowId());
            preparedStatementPrepareStatement.executeUpdate();
            session.setLastSaved(jCurrentTimeMillis);
            Logger logger = LOG;
            if (logger.isDebugEnabled()) {
                logger.debug("Updated session " + session, new Object[0]);
            }
            try {
                preparedStatementPrepareStatement.close();
            } catch (Exception e4) {
                LOG.warn(e4);
            }
            connection.close();
        } finally {
        }
    }

    public void updateSessionNode(Session session) throws SQLException {
        String workerName = getSessionIdManager().getWorkerName();
        Connection connection = getConnection();
        PreparedStatement preparedStatementPrepareStatement = null;
        try {
            connection.setAutoCommit(true);
            preparedStatementPrepareStatement = connection.prepareStatement(this._jdbcSessionIdMgr._updateSessionNode);
            preparedStatementPrepareStatement.setString(1, workerName);
            preparedStatementPrepareStatement.setString(2, session.getRowId());
            preparedStatementPrepareStatement.executeUpdate();
            preparedStatementPrepareStatement.close();
            Logger logger = LOG;
            if (logger.isDebugEnabled()) {
                logger.debug("Updated last node for session id=" + session.getId() + ", lastNode = " + workerName, new Object[0]);
            }
            try {
                preparedStatementPrepareStatement.close();
            } catch (Exception e4) {
                LOG.warn(e4);
            }
            connection.close();
        } finally {
        }
    }

    public class ClassLoadingObjectInputStream extends ObjectInputStream {
        public ClassLoadingObjectInputStream(InputStream inputStream) {
            super(inputStream);
        }

        @Override // java.io.ObjectInputStream
        public Class<?> resolveClass(ObjectStreamClass objectStreamClass) {
            try {
                return Class.forName(objectStreamClass.getName(), false, Thread.currentThread().getContextClassLoader());
            } catch (ClassNotFoundException unused) {
                return super.resolveClass(objectStreamClass);
            }
        }

        public ClassLoadingObjectInputStream() {
        }
    }

    @Override // org.eclipse.jetty.server.session.AbstractSessionManager
    public Session getSession(String str) {
        Session sessionLoadSession;
        Session session = (Session) this._sessions.get(str);
        synchronized (this) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            Logger logger = LOG;
            if (logger.isDebugEnabled()) {
                if (session == null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("getSession(");
                    sb.append(str);
                    sb.append("): not in session map,");
                    sb.append(" now=");
                    sb.append(jCurrentTimeMillis);
                    sb.append(" lastSaved=");
                    sb.append(session == null ? 0L : session._lastSaved);
                    sb.append(" interval=");
                    sb.append(this._saveIntervalSec * 1000);
                    logger.debug(sb.toString(), new Object[0]);
                } else {
                    logger.debug("getSession(" + str + "): in session map,  now=" + jCurrentTimeMillis + " lastSaved=" + session._lastSaved + " interval=" + (this._saveIntervalSec * 1000) + " lastNode=" + session._lastNode + " thisNode=" + getSessionIdManager().getWorkerName() + " difference=" + (jCurrentTimeMillis - session._lastSaved), new Object[0]);
                }
            }
            try {
                if (session == null) {
                    logger.debug("getSession(" + str + "): no session in session map. Reloading session data from db.", new Object[0]);
                    sessionLoadSession = loadSession(str, canonicalize(this._context.getContextPath()), getVirtualHost(this._context));
                } else if (jCurrentTimeMillis - session._lastSaved >= this._saveIntervalSec * 1000) {
                    logger.debug("getSession(" + str + "): stale session. Reloading session data from db.", new Object[0]);
                    sessionLoadSession = loadSession(str, canonicalize(this._context.getContextPath()), getVirtualHost(this._context));
                } else {
                    logger.debug("getSession(" + str + "): session in session map", new Object[0]);
                    sessionLoadSession = session;
                }
                if (sessionLoadSession == null) {
                    logger.debug("getSession({}): No session in database matching id={}", str, str);
                } else if (!sessionLoadSession.getLastNode().equals(getSessionIdManager().getWorkerName()) || session == null) {
                    if (sessionLoadSession._expiryTime > 0 && sessionLoadSession._expiryTime <= jCurrentTimeMillis) {
                        logger.debug("getSession ({}): Session has expired", str);
                        session = null;
                    }
                    if (logger.isDebugEnabled()) {
                        logger.debug("getSession(" + str + "): lastNode=" + sessionLoadSession.getLastNode() + " thisNode=" + getSessionIdManager().getWorkerName(), new Object[0]);
                    }
                    sessionLoadSession.setLastNode(getSessionIdManager().getWorkerName());
                    this._sessions.put(str, sessionLoadSession);
                    try {
                        updateSessionNode(sessionLoadSession);
                        sessionLoadSession.didActivate();
                    } catch (Exception e4) {
                        LOG.warn("Unable to update freshly loaded session " + str, e4);
                        return null;
                    }
                } else {
                    logger.debug("getSession({}): Session not stale {}", str, session);
                }
                session = sessionLoadSession;
            } catch (Exception e5) {
                LOG.warn("Unable to load session " + str, e5);
                return null;
            }
        }
        return session;
    }

    @Override // org.eclipse.jetty.server.session.AbstractSessionManager
    public void removeSession(AbstractSession abstractSession, boolean z3) {
        boolean z4;
        synchronized (this) {
            if (getSession(abstractSession.getClusterId()) != null) {
                z4 = true;
                removeSession(abstractSession.getClusterId());
            } else {
                z4 = false;
            }
        }
        if (z4) {
            this._sessionIdManager.removeSession(abstractSession);
            if (z3) {
                this._sessionIdManager.invalidateAll(abstractSession.getClusterId());
            }
            if (z3 && !this._sessionListeners.isEmpty()) {
                m mVar = new m(abstractSession);
                Iterator<n> it = this._sessionListeners.iterator();
                while (it.hasNext()) {
                    it.next().sessionDestroyed(mVar);
                }
            }
            if (z3) {
                return;
            }
            abstractSession.willPassivate();
        }
    }

    public class Session extends AbstractSession {
        private static final long serialVersionUID = 5208464051134226143L;
        private String _canonicalContext;
        private long _cookieSet;
        private boolean _dirty;
        private long _expiryTime;
        private String _lastNode;
        private long _lastSaved;
        private String _rowId;
        private String _virtualHost;

        public Session(c cVar) {
            super(JDBCSessionManager.this, cVar);
            this._dirty = false;
            int maxInactiveInterval = getMaxInactiveInterval();
            this._expiryTime = maxInactiveInterval <= 0 ? 0L : System.currentTimeMillis() + (((long) maxInactiveInterval) * 1000);
            this._virtualHost = JDBCSessionManager.getVirtualHost(JDBCSessionManager.this._context);
            this._canonicalContext = JDBCSessionManager.canonicalize(JDBCSessionManager.this._context.getContextPath());
            this._lastNode = JDBCSessionManager.this.getSessionIdManager().getWorkerName();
        }

        @Override // org.eclipse.jetty.server.session.AbstractSession
        public boolean access(long j4) {
            synchronized (this) {
                if (!super.access(j4)) {
                    return false;
                }
                int maxInactiveInterval = getMaxInactiveInterval();
                this._expiryTime = maxInactiveInterval <= 0 ? 0L : j4 + (((long) maxInactiveInterval) * 1000);
                return true;
            }
        }

        @Override // org.eclipse.jetty.server.session.AbstractSession
        public void complete() {
            synchronized (this) {
                super.complete();
                try {
                    try {
                        if (isValid()) {
                            if (this._dirty) {
                                willPassivate();
                                JDBCSessionManager.this.updateSession(this);
                                didActivate();
                            } else if (getAccessed() - this._lastSaved >= JDBCSessionManager.this.getSaveInterval() * 1000) {
                                JDBCSessionManager.this.updateSessionAccessTime(this);
                            }
                        }
                    } catch (Exception e4) {
                        AbstractSession.LOG.warn("Problem persisting changed session data id=" + getId(), e4);
                    }
                } finally {
                    this._dirty = false;
                }
            }
        }

        @Override // org.eclipse.jetty.server.session.AbstractSession
        public void cookieSet() {
            this._cookieSet = getAccessed();
        }

        public synchronized String getCanonicalContext() {
            return this._canonicalContext;
        }

        public synchronized long getCookieSet() {
            return this._cookieSet;
        }

        public synchronized long getExpiryTime() {
            return this._expiryTime;
        }

        public synchronized String getLastNode() {
            return this._lastNode;
        }

        public synchronized long getLastSaved() {
            return this._lastSaved;
        }

        public synchronized String getRowId() {
            return this._rowId;
        }

        public synchronized String getVirtualHost() {
            return this._virtualHost;
        }

        @Override // org.eclipse.jetty.server.session.AbstractSession, org.eclipse.jetty.server.session.AbstractSessionManager.SessionIf, j2.g
        public void removeAttribute(String str) {
            super.removeAttribute(str);
            this._dirty = true;
        }

        @Override // org.eclipse.jetty.server.session.AbstractSession, org.eclipse.jetty.server.session.AbstractSessionManager.SessionIf, j2.g
        public void setAttribute(String str, Object obj) {
            super.setAttribute(str, obj);
            this._dirty = true;
        }

        public synchronized void setCanonicalContext(String str) {
            this._canonicalContext = str;
        }

        public void setCookieSet(long j4) {
            this._cookieSet = j4;
        }

        public synchronized void setExpiryTime(long j4) {
            this._expiryTime = j4;
        }

        public synchronized void setLastNode(String str) {
            this._lastNode = str;
        }

        public synchronized void setLastSaved(long j4) {
            this._lastSaved = j4;
        }

        public synchronized void setRowId(String str) {
            this._rowId = str;
        }

        public synchronized void setVirtualHost(String str) {
            this._virtualHost = str;
        }

        @Override // org.eclipse.jetty.server.session.AbstractSession
        public void timeout() {
            Logger logger = AbstractSession.LOG;
            if (logger.isDebugEnabled()) {
                StringBuilder sbA = f.a("Timing out session id=");
                sbA.append(getClusterId());
                logger.debug(sbA.toString(), new Object[0]);
            }
            super.timeout();
        }

        @Override // org.eclipse.jetty.server.session.AbstractSession
        public String toString() {
            StringBuilder sbA = f.a("Session rowId=");
            sbA.append(this._rowId);
            sbA.append(",id=");
            sbA.append(getId());
            sbA.append(",lastNode=");
            sbA.append(this._lastNode);
            sbA.append(",created=");
            sbA.append(getCreationTime());
            sbA.append(",accessed=");
            sbA.append(getAccessed());
            sbA.append(",lastAccessed=");
            sbA.append(getLastAccessedTime());
            sbA.append(",cookieSet=");
            sbA.append(this._cookieSet);
            sbA.append(",lastSaved=");
            sbA.append(this._lastSaved);
            sbA.append(",expiry=");
            sbA.append(this._expiryTime);
            return sbA.toString();
        }

        public Session(String str, String str2, long j4, long j5) {
            super(JDBCSessionManager.this, j4, j5, str);
            this._dirty = false;
            this._rowId = str2;
        }
    }
}
