package org.eclipse.jetty.server.session;

import j2.c;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.util.Enumeration;
import org.eclipse.jetty.util.IO;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class HashedSession extends AbstractSession {
    private static final Logger LOG = Log.getLogger((Class<?>) HashedSession.class);
    private final HashSessionManager _hashSessionManager;
    private transient boolean _idled;
    private transient boolean _saveFailed;

    public HashedSession(HashSessionManager hashSessionManager, c cVar) {
        super(hashSessionManager, cVar);
        this._idled = false;
        this._saveFailed = false;
        this._hashSessionManager = hashSessionManager;
    }

    @Override // org.eclipse.jetty.server.session.AbstractSession
    public void checkValid() {
        if (this._hashSessionManager._idleSavePeriodMs != 0) {
            deIdle();
        }
        super.checkValid();
    }

    public synchronized void deIdle() {
        FileInputStream fileInputStream;
        Exception e4;
        if (isIdled()) {
            access(System.currentTimeMillis());
            Logger logger = LOG;
            if (logger.isDebugEnabled()) {
                logger.debug("De-idling " + super.getId(), new Object[0]);
            }
            try {
                File file = new File(this._hashSessionManager._storeDir, super.getId());
                if (!file.exists() || !file.canRead()) {
                    throw new FileNotFoundException(file.getName());
                }
                fileInputStream = new FileInputStream(file);
                try {
                    this._idled = false;
                    this._hashSessionManager.restoreSession(fileInputStream, this);
                    IO.close((InputStream) fileInputStream);
                    didActivate();
                    if (this._hashSessionManager._savePeriodMs == 0) {
                        file.delete();
                    }
                } catch (Exception e5) {
                    e4 = e5;
                    LOG.warn("Problem de-idling session " + super.getId(), e4);
                    if (fileInputStream != null) {
                        IO.close((InputStream) fileInputStream);
                    }
                    invalidate();
                }
            } catch (Exception e6) {
                fileInputStream = null;
                e4 = e6;
            }
        }
    }

    @Override // org.eclipse.jetty.server.session.AbstractSession
    public void doInvalidate() {
        super.doInvalidate();
        if (this._hashSessionManager._storeDir == null || getId() == null) {
            return;
        }
        new File(this._hashSessionManager._storeDir, getId()).delete();
    }

    public synchronized void idle() {
        save(false);
        this._idled = true;
    }

    public synchronized boolean isIdled() {
        return this._idled;
    }

    public synchronized boolean isSaveFailed() {
        return this._saveFailed;
    }

    public synchronized void save(boolean z3) {
        File file;
        FileOutputStream fileOutputStream;
        if (!isIdled() && !this._saveFailed) {
            Logger logger = LOG;
            if (logger.isDebugEnabled()) {
                logger.debug("Saving {} {}", super.getId(), Boolean.valueOf(z3));
            }
            FileOutputStream fileOutputStream2 = null;
            try {
                file = new File(this._hashSessionManager._storeDir, super.getId());
                try {
                    if (file.exists()) {
                        file.delete();
                    }
                    file.createNewFile();
                    fileOutputStream = new FileOutputStream(file);
                } catch (Exception e4) {
                    e = e4;
                }
            } catch (Exception e5) {
                e = e5;
                file = null;
            }
            try {
                willPassivate();
                save(fileOutputStream);
                IO.close((OutputStream) fileOutputStream);
                if (z3) {
                    didActivate();
                } else {
                    clearAttributes();
                }
            } catch (Exception e6) {
                e = e6;
                fileOutputStream2 = fileOutputStream;
                saveFailed();
                if (fileOutputStream2 != null) {
                    IO.close((OutputStream) fileOutputStream2);
                }
                if (file != null) {
                    file.delete();
                }
                throw e;
            }
        }
    }

    public synchronized void saveFailed() {
        this._saveFailed = true;
    }

    @Override // org.eclipse.jetty.server.session.AbstractSession, org.eclipse.jetty.server.session.AbstractSessionManager.SessionIf
    public void setMaxInactiveInterval(int i4) {
        super.setMaxInactiveInterval(i4);
        if (getMaxInactiveInterval() > 0) {
            long maxInactiveInterval = (((long) getMaxInactiveInterval()) * 1000) / 10;
            HashSessionManager hashSessionManager = this._hashSessionManager;
            if (maxInactiveInterval < hashSessionManager._scavengePeriodMs) {
                hashSessionManager.setScavengePeriod((i4 + 9) / 10);
            }
        }
    }

    public HashedSession(HashSessionManager hashSessionManager, long j4, long j5, String str) {
        super(hashSessionManager, j4, j5, str);
        this._idled = false;
        this._saveFailed = false;
        this._hashSessionManager = hashSessionManager;
    }

    public synchronized void save(OutputStream outputStream) {
        DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
        dataOutputStream.writeUTF(getClusterId());
        dataOutputStream.writeUTF(getNodeId());
        dataOutputStream.writeLong(getCreationTime());
        dataOutputStream.writeLong(getAccessed());
        dataOutputStream.writeInt(getRequests());
        dataOutputStream.writeInt(getAttributes());
        ObjectOutputStream objectOutputStream = new ObjectOutputStream(dataOutputStream);
        Enumeration<String> attributeNames = getAttributeNames();
        while (attributeNames.hasMoreElements()) {
            String strNextElement = attributeNames.nextElement();
            objectOutputStream.writeUTF(strNextElement);
            objectOutputStream.writeObject(doGet(strNextElement));
        }
        objectOutputStream.close();
    }
}
