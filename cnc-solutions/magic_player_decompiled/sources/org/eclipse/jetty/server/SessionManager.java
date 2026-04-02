package org.eclipse.jetty.server;

import g2.h0;
import g2.i0;
import j2.c;
import j2.g;
import java.util.EventListener;
import java.util.Set;
import org.eclipse.jetty.http.HttpCookie;
import org.eclipse.jetty.server.session.SessionHandler;
import org.eclipse.jetty.util.component.LifeCycle;

/* JADX INFO: loaded from: classes2.dex */
public interface SessionManager extends LifeCycle {
    public static final String __CheckRemoteSessionEncoding = "org.eclipse.jetty.servlet.CheckingRemoteSessionIdEncoding";
    public static final String __DefaultSessionCookie = "JSESSIONID";
    public static final String __DefaultSessionDomain = null;
    public static final String __DefaultSessionIdPathParameterName = "jsessionid";
    public static final String __MaxAgeProperty = "org.eclipse.jetty.servlet.MaxAge";
    public static final String __SessionCookieProperty = "org.eclipse.jetty.servlet.SessionCookie";
    public static final String __SessionDomainProperty = "org.eclipse.jetty.servlet.SessionDomain";
    public static final String __SessionIdPathParameterNameProperty = "org.eclipse.jetty.servlet.SessionIdPathParameterName";
    public static final String __SessionPathProperty = "org.eclipse.jetty.servlet.SessionPath";

    HttpCookie access(g gVar, boolean z3);

    void addEventListener(EventListener eventListener);

    void clearEventListeners();

    void complete(g gVar);

    String getClusterId(g gVar);

    Set<i0> getDefaultSessionTrackingModes();

    Set<i0> getEffectiveSessionTrackingModes();

    boolean getHttpOnly();

    g getHttpSession(String str);

    int getMaxInactiveInterval();

    @Deprecated
    SessionIdManager getMetaManager();

    String getNodeId(g gVar);

    HttpCookie getSessionCookie(g gVar, String str, boolean z3);

    h0 getSessionCookieConfig();

    SessionIdManager getSessionIdManager();

    String getSessionIdPathParameterName();

    String getSessionIdPathParameterNamePrefix();

    boolean isCheckingRemoteSessionIdEncoding();

    boolean isUsingCookies();

    boolean isUsingURLs();

    boolean isValid(g gVar);

    g newHttpSession(c cVar);

    void removeEventListener(EventListener eventListener);

    void setCheckingRemoteSessionIdEncoding(boolean z3);

    void setMaxInactiveInterval(int i4);

    void setSessionHandler(SessionHandler sessionHandler);

    void setSessionIdManager(SessionIdManager sessionIdManager);

    void setSessionIdPathParameterName(String str);

    void setSessionTrackingModes(Set<i0> set);
}
