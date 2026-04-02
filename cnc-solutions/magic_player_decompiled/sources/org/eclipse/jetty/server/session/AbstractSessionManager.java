package org.eclipse.jetty.server.session;

import android.support.v4.media.b;
import android.support.v4.media.f;
import g2.h0;
import g2.i0;
import g2.p;
import j2.c;
import j2.g;
import j2.i;
import j2.j;
import j2.l;
import j2.m;
import j2.n;
import java.util.Arrays;
import java.util.Collections;
import java.util.Enumeration;
import java.util.EventListener;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import org.eclipse.jetty.http.HttpCookie;
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.server.SessionIdManager;
import org.eclipse.jetty.server.SessionManager;
import org.eclipse.jetty.server.handler.ContextHandler;
import org.eclipse.jetty.util.component.AbstractLifeCycle;
import org.eclipse.jetty.util.log.Logger;
import org.eclipse.jetty.util.statistic.CounterStatistic;
import org.eclipse.jetty.util.statistic.SampleStatistic;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractSessionManager extends AbstractLifeCycle implements SessionManager {
    public static final String SESSION_KNOWN_ONLY_TO_AUTHENTICATED = "org.eclipse.jetty.security.sessionKnownOnlytoAuthenticated";
    public static final int __distantFuture = 628992000;
    public static final Logger __log = SessionHandler.LOG;
    public static final l __nullSessionContext = new l() { // from class: org.eclipse.jetty.server.session.AbstractSessionManager.1
        public Enumeration getIds() {
            return Collections.enumeration(Collections.EMPTY_LIST);
        }

        public g getSession(String str) {
            return null;
        }
    };
    public boolean _checkingRemoteSessionIdEncoding;
    public ContextHandler.Context _context;
    public ClassLoader _loader;
    public boolean _nodeIdInSessionId;
    public int _refreshCookieAge;
    public String _sessionComment;
    public String _sessionDomain;
    public SessionHandler _sessionHandler;
    public SessionIdManager _sessionIdManager;
    public String _sessionPath;
    public Set<i0> _sessionTrackingModes;
    private boolean _usingURLs;
    public Set<i0> __defaultSessionTrackingModes = Collections.unmodifiableSet(new HashSet(Arrays.asList(i0.COOKIE, i0.URL)));
    private boolean _usingCookies = true;
    public int _dftMaxIdleSecs = -1;
    public boolean _httpOnly = false;
    public boolean _secureCookies = false;
    public boolean _secureRequestOnly = true;
    public final List<i> _sessionAttributeListeners = new CopyOnWriteArrayList();
    public final List<n> _sessionListeners = new CopyOnWriteArrayList();
    public String _sessionCookie = SessionManager.__DefaultSessionCookie;
    public String _sessionIdPathParameterName = SessionManager.__DefaultSessionIdPathParameterName;
    public String _sessionIdPathParameterNamePrefix = b.a(f.a(";"), this._sessionIdPathParameterName, "=");
    public int _maxCookieAge = -1;
    public final CounterStatistic _sessionsStats = new CounterStatistic();
    public final SampleStatistic _sessionTimeStats = new SampleStatistic();
    private h0 _cookieConfig = new h0() { // from class: org.eclipse.jetty.server.session.AbstractSessionManager.2
        public String getComment() {
            return AbstractSessionManager.this._sessionComment;
        }

        public String getDomain() {
            return AbstractSessionManager.this._sessionDomain;
        }

        @Override // g2.h0
        public int getMaxAge() {
            return AbstractSessionManager.this._maxCookieAge;
        }

        @Override // g2.h0
        public String getName() {
            return AbstractSessionManager.this._sessionCookie;
        }

        public String getPath() {
            return AbstractSessionManager.this._sessionPath;
        }

        @Override // g2.h0
        public boolean isHttpOnly() {
            return AbstractSessionManager.this._httpOnly;
        }

        @Override // g2.h0
        public boolean isSecure() {
            return AbstractSessionManager.this._secureCookies;
        }

        public void setComment(String str) {
            AbstractSessionManager.this._sessionComment = str;
        }

        public void setDomain(String str) {
            AbstractSessionManager.this._sessionDomain = str;
        }

        public void setHttpOnly(boolean z3) {
            AbstractSessionManager.this._httpOnly = z3;
        }

        public void setMaxAge(int i4) {
            AbstractSessionManager.this._maxCookieAge = i4;
        }

        public void setName(String str) {
            AbstractSessionManager.this._sessionCookie = str;
        }

        public void setPath(String str) {
            AbstractSessionManager.this._sessionPath = str;
        }

        public void setSecure(boolean z3) {
            AbstractSessionManager.this._secureCookies = z3;
        }
    };

    public interface SessionIf extends g {
        @Override // j2.g
        /* synthetic */ Object getAttribute(String str);

        @Override // j2.g
        /* synthetic */ Enumeration<String> getAttributeNames();

        /* synthetic */ long getCreationTime();

        @Override // j2.g
        /* synthetic */ String getId();

        /* synthetic */ long getLastAccessedTime();

        /* synthetic */ int getMaxInactiveInterval();

        /* synthetic */ p getServletContext();

        AbstractSession getSession();

        /* synthetic */ l getSessionContext();

        /* synthetic */ Object getValue(String str);

        /* synthetic */ String[] getValueNames();

        @Override // j2.g
        /* synthetic */ void invalidate();

        /* synthetic */ boolean isNew();

        /* synthetic */ void putValue(String str, Object obj);

        @Override // j2.g
        /* synthetic */ void removeAttribute(String str);

        /* synthetic */ void removeValue(String str);

        @Override // j2.g
        /* synthetic */ void setAttribute(String str, Object obj);

        /* synthetic */ void setMaxInactiveInterval(int i4);
    }

    public AbstractSessionManager() {
        setSessionTrackingModes(this.__defaultSessionTrackingModes);
    }

    public static g renewSession(c cVar, g gVar, boolean z3) {
        HashMap map = new HashMap();
        Enumeration<String> attributeNames = gVar.getAttributeNames();
        while (attributeNames.hasMoreElements()) {
            String strNextElement = attributeNames.nextElement();
            map.put(strNextElement, gVar.getAttribute(strNextElement));
            gVar.removeAttribute(strNextElement);
        }
        gVar.invalidate();
        g session = cVar.getSession(true);
        if (z3) {
            session.setAttribute(SESSION_KNOWN_ONLY_TO_AUTHENTICATED, Boolean.TRUE);
        }
        for (Map.Entry entry : map.entrySet()) {
            session.setAttribute((String) entry.getKey(), entry.getValue());
        }
        return session;
    }

    @Override // org.eclipse.jetty.server.SessionManager
    public HttpCookie access(g gVar, boolean z3) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        AbstractSession session = ((SessionIf) gVar).getSession();
        if (!session.access(jCurrentTimeMillis) || !isUsingCookies()) {
            return null;
        }
        if (!session.isIdChanged() && (getSessionCookieConfig().getMaxAge() <= 0 || getRefreshCookieAge() <= 0 || (jCurrentTimeMillis - session.getCookieSetTime()) / 1000 <= getRefreshCookieAge())) {
            return null;
        }
        ContextHandler.Context context = this._context;
        HttpCookie sessionCookie = getSessionCookie(gVar, context == null ? "/" : context.getContextPath(), z3);
        session.cookieSet();
        session.setIdChanged(false);
        return sessionCookie;
    }

    @Override // org.eclipse.jetty.server.SessionManager
    public void addEventListener(EventListener eventListener) {
        if (eventListener instanceof i) {
            this._sessionAttributeListeners.add((i) eventListener);
        }
        if (eventListener instanceof n) {
            this._sessionListeners.add((n) eventListener);
        }
    }

    public abstract void addSession(AbstractSession abstractSession);

    public void addSession(AbstractSession abstractSession, boolean z3) {
        synchronized (this._sessionIdManager) {
            this._sessionIdManager.addSession(abstractSession);
            addSession(abstractSession);
        }
        if (z3) {
            this._sessionsStats.increment();
            if (this._sessionListeners != null) {
                m mVar = new m(abstractSession);
                Iterator<n> it = this._sessionListeners.iterator();
                while (it.hasNext()) {
                    it.next().sessionCreated(mVar);
                }
            }
        }
    }

    @Override // org.eclipse.jetty.server.SessionManager
    public void clearEventListeners() {
        this._sessionAttributeListeners.clear();
        this._sessionListeners.clear();
    }

    @Override // org.eclipse.jetty.server.SessionManager
    public void complete(g gVar) {
        ((SessionIf) gVar).getSession().complete();
    }

    public void doSessionAttributeListeners(AbstractSession abstractSession, String str, Object obj, Object obj2) {
        if (this._sessionAttributeListeners.isEmpty()) {
            return;
        }
        j jVar = new j(abstractSession, str, obj == null ? obj2 : obj);
        for (i iVar : this._sessionAttributeListeners) {
            if (obj == null) {
                iVar.i(jVar);
            } else if (obj2 == null) {
                iVar.f(jVar);
            } else {
                iVar.c(jVar);
            }
        }
    }

    @Override // org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStart() {
        String initParameter;
        this._context = ContextHandler.getCurrentContext();
        this._loader = Thread.currentThread().getContextClassLoader();
        if (this._sessionIdManager == null) {
            Server server = getSessionHandler().getServer();
            synchronized (server) {
                SessionIdManager sessionIdManager = server.getSessionIdManager();
                this._sessionIdManager = sessionIdManager;
                if (sessionIdManager == null) {
                    HashSessionIdManager hashSessionIdManager = new HashSessionIdManager();
                    this._sessionIdManager = hashSessionIdManager;
                    server.setSessionIdManager(hashSessionIdManager);
                }
            }
        }
        if (!this._sessionIdManager.isStarted()) {
            this._sessionIdManager.start();
        }
        ContextHandler.Context context = this._context;
        if (context != null) {
            String initParameter2 = context.getInitParameter(SessionManager.__SessionCookieProperty);
            if (initParameter2 != null) {
                this._sessionCookie = initParameter2;
            }
            String initParameter3 = this._context.getInitParameter(SessionManager.__SessionIdPathParameterNameProperty);
            if (initParameter3 != null) {
                setSessionIdPathParameterName(initParameter3);
            }
            if (this._maxCookieAge == -1 && (initParameter = this._context.getInitParameter(SessionManager.__MaxAgeProperty)) != null) {
                this._maxCookieAge = Integer.parseInt(initParameter.trim());
            }
            if (this._sessionDomain == null) {
                this._sessionDomain = this._context.getInitParameter(SessionManager.__SessionDomainProperty);
            }
            if (this._sessionPath == null) {
                this._sessionPath = this._context.getInitParameter(SessionManager.__SessionPathProperty);
            }
            String initParameter4 = this._context.getInitParameter(SessionManager.__CheckRemoteSessionEncoding);
            if (initParameter4 != null) {
                this._checkingRemoteSessionIdEncoding = Boolean.parseBoolean(initParameter4);
            }
        }
        super.doStart();
    }

    @Override // org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStop() {
        super.doStop();
        invalidateSessions();
        this._loader = null;
    }

    @Override // org.eclipse.jetty.server.SessionManager
    public String getClusterId(g gVar) {
        return ((SessionIf) gVar).getSession().getClusterId();
    }

    public ContextHandler.Context getContext() {
        return this._context;
    }

    public ContextHandler getContextHandler() {
        return this._context.getContextHandler();
    }

    @Override // org.eclipse.jetty.server.SessionManager
    public Set<i0> getDefaultSessionTrackingModes() {
        return this.__defaultSessionTrackingModes;
    }

    @Override // org.eclipse.jetty.server.SessionManager
    public Set<i0> getEffectiveSessionTrackingModes() {
        return Collections.unmodifiableSet(this._sessionTrackingModes);
    }

    @Override // org.eclipse.jetty.server.SessionManager
    public boolean getHttpOnly() {
        return this._httpOnly;
    }

    @Override // org.eclipse.jetty.server.SessionManager
    public g getHttpSession(String str) {
        AbstractSession session = getSession(getSessionIdManager().getClusterId(str));
        if (session != null && !session.getNodeId().equals(str)) {
            session.setIdChanged(true);
        }
        return session;
    }

    public SessionIdManager getIdManager() {
        return getSessionIdManager();
    }

    public int getMaxCookieAge() {
        return this._maxCookieAge;
    }

    @Override // org.eclipse.jetty.server.SessionManager
    public int getMaxInactiveInterval() {
        return this._dftMaxIdleSecs;
    }

    @Deprecated
    public int getMaxSessions() {
        return getSessionsMax();
    }

    @Override // org.eclipse.jetty.server.SessionManager
    @Deprecated
    public SessionIdManager getMetaManager() {
        return getSessionIdManager();
    }

    @Deprecated
    public int getMinSessions() {
        return 0;
    }

    @Override // org.eclipse.jetty.server.SessionManager
    public String getNodeId(g gVar) {
        return ((SessionIf) gVar).getSession().getNodeId();
    }

    public int getRefreshCookieAge() {
        return this._refreshCookieAge;
    }

    public boolean getSecureCookies() {
        return this._secureCookies;
    }

    public abstract AbstractSession getSession(String str);

    public String getSessionCookie() {
        return this._sessionCookie;
    }

    @Override // org.eclipse.jetty.server.SessionManager
    public h0 getSessionCookieConfig() {
        return this._cookieConfig;
    }

    public String getSessionDomain() {
        return this._sessionDomain;
    }

    public SessionHandler getSessionHandler() {
        return this._sessionHandler;
    }

    @Override // org.eclipse.jetty.server.SessionManager
    public SessionIdManager getSessionIdManager() {
        return this._sessionIdManager;
    }

    @Override // org.eclipse.jetty.server.SessionManager
    public String getSessionIdPathParameterName() {
        return this._sessionIdPathParameterName;
    }

    @Override // org.eclipse.jetty.server.SessionManager
    public String getSessionIdPathParameterNamePrefix() {
        return this._sessionIdPathParameterNamePrefix;
    }

    public Map getSessionMap() {
        throw new UnsupportedOperationException();
    }

    public String getSessionPath() {
        return this._sessionPath;
    }

    public long getSessionTimeMax() {
        return this._sessionTimeStats.getMax();
    }

    public double getSessionTimeMean() {
        return this._sessionTimeStats.getMean();
    }

    public double getSessionTimeStdDev() {
        return this._sessionTimeStats.getStdDev();
    }

    public long getSessionTimeTotal() {
        return this._sessionTimeStats.getTotal();
    }

    public int getSessions() {
        return (int) this._sessionsStats.getCurrent();
    }

    public int getSessionsMax() {
        return (int) this._sessionsStats.getMax();
    }

    public int getSessionsTotal() {
        return (int) this._sessionsStats.getTotal();
    }

    public abstract void invalidateSessions();

    @Override // org.eclipse.jetty.server.SessionManager
    public boolean isCheckingRemoteSessionIdEncoding() {
        return this._checkingRemoteSessionIdEncoding;
    }

    public boolean isNodeIdInSessionId() {
        return this._nodeIdInSessionId;
    }

    public boolean isSecureRequestOnly() {
        return this._secureRequestOnly;
    }

    @Override // org.eclipse.jetty.server.SessionManager
    public boolean isUsingCookies() {
        return this._usingCookies;
    }

    @Override // org.eclipse.jetty.server.SessionManager
    public boolean isUsingURLs() {
        return this._usingURLs;
    }

    @Override // org.eclipse.jetty.server.SessionManager
    public boolean isValid(g gVar) {
        return ((SessionIf) gVar).getSession().isValid();
    }

    @Override // org.eclipse.jetty.server.SessionManager
    public g newHttpSession(c cVar) {
        AbstractSession abstractSessionNewSession = newSession(cVar);
        abstractSessionNewSession.setMaxInactiveInterval(this._dftMaxIdleSecs);
        addSession(abstractSessionNewSession, true);
        return abstractSessionNewSession;
    }

    public abstract AbstractSession newSession(c cVar);

    @Override // org.eclipse.jetty.server.SessionManager
    public void removeEventListener(EventListener eventListener) {
        if (eventListener instanceof i) {
            this._sessionAttributeListeners.remove(eventListener);
        }
        if (eventListener instanceof n) {
            this._sessionListeners.remove(eventListener);
        }
    }

    public void removeSession(g gVar, boolean z3) {
        removeSession(((SessionIf) gVar).getSession(), z3);
    }

    public abstract boolean removeSession(String str);

    @Deprecated
    public void resetStats() {
        statsReset();
    }

    @Override // org.eclipse.jetty.server.SessionManager
    public void setCheckingRemoteSessionIdEncoding(boolean z3) {
        this._checkingRemoteSessionIdEncoding = z3;
    }

    public void setHttpOnly(boolean z3) {
        this._httpOnly = z3;
    }

    public void setIdManager(SessionIdManager sessionIdManager) {
        setSessionIdManager(sessionIdManager);
    }

    @Override // org.eclipse.jetty.server.SessionManager
    public void setMaxInactiveInterval(int i4) {
        this._dftMaxIdleSecs = i4;
    }

    public void setNodeIdInSessionId(boolean z3) {
        this._nodeIdInSessionId = z3;
    }

    public void setRefreshCookieAge(int i4) {
        this._refreshCookieAge = i4;
    }

    public void setSecureRequestOnly(boolean z3) {
        this._secureRequestOnly = z3;
    }

    public void setSessionCookie(String str) {
        this._sessionCookie = str;
    }

    @Override // org.eclipse.jetty.server.SessionManager
    public void setSessionHandler(SessionHandler sessionHandler) {
        this._sessionHandler = sessionHandler;
    }

    @Override // org.eclipse.jetty.server.SessionManager
    public void setSessionIdManager(SessionIdManager sessionIdManager) {
        this._sessionIdManager = sessionIdManager;
    }

    @Override // org.eclipse.jetty.server.SessionManager
    public void setSessionIdPathParameterName(String str) {
        String strA = null;
        this._sessionIdPathParameterName = (str == null || "none".equals(str)) ? null : str;
        if (str != null && !"none".equals(str)) {
            strA = b.a(f.a(";"), this._sessionIdPathParameterName, "=");
        }
        this._sessionIdPathParameterNamePrefix = strA;
    }

    @Override // org.eclipse.jetty.server.SessionManager
    public void setSessionTrackingModes(Set<i0> set) {
        HashSet hashSet = new HashSet(set);
        this._sessionTrackingModes = hashSet;
        this._usingCookies = hashSet.contains(i0.COOKIE);
        this._usingURLs = this._sessionTrackingModes.contains(i0.URL);
    }

    public void setUsingCookies(boolean z3) {
        this._usingCookies = z3;
    }

    public void statsReset() {
        this._sessionsStats.reset(getSessions());
        this._sessionTimeStats.reset();
    }

    @Override // org.eclipse.jetty.server.SessionManager
    public HttpCookie getSessionCookie(g gVar, String str, boolean z3) {
        HttpCookie httpCookie;
        if (!isUsingCookies()) {
            return null;
        }
        String str2 = this._sessionPath;
        if (str2 != null) {
            str = str2;
        }
        if (str == null || str.length() == 0) {
            str = "/";
        }
        String str3 = str;
        String nodeId = getNodeId(gVar);
        if (this._sessionComment == null) {
            httpCookie = new HttpCookie(this._sessionCookie, nodeId, this._sessionDomain, str3, this._cookieConfig.getMaxAge(), this._cookieConfig.isHttpOnly(), this._cookieConfig.isSecure() || (isSecureRequestOnly() && z3));
        } else {
            httpCookie = new HttpCookie(this._sessionCookie, nodeId, this._sessionDomain, str3, this._cookieConfig.getMaxAge(), this._cookieConfig.isHttpOnly(), this._cookieConfig.isSecure() || (isSecureRequestOnly() && z3), this._sessionComment, 1);
        }
        return httpCookie;
    }

    public void removeSession(AbstractSession abstractSession, boolean z3) {
        if (removeSession(abstractSession.getClusterId())) {
            this._sessionsStats.decrement();
            SampleStatistic sampleStatistic = this._sessionTimeStats;
            double dCurrentTimeMillis = System.currentTimeMillis() - abstractSession.getCreationTime();
            Double.isNaN(dCurrentTimeMillis);
            sampleStatistic.set(Math.round(dCurrentTimeMillis / 1000.0d));
            this._sessionIdManager.removeSession(abstractSession);
            if (z3) {
                this._sessionIdManager.invalidateAll(abstractSession.getClusterId());
            }
            if (!z3 || this._sessionListeners == null) {
                return;
            }
            m mVar = new m(abstractSession);
            Iterator<n> it = this._sessionListeners.iterator();
            while (it.hasNext()) {
                it.next().sessionDestroyed(mVar);
            }
        }
    }
}
