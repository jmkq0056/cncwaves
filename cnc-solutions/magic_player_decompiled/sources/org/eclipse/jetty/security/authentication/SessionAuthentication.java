package org.eclipse.jetty.security.authentication;

import android.support.v4.media.f;
import j2.g;
import j2.h;
import j2.j;
import j2.k;
import j2.m;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import org.eclipse.jetty.security.LoginService;
import org.eclipse.jetty.security.SecurityHandler;
import org.eclipse.jetty.server.Authentication;
import org.eclipse.jetty.server.UserIdentity;
import org.eclipse.jetty.server.session.AbstractSessionManager;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class SessionAuthentication implements Authentication.User, Serializable, h, k {
    private static final Logger LOG = Log.getLogger((Class<?>) SessionAuthentication.class);
    public static final String __J_AUTHENTICATED = "org.eclipse.jetty.security.UserIdentity";
    private static final long serialVersionUID = -4643200685888258706L;
    private final Object _credentials;
    private final String _method;
    private final String _name;
    private transient g _session;
    private transient UserIdentity _userIdentity;

    public SessionAuthentication(String str, UserIdentity userIdentity, Object obj) {
        this._method = str;
        this._userIdentity = userIdentity;
        this._name = userIdentity.getUserPrincipal().getName();
        this._credentials = obj;
    }

    private void doLogout() {
        SecurityHandler currentSecurityHandler = SecurityHandler.getCurrentSecurityHandler();
        if (currentSecurityHandler != null) {
            currentSecurityHandler.logout(this);
        }
        g gVar = this._session;
        if (gVar != null) {
            gVar.removeAttribute(AbstractSessionManager.SESSION_KNOWN_ONLY_TO_AUTHENTICATED);
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        SecurityHandler currentSecurityHandler = SecurityHandler.getCurrentSecurityHandler();
        if (currentSecurityHandler == null) {
            throw new IllegalStateException("!SecurityHandler");
        }
        LoginService loginService = currentSecurityHandler.getLoginService();
        if (loginService == null) {
            throw new IllegalStateException("!LoginService");
        }
        this._userIdentity = loginService.login(this._name, this._credentials);
        LOG.debug("Deserialized and relogged in {}", this);
    }

    @Override // org.eclipse.jetty.server.Authentication.User
    public String getAuthMethod() {
        return this._method;
    }

    @Override // org.eclipse.jetty.server.Authentication.User
    public UserIdentity getUserIdentity() {
        return this._userIdentity;
    }

    @Override // org.eclipse.jetty.server.Authentication.User
    public boolean isUserInRole(UserIdentity.Scope scope, String str) {
        return this._userIdentity.isUserInRole(str, scope);
    }

    @Override // org.eclipse.jetty.server.Authentication.User
    public void logout() {
        g gVar = this._session;
        if (gVar != null && gVar.getAttribute(__J_AUTHENTICATED) != null) {
            this._session.removeAttribute(__J_AUTHENTICATED);
        }
        doLogout();
    }

    @Override // j2.h
    public void sessionDidActivate(m mVar) {
        if (this._session == null) {
            this._session = mVar.a();
        }
    }

    @Override // j2.h
    public void sessionWillPassivate(m mVar) {
    }

    public String toString() {
        StringBuilder sbA = f.a("Session");
        sbA.append(super.toString());
        return sbA.toString();
    }

    @Override // j2.k
    public void valueBound(j jVar) {
        if (this._session == null) {
            this._session = jVar.a();
        }
    }

    @Override // j2.k
    public void valueUnbound(j jVar) {
        doLogout();
    }
}
