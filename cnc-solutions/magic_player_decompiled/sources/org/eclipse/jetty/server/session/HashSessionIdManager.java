package org.eclipse.jetty.server.session;

import j2.c;
import j2.g;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class HashSessionIdManager extends AbstractSessionIdManager {
    private final Map<String, Set<WeakReference<g>>> _sessions;

    public HashSessionIdManager() {
        this._sessions = new HashMap();
    }

    @Override // org.eclipse.jetty.server.SessionIdManager
    public void addSession(g gVar) {
        String clusterId = getClusterId(gVar.getId());
        WeakReference<g> weakReference = new WeakReference<>(gVar);
        synchronized (this) {
            Set<WeakReference<g>> hashSet = this._sessions.get(clusterId);
            if (hashSet == null) {
                hashSet = new HashSet<>();
                this._sessions.put(clusterId, hashSet);
            }
            hashSet.add(weakReference);
        }
    }

    @Override // org.eclipse.jetty.server.session.AbstractSessionIdManager, org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStart() {
        super.doStart();
    }

    @Override // org.eclipse.jetty.server.session.AbstractSessionIdManager, org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStop() {
        this._sessions.clear();
        super.doStop();
    }

    @Override // org.eclipse.jetty.server.SessionIdManager
    public String getClusterId(String str) {
        int iLastIndexOf = str.lastIndexOf(46);
        return iLastIndexOf > 0 ? str.substring(0, iLastIndexOf) : str;
    }

    @Override // org.eclipse.jetty.server.SessionIdManager
    public String getNodeId(String str, c cVar) {
        String str2 = cVar == null ? null : (String) cVar.getAttribute("org.eclipse.jetty.ajp.JVMRoute");
        if (str2 != null) {
            return str + '.' + str2;
        }
        if (this._workerName == null) {
            return str;
        }
        return str + '.' + this._workerName;
    }

    public Collection<g> getSession(String str) {
        ArrayList arrayList = new ArrayList();
        Set<WeakReference<g>> set = this._sessions.get(str);
        if (set != null) {
            Iterator<WeakReference<g>> it = set.iterator();
            while (it.hasNext()) {
                g gVar = it.next().get();
                if (gVar != null) {
                    arrayList.add(gVar);
                }
            }
        }
        return arrayList;
    }

    public Collection<String> getSessions() {
        return Collections.unmodifiableCollection(this._sessions.keySet());
    }

    @Override // org.eclipse.jetty.server.SessionIdManager
    public boolean idInUse(String str) {
        boolean zContainsKey;
        synchronized (this) {
            zContainsKey = this._sessions.containsKey(str);
        }
        return zContainsKey;
    }

    @Override // org.eclipse.jetty.server.SessionIdManager
    public void invalidateAll(String str) {
        Set<WeakReference<g>> setRemove;
        synchronized (this) {
            setRemove = this._sessions.remove(str);
        }
        if (setRemove != null) {
            Iterator<WeakReference<g>> it = setRemove.iterator();
            while (it.hasNext()) {
                AbstractSession abstractSession = (AbstractSession) it.next().get();
                if (abstractSession != null && abstractSession.isValid()) {
                    abstractSession.invalidate();
                }
            }
            setRemove.clear();
        }
    }

    @Override // org.eclipse.jetty.server.SessionIdManager
    public void removeSession(g gVar) {
        String clusterId = getClusterId(gVar.getId());
        synchronized (this) {
            Set<WeakReference<g>> set = this._sessions.get(clusterId);
            if (set != null) {
                Iterator<WeakReference<g>> it = set.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    g gVar2 = it.next().get();
                    if (gVar2 == null) {
                        it.remove();
                    } else if (gVar2 == gVar) {
                        it.remove();
                        break;
                    }
                }
                if (set.isEmpty()) {
                    this._sessions.remove(clusterId);
                }
            }
        }
    }

    public HashSessionIdManager(Random random) {
        super(random);
        this._sessions = new HashMap();
    }
}
