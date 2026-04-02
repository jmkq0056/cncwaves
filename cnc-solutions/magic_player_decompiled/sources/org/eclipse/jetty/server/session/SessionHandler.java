package org.eclipse.jetty.server.session;

import g2.d;
import g2.i0;
import j2.a;
import j2.c;
import j2.e;
import j2.g;
import java.util.EnumSet;
import java.util.EventListener;
import org.eclipse.jetty.http.HttpCookie;
import org.eclipse.jetty.server.Handler;
import org.eclipse.jetty.server.Request;
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.server.SessionManager;
import org.eclipse.jetty.server.handler.ScopedHandler;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class SessionHandler extends ScopedHandler {
    private SessionManager _sessionManager;
    public static final Logger LOG = Log.getLogger("org.eclipse.jetty.server.session");
    public static final EnumSet<i0> DEFAULT_TRACKING = EnumSet.of(i0.COOKIE, i0.URL);

    public SessionHandler() {
        this(new HashSessionManager());
    }

    public void addEventListener(EventListener eventListener) {
        SessionManager sessionManager = this._sessionManager;
        if (sessionManager != null) {
            sessionManager.addEventListener(eventListener);
        }
    }

    public void checkRequestedSessionId(Request request, c cVar) {
        boolean z3;
        int iIndexOf;
        char cCharAt;
        a[] cookies;
        String requestedSessionId = cVar.getRequestedSessionId();
        SessionManager sessionManager = getSessionManager();
        if (requestedSessionId != null && sessionManager != null) {
            g httpSession = sessionManager.getHttpSession(requestedSessionId);
            if (httpSession == null || !sessionManager.isValid(httpSession)) {
                return;
            }
            request.setSession(httpSession);
            return;
        }
        if (d.REQUEST.equals(request.getDispatcherType())) {
            g httpSession2 = null;
            if (!this._sessionManager.isUsingCookies() || (cookies = cVar.getCookies()) == null || cookies.length <= 0) {
                z3 = false;
            } else {
                String name = sessionManager.getSessionCookieConfig().getName();
                int i4 = 0;
                z3 = false;
                while (true) {
                    if (i4 >= cookies.length) {
                        break;
                    }
                    if (name.equalsIgnoreCase(cookies[i4].f2016a)) {
                        requestedSessionId = cookies[i4].f2017b;
                        Logger logger = LOG;
                        logger.debug("Got Session ID {} from cookie", requestedSessionId);
                        if (requestedSessionId != null) {
                            httpSession2 = sessionManager.getHttpSession(requestedSessionId);
                            if (httpSession2 != null && sessionManager.isValid(httpSession2)) {
                                z3 = true;
                                break;
                            }
                        } else {
                            logger.warn("null session id from cookie", new Object[0]);
                        }
                        z3 = true;
                    }
                    i4++;
                }
            }
            if (requestedSessionId == null || httpSession2 == null) {
                String requestURI = cVar.getRequestURI();
                String sessionIdPathParameterNamePrefix = sessionManager.getSessionIdPathParameterNamePrefix();
                if (sessionIdPathParameterNamePrefix != null && (iIndexOf = requestURI.indexOf(sessionIdPathParameterNamePrefix)) >= 0) {
                    int length = sessionIdPathParameterNamePrefix.length() + iIndexOf;
                    int i5 = length;
                    while (i5 < requestURI.length() && (cCharAt = requestURI.charAt(i5)) != ';' && cCharAt != '#' && cCharAt != '?' && cCharAt != '/') {
                        i5++;
                    }
                    requestedSessionId = requestURI.substring(length, i5);
                    httpSession2 = sessionManager.getHttpSession(requestedSessionId);
                    Logger logger2 = LOG;
                    if (logger2.isDebugEnabled()) {
                        logger2.debug("Got Session ID {} from URL", requestedSessionId);
                    }
                    z3 = false;
                }
            }
            request.setRequestedSessionId(requestedSessionId);
            request.setRequestedSessionIdFromCookie(requestedSessionId != null && z3);
            if (httpSession2 == null || !sessionManager.isValid(httpSession2)) {
                return;
            }
            request.setSession(httpSession2);
        }
    }

    public void clearEventListeners() {
        SessionManager sessionManager = this._sessionManager;
        if (sessionManager != null) {
            sessionManager.clearEventListeners();
        }
    }

    @Override // org.eclipse.jetty.server.handler.ScopedHandler
    public void doHandle(String str, Request request, c cVar, e eVar) {
        if (never()) {
            nextHandle(str, request, cVar, eVar);
            return;
        }
        ScopedHandler scopedHandler = this._nextScope;
        if (scopedHandler != null && scopedHandler == this._handler) {
            scopedHandler.doHandle(str, request, cVar, eVar);
            return;
        }
        Handler handler = this._handler;
        if (handler != null) {
            handler.handle(str, request, cVar, eVar);
        }
    }

    @Override // org.eclipse.jetty.server.handler.ScopedHandler
    public void doScope(String str, Request request, c cVar, e eVar) throws Throwable {
        SessionManager sessionManager;
        g session;
        g session2;
        g gVar = null;
        try {
            sessionManager = request.getSessionManager();
            try {
                session = request.getSession(false);
                try {
                    SessionManager sessionManager2 = this._sessionManager;
                    if (sessionManager != sessionManager2) {
                        request.setSessionManager(sessionManager2);
                        request.setSession(null);
                        checkRequestedSessionId(request, cVar);
                    }
                    if (this._sessionManager != null) {
                        session2 = request.getSession(false);
                        if (session2 == null) {
                            session2 = request.recoverNewSession(this._sessionManager);
                            if (session2 != null) {
                                request.setSession(session2);
                            }
                        } else if (session2 != session) {
                            try {
                                HttpCookie httpCookieAccess = this._sessionManager.access(session2, cVar.isSecure());
                                if (httpCookieAccess != null) {
                                    request.getResponse().addCookie(httpCookieAccess);
                                }
                                gVar = session2;
                            } catch (Throwable th) {
                                th = th;
                                gVar = session2;
                                if (gVar != null) {
                                    this._sessionManager.complete(gVar);
                                }
                                g session3 = request.getSession(false);
                                if (session3 != null && session == null && session3 != gVar) {
                                    this._sessionManager.complete(session3);
                                }
                                if (sessionManager != null && sessionManager != this._sessionManager) {
                                    request.setSessionManager(sessionManager);
                                    request.setSession(session);
                                }
                                throw th;
                            }
                        }
                        g gVar2 = session2;
                        session2 = null;
                        gVar = gVar2;
                    } else {
                        session2 = null;
                    }
                    Logger logger = LOG;
                    if (logger.isDebugEnabled()) {
                        logger.debug("sessionManager=" + this._sessionManager, new Object[0]);
                        logger.debug("session=" + gVar, new Object[0]);
                    }
                    ScopedHandler scopedHandler = this._nextScope;
                    if (scopedHandler != null) {
                        scopedHandler.doScope(str, request, cVar, eVar);
                    } else {
                        ScopedHandler scopedHandler2 = this._outerScope;
                        if (scopedHandler2 != null) {
                            scopedHandler2.doHandle(str, request, cVar, eVar);
                        } else {
                            doHandle(str, request, cVar, eVar);
                        }
                    }
                    if (session2 != null) {
                        this._sessionManager.complete(session2);
                    }
                    g session4 = request.getSession(false);
                    if (session4 != null && session == null && session4 != session2) {
                        this._sessionManager.complete(session4);
                    }
                    if (sessionManager == null || sessionManager == this._sessionManager) {
                        return;
                    }
                    request.setSessionManager(sessionManager);
                    request.setSession(session);
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
                session = null;
            }
        } catch (Throwable th4) {
            th = th4;
            sessionManager = null;
            session = null;
        }
    }

    @Override // org.eclipse.jetty.server.handler.ScopedHandler, org.eclipse.jetty.server.handler.HandlerWrapper, org.eclipse.jetty.server.handler.AbstractHandler, org.eclipse.jetty.util.component.AggregateLifeCycle, org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStart() {
        this._sessionManager.start();
        super.doStart();
    }

    @Override // org.eclipse.jetty.server.handler.HandlerWrapper, org.eclipse.jetty.server.handler.AbstractHandler, org.eclipse.jetty.util.component.AggregateLifeCycle, org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStop() {
        this._sessionManager.stop();
        super.doStop();
    }

    public SessionManager getSessionManager() {
        return this._sessionManager;
    }

    @Override // org.eclipse.jetty.server.handler.HandlerWrapper, org.eclipse.jetty.server.handler.AbstractHandler, org.eclipse.jetty.server.Handler
    public void setServer(Server server) {
        Server server2 = getServer();
        if (server2 != null && server2 != server) {
            server2.getContainer().update((Object) this, (Object) this._sessionManager, (Object) null, "sessionManager", true);
        }
        super.setServer(server);
        if (server == null || server == server2) {
            return;
        }
        server.getContainer().update((Object) this, (Object) null, (Object) this._sessionManager, "sessionManager", true);
    }

    public void setSessionManager(SessionManager sessionManager) {
        if (isStarted()) {
            throw new IllegalStateException();
        }
        SessionManager sessionManager2 = this._sessionManager;
        if (getServer() != null) {
            getServer().getContainer().update((Object) this, (Object) sessionManager2, (Object) sessionManager, "sessionManager", true);
        }
        if (sessionManager != null) {
            sessionManager.setSessionHandler(this);
        }
        this._sessionManager = sessionManager;
        if (sessionManager2 != null) {
            sessionManager2.setSessionHandler(null);
        }
    }

    public SessionHandler(SessionManager sessionManager) {
        setSessionManager(sessionManager);
    }
}
