package org.eclipse.jetty.server.session;

import g2.p;
import j2.c;
import j2.h;
import j2.j;
import j2.k;
import j2.l;
import j2.m;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.eclipse.jetty.server.session.AbstractSessionManager;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractSession implements AbstractSessionManager.SessionIf {
    public static final Logger LOG = SessionHandler.LOG;
    private long _accessed;
    private final Map<String, Object> _attributes;
    private final String _clusterId;
    private long _cookieSet;
    private final long _created;
    private boolean _doInvalidate;
    private boolean _idChanged;
    private boolean _invalid;
    private long _lastAccessed;
    private final AbstractSessionManager _manager;
    private long _maxIdleMs;
    private boolean _newSession;
    private final String _nodeId;
    private int _requests;

    public AbstractSession(AbstractSessionManager abstractSessionManager, c cVar) {
        this._attributes = new HashMap();
        this._manager = abstractSessionManager;
        this._newSession = true;
        long jCurrentTimeMillis = System.currentTimeMillis();
        this._created = jCurrentTimeMillis;
        String strNewSessionId = abstractSessionManager._sessionIdManager.newSessionId(cVar, jCurrentTimeMillis);
        this._clusterId = strNewSessionId;
        String nodeId = abstractSessionManager._sessionIdManager.getNodeId(strNewSessionId, cVar);
        this._nodeId = nodeId;
        this._accessed = jCurrentTimeMillis;
        this._lastAccessed = jCurrentTimeMillis;
        this._requests = 1;
        int i4 = abstractSessionManager._dftMaxIdleSecs;
        this._maxIdleMs = i4 > 0 ? ((long) i4) * 1000 : -1L;
        Logger logger = LOG;
        if (logger.isDebugEnabled()) {
            logger.debug("new session & id " + nodeId + " " + strNewSessionId, new Object[0]);
        }
    }

    public boolean access(long j4) {
        synchronized (this) {
            if (this._invalid) {
                return false;
            }
            this._newSession = false;
            long j5 = this._accessed;
            this._lastAccessed = j5;
            this._accessed = j4;
            long j6 = this._maxIdleMs;
            if (j6 <= 0 || j5 <= 0 || j5 + j6 >= j4) {
                this._requests++;
                return true;
            }
            invalidate();
            return false;
        }
    }

    public void addAttributes(Map<String, Object> map) {
        this._attributes.putAll(map);
    }

    public void bindValue(String str, Object obj) {
        if (obj == null || !(obj instanceof k)) {
            return;
        }
        ((k) obj).valueBound(new j(this, str));
    }

    public void checkValid() {
        if (this._invalid) {
            throw new IllegalStateException();
        }
    }

    public void clearAttributes() {
        ArrayList<String> arrayList;
        Object objDoPutOrRemove;
        while (true) {
            Map<String, Object> map = this._attributes;
            if (map == null || map.size() <= 0) {
                break;
            }
            synchronized (this) {
                arrayList = new ArrayList(this._attributes.keySet());
            }
            for (String str : arrayList) {
                synchronized (this) {
                    objDoPutOrRemove = doPutOrRemove(str, null);
                }
                unbindValue(str, objDoPutOrRemove);
                this._manager.doSessionAttributeListeners(this, str, objDoPutOrRemove, null);
            }
        }
        Map<String, Object> map2 = this._attributes;
        if (map2 != null) {
            map2.clear();
        }
    }

    public void complete() {
        synchronized (this) {
            int i4 = this._requests - 1;
            this._requests = i4;
            if (this._doInvalidate && i4 <= 0) {
                doInvalidate();
            }
        }
    }

    public void cookieSet() {
        synchronized (this) {
            this._cookieSet = this._accessed;
        }
    }

    public void didActivate() {
        synchronized (this) {
            m mVar = new m(this);
            for (Object obj : this._attributes.values()) {
                if (obj instanceof h) {
                    ((h) obj).sessionDidActivate(mVar);
                }
            }
        }
    }

    public Object doGet(String str) {
        return this._attributes.get(str);
    }

    public void doInvalidate() {
        try {
            LOG.debug("invalidate {}", this._clusterId);
            if (isValid()) {
                clearAttributes();
            }
            synchronized (this) {
                this._invalid = true;
            }
        } catch (Throwable th) {
            synchronized (this) {
                this._invalid = true;
                throw th;
            }
        }
    }

    public Object doPutOrRemove(String str, Object obj) {
        return obj == null ? this._attributes.remove(str) : this._attributes.put(str, obj);
    }

    public long getAccessed() {
        long j4;
        synchronized (this) {
            j4 = this._accessed;
        }
        return j4;
    }

    @Override // org.eclipse.jetty.server.session.AbstractSessionManager.SessionIf, j2.g
    public Object getAttribute(String str) {
        Object obj;
        synchronized (this) {
            checkValid();
            obj = this._attributes.get(str);
        }
        return obj;
    }

    public Map<String, Object> getAttributeMap() {
        return this._attributes;
    }

    @Override // org.eclipse.jetty.server.session.AbstractSessionManager.SessionIf, j2.g
    public Enumeration<String> getAttributeNames() {
        Enumeration<String> enumeration;
        synchronized (this) {
            checkValid();
            enumeration = Collections.enumeration(this._attributes == null ? Collections.EMPTY_LIST : new ArrayList(this._attributes.keySet()));
        }
        return enumeration;
    }

    public int getAttributes() {
        int size;
        synchronized (this) {
            checkValid();
            size = this._attributes.size();
        }
        return size;
    }

    public String getClusterId() {
        return this._clusterId;
    }

    public long getCookieSetTime() {
        return this._cookieSet;
    }

    @Override // org.eclipse.jetty.server.session.AbstractSessionManager.SessionIf
    public long getCreationTime() {
        return this._created;
    }

    @Override // org.eclipse.jetty.server.session.AbstractSessionManager.SessionIf, j2.g
    public String getId() {
        return this._manager._nodeIdInSessionId ? this._nodeId : this._clusterId;
    }

    @Override // org.eclipse.jetty.server.session.AbstractSessionManager.SessionIf
    public long getLastAccessedTime() {
        checkValid();
        return this._lastAccessed;
    }

    @Override // org.eclipse.jetty.server.session.AbstractSessionManager.SessionIf
    public int getMaxInactiveInterval() {
        return (int) (this._maxIdleMs / 1000);
    }

    public Set<String> getNames() {
        HashSet hashSet;
        synchronized (this) {
            hashSet = new HashSet(this._attributes.keySet());
        }
        return hashSet;
    }

    public String getNodeId() {
        return this._nodeId;
    }

    public int getRequests() {
        int i4;
        synchronized (this) {
            i4 = this._requests;
        }
        return i4;
    }

    @Override // org.eclipse.jetty.server.session.AbstractSessionManager.SessionIf
    public p getServletContext() {
        return this._manager._context;
    }

    @Override // org.eclipse.jetty.server.session.AbstractSessionManager.SessionIf
    public AbstractSession getSession() {
        return this;
    }

    @Override // org.eclipse.jetty.server.session.AbstractSessionManager.SessionIf
    @Deprecated
    public l getSessionContext() {
        checkValid();
        return AbstractSessionManager.__nullSessionContext;
    }

    @Override // org.eclipse.jetty.server.session.AbstractSessionManager.SessionIf
    @Deprecated
    public Object getValue(String str) {
        return getAttribute(str);
    }

    @Override // org.eclipse.jetty.server.session.AbstractSessionManager.SessionIf
    @Deprecated
    public String[] getValueNames() {
        synchronized (this) {
            checkValid();
            Map<String, Object> map = this._attributes;
            if (map == null) {
                return new String[0];
            }
            return (String[]) this._attributes.keySet().toArray(new String[map.size()]);
        }
    }

    @Override // org.eclipse.jetty.server.session.AbstractSessionManager.SessionIf, j2.g
    public void invalidate() {
        this._manager.removeSession(this, true);
        doInvalidate();
    }

    public boolean isIdChanged() {
        return this._idChanged;
    }

    @Override // org.eclipse.jetty.server.session.AbstractSessionManager.SessionIf
    public boolean isNew() {
        checkValid();
        return this._newSession;
    }

    public boolean isValid() {
        return !this._invalid;
    }

    @Override // org.eclipse.jetty.server.session.AbstractSessionManager.SessionIf
    @Deprecated
    public void putValue(String str, Object obj) {
        setAttribute(str, obj);
    }

    @Override // org.eclipse.jetty.server.session.AbstractSessionManager.SessionIf, j2.g
    public void removeAttribute(String str) {
        setAttribute(str, null);
    }

    @Override // org.eclipse.jetty.server.session.AbstractSessionManager.SessionIf
    @Deprecated
    public void removeValue(String str) {
        removeAttribute(str);
    }

    @Override // org.eclipse.jetty.server.session.AbstractSessionManager.SessionIf, j2.g
    public void setAttribute(String str, Object obj) {
        Object objDoPutOrRemove;
        synchronized (this) {
            checkValid();
            objDoPutOrRemove = doPutOrRemove(str, obj);
        }
        if (obj == null || !obj.equals(objDoPutOrRemove)) {
            if (objDoPutOrRemove != null) {
                unbindValue(str, objDoPutOrRemove);
            }
            if (obj != null) {
                bindValue(str, obj);
            }
            this._manager.doSessionAttributeListeners(this, str, objDoPutOrRemove, obj);
        }
    }

    public void setIdChanged(boolean z3) {
        this._idChanged = z3;
    }

    public void setLastAccessedTime(long j4) {
        this._lastAccessed = j4;
    }

    @Override // org.eclipse.jetty.server.session.AbstractSessionManager.SessionIf
    public void setMaxInactiveInterval(int i4) {
        this._maxIdleMs = ((long) i4) * 1000;
    }

    public void setRequests(int i4) {
        synchronized (this) {
            this._requests = i4;
        }
    }

    public void timeout() {
        boolean z3 = true;
        this._manager.removeSession(this, true);
        synchronized (this) {
            if (this._invalid) {
                z3 = false;
            } else if (this._requests > 0) {
                this._doInvalidate = true;
                z3 = false;
            }
        }
        if (z3) {
            doInvalidate();
        }
    }

    public String toString() {
        return getClass().getName() + ":" + getId() + "@" + hashCode();
    }

    public void unbindValue(String str, Object obj) {
        if (obj == null || !(obj instanceof k)) {
            return;
        }
        ((k) obj).valueUnbound(new j(this, str));
    }

    public void willPassivate() {
        synchronized (this) {
            m mVar = new m(this);
            for (Object obj : this._attributes.values()) {
                if (obj instanceof h) {
                    ((h) obj).sessionWillPassivate(mVar);
                }
            }
        }
    }

    public AbstractSession(AbstractSessionManager abstractSessionManager, long j4, long j5, String str) {
        this._attributes = new HashMap();
        this._manager = abstractSessionManager;
        this._created = j4;
        this._clusterId = str;
        String nodeId = abstractSessionManager._sessionIdManager.getNodeId(str, null);
        this._nodeId = nodeId;
        this._accessed = j5;
        this._lastAccessed = j5;
        this._requests = 1;
        int i4 = abstractSessionManager._dftMaxIdleSecs;
        this._maxIdleMs = i4 > 0 ? ((long) i4) * 1000 : -1L;
        Logger logger = LOG;
        if (logger.isDebugEnabled()) {
            logger.debug("new session " + nodeId + " " + str, new Object[0]);
        }
    }
}
