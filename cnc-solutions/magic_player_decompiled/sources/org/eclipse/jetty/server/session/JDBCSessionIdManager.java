package org.eclipse.jetty.server.session;

import android.support.v4.media.b;
import android.support.v4.media.f;
import j2.c;
import j2.g;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Random;
import java.util.Timer;
import java.util.TimerTask;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import org.eclipse.jetty.server.Handler;
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.server.SessionManager;
import org.eclipse.jetty.server.handler.ContextHandler;
import org.eclipse.jetty.server.session.JDBCSessionManager;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class JDBCSessionIdManager extends AbstractSessionIdManager {
    public static final Logger LOG = SessionHandler.LOG;
    public String _blobType;
    public String _connectionUrl;
    public String _createSessionIdTable;
    public String _createSessionTable;
    public DataSource _datasource;
    public DatabaseAdaptor _dbAdaptor;
    public String _deleteId;
    public String _deleteOldExpiredSessions;
    public String _deleteSession;
    public Driver _driver;
    public String _driverClassName;
    public String _insertId;
    public String _insertSession;
    public String _jndiName;
    public long _lastScavengeTime;
    public String _longType;
    public String _queryId;
    public long _scavengeIntervalMs;
    public String _selectBoundedExpiredSessions;
    private String _selectExpiredSessions;
    public Server _server;
    public String _sessionIdTable;
    public final HashSet<String> _sessionIds;
    public String _sessionTable;
    public String _sessionTableRowId;
    public TimerTask _task;
    public Timer _timer;
    public String _updateSession;
    public String _updateSessionAccessTime;
    public String _updateSessionNode;

    public class DatabaseAdaptor {
        public String _dbName;
        public boolean _isLower;
        public boolean _isUpper;

        public DatabaseAdaptor(DatabaseMetaData databaseMetaData) {
            String lowerCase = databaseMetaData.getDatabaseProductName().toLowerCase(Locale.ENGLISH);
            this._dbName = lowerCase;
            JDBCSessionIdManager.LOG.debug("Using database {}", lowerCase);
            this._isLower = databaseMetaData.storesLowerCaseIdentifiers();
            this._isUpper = databaseMetaData.storesUpperCaseIdentifiers();
        }

        public String convertIdentifier(String str) {
            return this._isLower ? str.toLowerCase(Locale.ENGLISH) : this._isUpper ? str.toUpperCase(Locale.ENGLISH) : str;
        }

        public InputStream getBlobInputStream(ResultSet resultSet, String str) {
            return this._dbName.startsWith("postgres") ? new ByteArrayInputStream(resultSet.getBytes(str)) : resultSet.getBlob(str).getBinaryStream();
        }

        public String getBlobType() {
            String str = JDBCSessionIdManager.this._blobType;
            return str != null ? str : this._dbName.startsWith("postgres") ? "bytea" : "blob";
        }

        public String getDBName() {
            return this._dbName;
        }

        public PreparedStatement getLoadStatement(Connection connection, String str, String str2, String str3) throws SQLException {
            if ((str2 == null || "".equals(str2)) && isEmptyStringNull()) {
                StringBuilder sbA = f.a("select * from ");
                sbA.append(JDBCSessionIdManager.this._sessionTable);
                sbA.append(" where sessionId = ? and contextPath is null and virtualHost = ?");
                PreparedStatement preparedStatementPrepareStatement = connection.prepareStatement(sbA.toString());
                preparedStatementPrepareStatement.setString(1, str);
                preparedStatementPrepareStatement.setString(2, str3);
                return preparedStatementPrepareStatement;
            }
            StringBuilder sbA2 = f.a("select * from ");
            sbA2.append(JDBCSessionIdManager.this._sessionTable);
            sbA2.append(" where sessionId = ? and contextPath = ? and virtualHost = ?");
            PreparedStatement preparedStatementPrepareStatement2 = connection.prepareStatement(sbA2.toString());
            preparedStatementPrepareStatement2.setString(1, str);
            preparedStatementPrepareStatement2.setString(2, str2);
            preparedStatementPrepareStatement2.setString(3, str3);
            return preparedStatementPrepareStatement2;
        }

        public String getLongType() {
            String str = JDBCSessionIdManager.this._longType;
            return str != null ? str : this._dbName.startsWith("oracle") ? "number(20)" : "bigint";
        }

        public String getRowIdColumnName() {
            String str = this._dbName;
            return (str == null || !str.startsWith("oracle")) ? "rowId" : "srowId";
        }

        public boolean isEmptyStringNull() {
            return this._dbName.startsWith("oracle");
        }
    }

    public JDBCSessionIdManager(Server server) {
        this._sessionIds = new HashSet<>();
        this._sessionIdTable = "JettySessionIds";
        this._sessionTable = "JettySessions";
        this._sessionTableRowId = "rowId";
        this._scavengeIntervalMs = 600000L;
        this._server = server;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0128 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0134 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:128:0x011c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0140 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:152:? A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:108:0x0176 -> B:118:0x017b). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void cleanExpiredSessions() throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 380
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.server.session.JDBCSessionIdManager.cleanExpiredSessions():void");
    }

    private String createCleanExpiredSessionsSql(String str, Collection<String> collection) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str);
        stringBuffer.append("(");
        Iterator<String> it = collection.iterator();
        while (it.hasNext()) {
            StringBuilder sbA = f.a("'");
            sbA.append(it.next());
            sbA.append("'");
            stringBuffer.append(sbA.toString());
            if (it.hasNext()) {
                stringBuffer.append(",");
            }
        }
        stringBuffer.append(")");
        Logger logger = LOG;
        if (logger.isDebugEnabled()) {
            logger.debug("Cleaning expired sessions with: {}", stringBuffer);
        }
        return stringBuffer.toString();
    }

    private void delete(String str) throws Throwable {
        Connection connection;
        PreparedStatement preparedStatementPrepareStatement = null;
        try {
            connection = getConnection();
            try {
                connection.setAutoCommit(true);
                preparedStatementPrepareStatement = connection.prepareStatement(this._deleteId);
                preparedStatementPrepareStatement.setString(1, str);
                preparedStatementPrepareStatement.executeUpdate();
                try {
                    preparedStatementPrepareStatement.close();
                } catch (Exception e4) {
                    LOG.warn(e4);
                }
                connection.close();
            } catch (Throwable th) {
                th = th;
                if (preparedStatementPrepareStatement != null) {
                    try {
                        preparedStatementPrepareStatement.close();
                    } catch (Exception e5) {
                        LOG.warn(e5);
                    }
                }
                if (connection == null) {
                    throw th;
                }
                connection.close();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            connection = null;
        }
    }

    private boolean exists(String str) throws Throwable {
        Connection connection;
        PreparedStatement preparedStatementPrepareStatement = null;
        try {
            connection = getConnection();
            try {
                connection.setAutoCommit(true);
                preparedStatementPrepareStatement = connection.prepareStatement(this._queryId);
                preparedStatementPrepareStatement.setString(1, str);
                boolean next = preparedStatementPrepareStatement.executeQuery().next();
                try {
                    preparedStatementPrepareStatement.close();
                } catch (Exception e4) {
                    LOG.warn(e4);
                }
                connection.close();
                return next;
            } catch (Throwable th) {
                th = th;
                if (preparedStatementPrepareStatement != null) {
                    try {
                        preparedStatementPrepareStatement.close();
                    } catch (Exception e5) {
                        LOG.warn(e5);
                    }
                }
                if (connection == null) {
                    throw th;
                }
                connection.close();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            connection = null;
        }
    }

    private void initializeDatabase() throws SQLException, ClassNotFoundException {
        if (this._datasource != null) {
            return;
        }
        if (this._jndiName != null) {
            this._datasource = (DataSource) new InitialContext().lookup(this._jndiName);
            return;
        }
        Driver driver = this._driver;
        if (driver != null && this._connectionUrl != null) {
            DriverManager.registerDriver(driver);
            return;
        }
        String str = this._driverClassName;
        if (str == null || this._connectionUrl == null) {
            throw new IllegalStateException("No database configured for sessions");
        }
        Class.forName(str);
    }

    private void insert(String str) throws Throwable {
        PreparedStatement preparedStatement;
        Connection connection;
        PreparedStatement preparedStatementPrepareStatement = null;
        try {
            Connection connection2 = getConnection();
            try {
                connection2.setAutoCommit(true);
                PreparedStatement preparedStatementPrepareStatement2 = connection2.prepareStatement(this._queryId);
                try {
                    preparedStatementPrepareStatement2.setString(1, str);
                    if (!preparedStatementPrepareStatement2.executeQuery().next()) {
                        preparedStatementPrepareStatement = connection2.prepareStatement(this._insertId);
                        preparedStatementPrepareStatement.setString(1, str);
                        preparedStatementPrepareStatement.executeUpdate();
                    }
                    try {
                        preparedStatementPrepareStatement2.close();
                    } catch (Exception e4) {
                        LOG.warn(e4);
                    }
                    if (preparedStatementPrepareStatement != null) {
                        try {
                            preparedStatementPrepareStatement.close();
                        } catch (Exception e5) {
                            LOG.warn(e5);
                        }
                    }
                    connection2.close();
                } catch (Throwable th) {
                    th = th;
                    connection = connection2;
                    preparedStatement = preparedStatementPrepareStatement;
                    preparedStatementPrepareStatement = preparedStatementPrepareStatement2;
                    if (preparedStatementPrepareStatement != null) {
                        try {
                            preparedStatementPrepareStatement.close();
                        } catch (Exception e6) {
                            LOG.warn(e6);
                        }
                    }
                    if (preparedStatement != null) {
                        try {
                            preparedStatement.close();
                        } catch (Exception e7) {
                            LOG.warn(e7);
                        }
                    }
                    if (connection == null) {
                        throw th;
                    }
                    connection.close();
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                connection = connection2;
                preparedStatement = null;
            }
        } catch (Throwable th3) {
            th = th3;
            preparedStatement = null;
            connection = null;
        }
    }

    private void prepareTables() throws Throwable {
        this._createSessionIdTable = b.a(f.a("create table "), this._sessionIdTable, " (id varchar(120), primary key(id))");
        this._selectBoundedExpiredSessions = b.a(f.a("select * from "), this._sessionTable, " where expiryTime >= ? and expiryTime <= ?");
        this._selectExpiredSessions = b.a(f.a("select * from "), this._sessionTable, " where expiryTime >0 and expiryTime <= ?");
        this._deleteOldExpiredSessions = b.a(f.a("delete from "), this._sessionTable, " where expiryTime >0 and expiryTime <= ?");
        this._insertId = b.a(f.a("insert into "), this._sessionIdTable, " (id)  values (?)");
        this._deleteId = b.a(f.a("delete from "), this._sessionIdTable, " where id = ?");
        this._queryId = b.a(f.a("select * from "), this._sessionIdTable, " where id = ?");
        Connection connection = null;
        try {
            Connection connection2 = getConnection();
            try {
                connection2.setAutoCommit(true);
                DatabaseMetaData metaData = connection2.getMetaData();
                DatabaseAdaptor databaseAdaptor = new DatabaseAdaptor(metaData);
                this._dbAdaptor = databaseAdaptor;
                this._sessionTableRowId = databaseAdaptor.getRowIdColumnName();
                if (!metaData.getTables(null, null, this._dbAdaptor.convertIdentifier(this._sessionIdTable), null).next()) {
                    connection2.createStatement().executeUpdate(this._createSessionIdTable);
                }
                String strConvertIdentifier = this._dbAdaptor.convertIdentifier(this._sessionTable);
                if (!metaData.getTables(null, null, strConvertIdentifier, null).next()) {
                    String blobType = this._dbAdaptor.getBlobType();
                    String longType = this._dbAdaptor.getLongType();
                    this._createSessionTable = "create table " + this._sessionTable + " (" + this._sessionTableRowId + " varchar(120), sessionId varchar(120),  contextPath varchar(60), virtualHost varchar(60), lastNode varchar(60), accessTime " + longType + ",  lastAccessTime " + longType + ", createTime " + longType + ", cookieTime " + longType + ",  lastSavedTime " + longType + ", expiryTime " + longType + ", map " + blobType + ", primary key(" + this._sessionTableRowId + "))";
                    connection2.createStatement().executeUpdate(this._createSessionTable);
                }
                String str = "idx_" + this._sessionTable + "_expiry";
                String str2 = "idx_" + this._sessionTable + "_session";
                ResultSet indexInfo = metaData.getIndexInfo(null, null, strConvertIdentifier, false, false);
                boolean z3 = false;
                boolean z4 = false;
                while (indexInfo.next()) {
                    String string = indexInfo.getString("INDEX_NAME");
                    if (str.equalsIgnoreCase(string)) {
                        z3 = true;
                    } else if (str2.equalsIgnoreCase(string)) {
                        z4 = true;
                    }
                }
                if (!z3 || !z4) {
                    Statement statementCreateStatement = connection2.createStatement();
                    if (!z3) {
                        try {
                            statementCreateStatement.executeUpdate("create index " + str + " on " + this._sessionTable + " (expiryTime)");
                        } finally {
                        }
                    }
                    if (!z4) {
                        statementCreateStatement.executeUpdate("create index " + str2 + " on " + this._sessionTable + " (sessionId, contextPath)");
                    }
                    if (statementCreateStatement != null) {
                        try {
                            statementCreateStatement.close();
                        } catch (Exception e4) {
                            LOG.warn(e4);
                        }
                    }
                }
                this._insertSession = "insert into " + this._sessionTable + " (" + this._sessionTableRowId + ", sessionId, contextPath, virtualHost, lastNode, accessTime, lastAccessTime, createTime, cookieTime, lastSavedTime, expiryTime, map)  values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
                StringBuilder sb = new StringBuilder();
                sb.append("delete from ");
                sb.append(this._sessionTable);
                sb.append(" where ");
                sb.append(this._sessionTableRowId);
                sb.append(" = ?");
                this._deleteSession = sb.toString();
                this._updateSession = "update " + this._sessionTable + " set lastNode = ?, accessTime = ?, lastAccessTime = ?, lastSavedTime = ?, expiryTime = ?, map = ? where " + this._sessionTableRowId + " = ?";
                this._updateSessionNode = "update " + this._sessionTable + " set lastNode = ? where " + this._sessionTableRowId + " = ?";
                this._updateSessionAccessTime = "update " + this._sessionTable + " set lastNode = ?, accessTime = ?, lastAccessTime = ?, lastSavedTime = ?, expiryTime = ? where " + this._sessionTableRowId + " = ?";
                connection2.close();
            } catch (Throwable th) {
                th = th;
                connection = connection2;
                if (connection != null) {
                    connection.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scavenge() {
        SessionManager sessionManager;
        ArrayList arrayList = new ArrayList();
        Connection connection = null;
        try {
            try {
                Logger logger = LOG;
                if (logger.isDebugEnabled()) {
                    logger.debug("Scavenge sweep started at " + System.currentTimeMillis(), new Object[0]);
                }
                if (this._lastScavengeTime > 0) {
                    connection = getConnection();
                    connection.setAutoCommit(true);
                    PreparedStatement preparedStatementPrepareStatement = connection.prepareStatement(this._selectBoundedExpiredSessions);
                    long j4 = this._lastScavengeTime;
                    long j5 = j4 - this._scavengeIntervalMs;
                    if (logger.isDebugEnabled()) {
                        logger.debug(" Searching for sessions expired between " + j5 + " and " + j4, new Object[0]);
                    }
                    preparedStatementPrepareStatement.setLong(1, j5);
                    preparedStatementPrepareStatement.setLong(2, j4);
                    ResultSet resultSetExecuteQuery = preparedStatementPrepareStatement.executeQuery();
                    while (resultSetExecuteQuery.next()) {
                        String string = resultSetExecuteQuery.getString("sessionId");
                        arrayList.add(string);
                        Logger logger2 = LOG;
                        if (logger2.isDebugEnabled()) {
                            logger2.debug(" Found expired sessionId=" + string, new Object[0]);
                        }
                    }
                    Handler[] childHandlersByClass = this._server.getChildHandlersByClass(ContextHandler.class);
                    for (int i4 = 0; childHandlersByClass != null && i4 < childHandlersByClass.length; i4++) {
                        SessionHandler sessionHandler = (SessionHandler) ((ContextHandler) childHandlersByClass[i4]).getChildHandlerByClass(SessionHandler.class);
                        if (sessionHandler != null && (sessionManager = sessionHandler.getSessionManager()) != null && (sessionManager instanceof JDBCSessionManager)) {
                            ((JDBCSessionManager) sessionManager).expire(arrayList);
                        }
                    }
                    long j6 = this._lastScavengeTime;
                    long j7 = this._scavengeIntervalMs;
                    Long.signum(j7);
                    long j8 = j6 - (j7 * 2);
                    if (j8 > 0) {
                        Logger logger3 = LOG;
                        if (logger3.isDebugEnabled()) {
                            logger3.debug("Deleting old expired sessions expired before " + j8, new Object[0]);
                        }
                        try {
                            preparedStatementPrepareStatement = connection.prepareStatement(this._deleteOldExpiredSessions);
                            preparedStatementPrepareStatement.setLong(1, j8);
                            int iExecuteUpdate = preparedStatementPrepareStatement.executeUpdate();
                            if (logger3.isDebugEnabled()) {
                                logger3.debug("Deleted " + iExecuteUpdate + " rows of old sessions expired before " + j8, new Object[0]);
                            }
                            try {
                                preparedStatementPrepareStatement.close();
                            } catch (Exception e4) {
                                LOG.warn(e4);
                            }
                        } catch (Throwable th) {
                            if (preparedStatementPrepareStatement != null) {
                                try {
                                    preparedStatementPrepareStatement.close();
                                } catch (Exception e5) {
                                    LOG.warn(e5);
                                }
                            }
                            throw th;
                        }
                    }
                }
                this._lastScavengeTime = System.currentTimeMillis();
                Logger logger4 = LOG;
                if (logger4.isDebugEnabled()) {
                    StringBuilder sbA = f.a("Scavenge sweep ended at ");
                    sbA.append(this._lastScavengeTime);
                    logger4.debug(sbA.toString(), new Object[0]);
                }
                if (connection == null) {
                    return;
                }
            } catch (Throwable th2) {
                this._lastScavengeTime = System.currentTimeMillis();
                Logger logger5 = LOG;
                if (logger5.isDebugEnabled()) {
                    StringBuilder sbA2 = f.a("Scavenge sweep ended at ");
                    sbA2.append(this._lastScavengeTime);
                    logger5.debug(sbA2.toString(), new Object[0]);
                }
                if (0 != 0) {
                    try {
                        connection.close();
                    } catch (SQLException e6) {
                        LOG.warn(e6);
                    }
                }
                throw th2;
            }
        } catch (Exception e7) {
            if (isRunning()) {
                LOG.warn("Problem selecting expired sessions", e7);
            } else {
                LOG.ignore(e7);
            }
            this._lastScavengeTime = System.currentTimeMillis();
            Logger logger6 = LOG;
            if (logger6.isDebugEnabled()) {
                StringBuilder sbA3 = f.a("Scavenge sweep ended at ");
                sbA3.append(this._lastScavengeTime);
                logger6.debug(sbA3.toString(), new Object[0]);
            }
            if (0 == 0) {
                return;
            }
        }
        try {
            connection.close();
        } catch (SQLException e8) {
            LOG.warn(e8);
        }
    }

    @Override // org.eclipse.jetty.server.SessionIdManager
    public void addSession(g gVar) {
        if (gVar == null) {
            return;
        }
        synchronized (this._sessionIds) {
            String clusterId = ((JDBCSessionManager.Session) gVar).getClusterId();
            try {
                insert(clusterId);
                this._sessionIds.add(clusterId);
            } catch (Exception e4) {
                LOG.warn("Problem storing session id=" + clusterId, e4);
            }
        }
    }

    @Override // org.eclipse.jetty.server.session.AbstractSessionIdManager, org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStart() throws Throwable {
        initializeDatabase();
        prepareTables();
        cleanExpiredSessions();
        super.doStart();
        Logger logger = LOG;
        if (logger.isDebugEnabled()) {
            StringBuilder sbA = f.a("Scavenging interval = ");
            sbA.append(getScavengeInterval());
            sbA.append(" sec");
            logger.debug(sbA.toString(), new Object[0]);
        }
        this._timer = new Timer("JDBCSessionScavenger", true);
        setScavengeInterval(getScavengeInterval());
    }

    @Override // org.eclipse.jetty.server.session.AbstractSessionIdManager, org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStop() {
        synchronized (this) {
            TimerTask timerTask = this._task;
            if (timerTask != null) {
                timerTask.cancel();
            }
            Timer timer = this._timer;
            if (timer != null) {
                timer.cancel();
            }
            this._timer = null;
        }
        this._sessionIds.clear();
        super.doStop();
    }

    public String getBlobType() {
        return this._blobType;
    }

    @Override // org.eclipse.jetty.server.SessionIdManager
    public String getClusterId(String str) {
        int iLastIndexOf = str.lastIndexOf(46);
        return iLastIndexOf > 0 ? str.substring(0, iLastIndexOf) : str;
    }

    public Connection getConnection() {
        DataSource dataSource = this._datasource;
        return dataSource != null ? dataSource.getConnection() : DriverManager.getConnection(this._connectionUrl);
    }

    public String getConnectionUrl() {
        return this._connectionUrl;
    }

    public DataSource getDataSource() {
        return this._datasource;
    }

    public String getDatasourceName() {
        return this._jndiName;
    }

    public String getDriverClassName() {
        return this._driverClassName;
    }

    public String getLongType() {
        return this._longType;
    }

    @Override // org.eclipse.jetty.server.SessionIdManager
    public String getNodeId(String str, c cVar) {
        if (this._workerName == null) {
            return str;
        }
        return str + '.' + this._workerName;
    }

    public long getScavengeInterval() {
        return this._scavengeIntervalMs / 1000;
    }

    @Override // org.eclipse.jetty.server.SessionIdManager
    public boolean idInUse(String str) {
        boolean zContains;
        if (str == null) {
            return false;
        }
        String clusterId = getClusterId(str);
        synchronized (this._sessionIds) {
            zContains = this._sessionIds.contains(clusterId);
        }
        if (zContains) {
            return true;
        }
        try {
            return exists(clusterId);
        } catch (Exception e4) {
            LOG.warn("Problem checking inUse for id=" + clusterId, e4);
            return false;
        }
    }

    @Override // org.eclipse.jetty.server.SessionIdManager
    public void invalidateAll(String str) {
        SessionManager sessionManager;
        removeSession(str);
        synchronized (this._sessionIds) {
            Handler[] childHandlersByClass = this._server.getChildHandlersByClass(ContextHandler.class);
            for (int i4 = 0; childHandlersByClass != null && i4 < childHandlersByClass.length; i4++) {
                SessionHandler sessionHandler = (SessionHandler) ((ContextHandler) childHandlersByClass[i4]).getChildHandlerByClass(SessionHandler.class);
                if (sessionHandler != null && (sessionManager = sessionHandler.getSessionManager()) != null && (sessionManager instanceof JDBCSessionManager)) {
                    ((JDBCSessionManager) sessionManager).invalidateSession(str);
                }
            }
        }
    }

    @Override // org.eclipse.jetty.server.SessionIdManager
    public void removeSession(g gVar) {
        if (gVar == null) {
            return;
        }
        removeSession(((JDBCSessionManager.Session) gVar).getClusterId());
    }

    public void setBlobType(String str) {
        this._blobType = str;
    }

    public void setDatasource(DataSource dataSource) {
        this._datasource = dataSource;
    }

    public void setDatasourceName(String str) {
        this._jndiName = str;
    }

    public void setDriverInfo(String str, String str2) {
        this._driverClassName = str;
        this._connectionUrl = str2;
    }

    public void setLongType(String str) {
        this._longType = str;
    }

    public void setScavengeInterval(long j4) {
        if (j4 <= 0) {
            j4 = 60;
        }
        long j5 = this._scavengeIntervalMs;
        long j6 = j4 * 1000;
        this._scavengeIntervalMs = j6;
        long j7 = j6 / 10;
        if (System.currentTimeMillis() % 2 == 0) {
            this._scavengeIntervalMs += j7;
        }
        Logger logger = LOG;
        if (logger.isDebugEnabled()) {
            StringBuilder sbA = f.a("Scavenging every ");
            sbA.append(this._scavengeIntervalMs);
            sbA.append(" ms");
            logger.debug(sbA.toString(), new Object[0]);
        }
        if (this._timer != null) {
            if (j6 != j5 || this._task == null) {
                synchronized (this) {
                    TimerTask timerTask = this._task;
                    if (timerTask != null) {
                        timerTask.cancel();
                    }
                    TimerTask timerTask2 = new TimerTask() { // from class: org.eclipse.jetty.server.session.JDBCSessionIdManager.1
                        @Override // java.util.TimerTask, java.lang.Runnable
                        public void run() {
                            JDBCSessionIdManager.this.scavenge();
                        }
                    };
                    this._task = timerTask2;
                    Timer timer = this._timer;
                    long j8 = this._scavengeIntervalMs;
                    timer.schedule(timerTask2, j8, j8);
                }
            }
        }
    }

    public void removeSession(String str) {
        if (str == null) {
            return;
        }
        synchronized (this._sessionIds) {
            Logger logger = LOG;
            if (logger.isDebugEnabled()) {
                logger.debug("Removing session id=" + str, new Object[0]);
            }
            try {
                this._sessionIds.remove(str);
                delete(str);
            } catch (Exception e4) {
                LOG.warn("Problem removing session id=" + str, e4);
            }
        }
    }

    public void setDriverInfo(Driver driver, String str) {
        this._driver = driver;
        this._connectionUrl = str;
    }

    public JDBCSessionIdManager(Server server, Random random) {
        super(random);
        this._sessionIds = new HashSet<>();
        this._sessionIdTable = "JettySessionIds";
        this._sessionTable = "JettySessions";
        this._sessionTableRowId = "rowId";
        this._scavengeIntervalMs = 600000L;
        this._server = server;
    }
}
