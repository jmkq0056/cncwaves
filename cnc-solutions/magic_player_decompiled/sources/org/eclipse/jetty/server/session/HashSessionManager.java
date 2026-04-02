package org.eclipse.jetty.server.session;

import android.support.v4.media.f;
import j2.c;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.eclipse.jetty.server.handler.ContextHandler;
import org.eclipse.jetty.util.IO;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class HashSessionManager extends AbstractSessionManager {
    private static int __id;
    public static final Logger __log = SessionHandler.LOG;
    private TimerTask _saveTask;
    public File _storeDir;
    private TimerTask _task;
    private Timer _timer;
    public final ConcurrentMap<String, HashedSession> _sessions = new ConcurrentHashMap();
    private boolean _timerStop = false;
    public long _scavengePeriodMs = 30000;
    public long _savePeriodMs = 0;
    public long _idleSavePeriodMs = 0;
    private boolean _lazyLoad = false;
    private volatile boolean _sessionsLoaded = false;
    private boolean _deleteUnrestorableSessions = false;

    @Override // org.eclipse.jetty.server.session.AbstractSessionManager
    public void addSession(AbstractSession abstractSession) {
        if (isRunning()) {
            this._sessions.put(abstractSession.getClusterId(), (HashedSession) abstractSession);
        }
    }

    @Override // org.eclipse.jetty.server.session.AbstractSessionManager, org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStart() {
        super.doStart();
        this._timerStop = false;
        ContextHandler.Context currentContext = ContextHandler.getCurrentContext();
        if (currentContext != null) {
            this._timer = (Timer) currentContext.getAttribute("org.eclipse.jetty.server.session.timer");
        }
        if (this._timer == null) {
            this._timerStop = true;
            StringBuilder sbA = f.a("HashSessionScavenger-");
            int i4 = __id;
            __id = i4 + 1;
            sbA.append(i4);
            this._timer = new Timer(sbA.toString(), true);
        }
        setScavengePeriod(getScavengePeriod());
        File file = this._storeDir;
        if (file != null) {
            if (!file.exists()) {
                this._storeDir.mkdirs();
            }
            if (!this._lazyLoad) {
                restoreSessions();
            }
        }
        setSavePeriod(getSavePeriod());
    }

    @Override // org.eclipse.jetty.server.session.AbstractSessionManager, org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStop() {
        synchronized (this) {
            TimerTask timerTask = this._saveTask;
            if (timerTask != null) {
                timerTask.cancel();
            }
            this._saveTask = null;
            TimerTask timerTask2 = this._task;
            if (timerTask2 != null) {
                timerTask2.cancel();
            }
            this._task = null;
            Timer timer = this._timer;
            if (timer != null && this._timerStop) {
                timer.cancel();
            }
            this._timer = null;
        }
        super.doStop();
        this._sessions.clear();
    }

    public int getIdleSavePeriod() {
        long j4 = this._idleSavePeriodMs;
        if (j4 <= 0) {
            return 0;
        }
        return (int) (j4 / 1000);
    }

    public int getSavePeriod() {
        long j4 = this._savePeriodMs;
        if (j4 <= 0) {
            return 0;
        }
        return (int) (j4 / 1000);
    }

    public int getScavengePeriod() {
        return (int) (this._scavengePeriodMs / 1000);
    }

    @Override // org.eclipse.jetty.server.session.AbstractSessionManager
    public AbstractSession getSession(String str) {
        if (this._lazyLoad && !this._sessionsLoaded) {
            try {
                restoreSessions();
            } catch (Exception e4) {
                __log.warn(e4);
            }
        }
        ConcurrentMap<String, HashedSession> concurrentMap = this._sessions;
        if (concurrentMap == null) {
            return null;
        }
        HashedSession hashedSessionRestoreSession = concurrentMap.get(str);
        if (hashedSessionRestoreSession == null && this._lazyLoad) {
            hashedSessionRestoreSession = restoreSession(str);
        }
        if (hashedSessionRestoreSession == null) {
            return null;
        }
        if (this._idleSavePeriodMs != 0) {
            hashedSessionRestoreSession.deIdle();
        }
        return hashedSessionRestoreSession;
    }

    @Override // org.eclipse.jetty.server.session.AbstractSessionManager
    public int getSessions() {
        int sessions = super.getSessions();
        Logger logger = __log;
        if (logger.isDebugEnabled() && this._sessions.size() != sessions) {
            StringBuilder sbA = f.a("sessions: ");
            sbA.append(this._sessions.size());
            sbA.append("!=");
            sbA.append(sessions);
            logger.warn(sbA.toString(), new Object[0]);
        }
        return sessions;
    }

    public File getStoreDirectory() {
        return this._storeDir;
    }

    @Override // org.eclipse.jetty.server.session.AbstractSessionManager
    public void invalidateSessions() {
        File file;
        ArrayList<HashedSession> arrayList = new ArrayList(this._sessions.values());
        int i4 = 100;
        while (arrayList.size() > 0) {
            int i5 = i4 - 1;
            if (i4 <= 0) {
                return;
            }
            if (isStopping() && (file = this._storeDir) != null && file.exists() && this._storeDir.canWrite()) {
                for (HashedSession hashedSession : arrayList) {
                    hashedSession.save(false);
                    removeSession((AbstractSession) hashedSession, false);
                }
            } else {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((HashedSession) it.next()).invalidate();
                }
            }
            arrayList = new ArrayList(this._sessions.values());
            i4 = i5;
        }
    }

    public boolean isDeleteUnrestorableSessions() {
        return this._deleteUnrestorableSessions;
    }

    public boolean isLazyLoad() {
        return this._lazyLoad;
    }

    @Override // org.eclipse.jetty.server.session.AbstractSessionManager
    public AbstractSession newSession(c cVar) {
        return new HashedSession(this, cVar);
    }

    @Override // org.eclipse.jetty.server.session.AbstractSessionManager
    public boolean removeSession(String str) {
        return this._sessions.remove(str) != null;
    }

    public synchronized HashedSession restoreSession(String str) {
        FileInputStream fileInputStream;
        File file = new File(this._storeDir, str);
        FileInputStream fileInputStream2 = null;
        try {
        } catch (Exception e4) {
            e = e4;
            fileInputStream = null;
        } catch (Throwable th) {
            th = th;
        }
        if (!file.exists()) {
            file.delete();
            return null;
        }
        fileInputStream = new FileInputStream(file);
        try {
            HashedSession hashedSessionRestoreSession = restoreSession(fileInputStream, null);
            addSession(hashedSessionRestoreSession, false);
            hashedSessionRestoreSession.didActivate();
            IO.close((InputStream) fileInputStream);
            file.delete();
            return hashedSessionRestoreSession;
        } catch (Exception e5) {
            e = e5;
        } catch (Throwable th2) {
            th = th2;
            fileInputStream2 = fileInputStream;
            if (fileInputStream2 != null) {
                IO.close((InputStream) fileInputStream2);
            }
            file.delete();
            throw th;
        }
        if (fileInputStream != null) {
            IO.close((InputStream) fileInputStream);
        }
        if (isDeleteUnrestorableSessions() && file.exists() && file.getParentFile().equals(this._storeDir)) {
            file.delete();
            __log.warn("Deleting file for unrestorable session " + str, e);
        } else {
            __log.warn("Problem restoring session " + str, e);
        }
        return null;
    }

    public void restoreSessions() {
        this._sessionsLoaded = true;
        File file = this._storeDir;
        if (file == null || !file.exists()) {
            return;
        }
        if (!this._storeDir.canRead()) {
            Logger logger = __log;
            StringBuilder sbA = f.a("Unable to restore Sessions: Cannot read from Session storage directory ");
            sbA.append(this._storeDir.getAbsolutePath());
            logger.warn(sbA.toString(), new Object[0]);
            return;
        }
        String[] list = this._storeDir.list();
        for (int i4 = 0; list != null && i4 < list.length; i4++) {
            restoreSession(list[i4]);
        }
    }

    public void saveSessions(boolean z3) {
        File file = this._storeDir;
        if (file == null || !file.exists()) {
            return;
        }
        if (this._storeDir.canWrite()) {
            Iterator<HashedSession> it = this._sessions.values().iterator();
            while (it.hasNext()) {
                it.next().save(true);
            }
        } else {
            Logger logger = __log;
            StringBuilder sbA = f.a("Unable to save Sessions: Session persistence storage directory ");
            sbA.append(this._storeDir.getAbsolutePath());
            sbA.append(" is not writeable");
            logger.warn(sbA.toString(), new Object[0]);
        }
    }

    public void scavenge() {
        if (isStopping() || isStopped()) {
            return;
        }
        Thread threadCurrentThread = Thread.currentThread();
        ClassLoader contextClassLoader = threadCurrentThread.getContextClassLoader();
        try {
            ClassLoader classLoader = this._loader;
            if (classLoader != null) {
                threadCurrentThread.setContextClassLoader(classLoader);
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            for (HashedSession hashedSession : this._sessions.values()) {
                long maxInactiveInterval = ((long) hashedSession.getMaxInactiveInterval()) * 1000;
                if (maxInactiveInterval > 0 && hashedSession.getAccessed() + maxInactiveInterval < jCurrentTimeMillis) {
                    try {
                        hashedSession.timeout();
                    } catch (Exception e4) {
                        __log.warn("Problem scavenging sessions", e4);
                    }
                } else if (this._idleSavePeriodMs > 0 && hashedSession.getAccessed() + this._idleSavePeriodMs < jCurrentTimeMillis) {
                    try {
                        hashedSession.idle();
                    } catch (Exception e5) {
                        __log.warn("Problem idling session " + hashedSession.getId(), e5);
                    }
                }
            }
        } finally {
            threadCurrentThread.setContextClassLoader(contextClassLoader);
        }
    }

    public void setDeleteUnrestorableSessions(boolean z3) {
        this._deleteUnrestorableSessions = z3;
    }

    public void setIdleSavePeriod(int i4) {
        this._idleSavePeriodMs = ((long) i4) * 1000;
    }

    public void setLazyLoad(boolean z3) {
        this._lazyLoad = z3;
    }

    @Override // org.eclipse.jetty.server.session.AbstractSessionManager, org.eclipse.jetty.server.SessionManager
    public void setMaxInactiveInterval(int i4) {
        super.setMaxInactiveInterval(i4);
        int i5 = this._dftMaxIdleSecs;
        if (i5 <= 0 || this._scavengePeriodMs <= ((long) i5) * 1000) {
            return;
        }
        setScavengePeriod((i5 + 9) / 10);
    }

    public void setSavePeriod(int i4) {
        long j4 = ((long) i4) * 1000;
        if (j4 < 0) {
            j4 = 0;
        }
        this._savePeriodMs = j4;
        if (this._timer != null) {
            synchronized (this) {
                TimerTask timerTask = this._saveTask;
                if (timerTask != null) {
                    timerTask.cancel();
                }
                if (this._savePeriodMs > 0 && this._storeDir != null) {
                    TimerTask timerTask2 = new TimerTask() { // from class: org.eclipse.jetty.server.session.HashSessionManager.1
                        @Override // java.util.TimerTask, java.lang.Runnable
                        public void run() {
                            try {
                                HashSessionManager.this.saveSessions(true);
                            } catch (Exception e4) {
                                HashSessionManager.__log.warn(e4);
                            }
                        }
                    };
                    this._saveTask = timerTask2;
                    Timer timer = this._timer;
                    long j5 = this._savePeriodMs;
                    timer.schedule(timerTask2, j5, j5);
                }
            }
        }
    }

    public void setScavengePeriod(int i4) {
        if (i4 == 0) {
            i4 = 60;
        }
        long j4 = this._scavengePeriodMs;
        long j5 = ((long) i4) * 1000;
        if (j5 > 60000) {
            j5 = 60000;
        }
        long j6 = j5 >= 1000 ? j5 : 1000L;
        this._scavengePeriodMs = j6;
        if (this._timer != null) {
            if (j6 != j4 || this._task == null) {
                synchronized (this) {
                    TimerTask timerTask = this._task;
                    if (timerTask != null) {
                        timerTask.cancel();
                    }
                    TimerTask timerTask2 = new TimerTask() { // from class: org.eclipse.jetty.server.session.HashSessionManager.2
                        @Override // java.util.TimerTask, java.lang.Runnable
                        public void run() {
                            HashSessionManager.this.scavenge();
                        }
                    };
                    this._task = timerTask2;
                    Timer timer = this._timer;
                    long j7 = this._scavengePeriodMs;
                    timer.schedule(timerTask2, j7, j7);
                }
            }
        }
    }

    public void setStoreDirectory(File file) {
        this._storeDir = file.getCanonicalFile();
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

    public AbstractSession newSession(long j4, long j5, String str) {
        return new HashedSession(this, j4, j5, str);
    }

    public HashedSession restoreSession(InputStream inputStream, HashedSession hashedSession) {
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        try {
            String utf = dataInputStream.readUTF();
            dataInputStream.readUTF();
            long j4 = dataInputStream.readLong();
            long j5 = dataInputStream.readLong();
            int i4 = dataInputStream.readInt();
            if (hashedSession == null) {
                hashedSession = (HashedSession) newSession(j4, j5, utf);
            }
            hashedSession.setRequests(i4);
            int i5 = dataInputStream.readInt();
            if (i5 > 0) {
                ClassLoadingObjectInputStream classLoadingObjectInputStream = new ClassLoadingObjectInputStream(dataInputStream);
                for (int i6 = 0; i6 < i5; i6++) {
                    try {
                        hashedSession.setAttribute(classLoadingObjectInputStream.readUTF(), classLoadingObjectInputStream.readObject());
                    } finally {
                        IO.close((InputStream) classLoadingObjectInputStream);
                    }
                }
            }
            return hashedSession;
        } finally {
            IO.close((InputStream) dataInputStream);
        }
    }
}
