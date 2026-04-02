package org.eclipse.jetty.security.authentication;

import g2.y;
import j2.c;
import j2.e;
import j2.g;
import org.eclipse.jetty.security.Authenticator;
import org.eclipse.jetty.security.IdentityService;
import org.eclipse.jetty.security.LoginService;
import org.eclipse.jetty.server.UserIdentity;
import org.eclipse.jetty.server.session.AbstractSessionManager;

/* JADX INFO: loaded from: classes2.dex */
public abstract class LoginAuthenticator implements Authenticator {
    public IdentityService _identityService;
    public LoginService _loginService;
    private boolean _renewSession;

    public LoginService getLoginService() {
        return this._loginService;
    }

    public UserIdentity login(String str, Object obj, y yVar) {
        UserIdentity userIdentityLogin = this._loginService.login(str, obj);
        if (userIdentityLogin == null) {
            return null;
        }
        renewSession((c) yVar, null);
        return userIdentityLogin;
    }

    public g renewSession(c cVar, e eVar) {
        g session = cVar.getSession(false);
        if (this._renewSession && session != null && session.getAttribute(AbstractSessionManager.SESSION_KNOWN_ONLY_TO_AUTHENTICATED) != Boolean.TRUE) {
            synchronized (this) {
                session = AbstractSessionManager.renewSession(cVar, session, true);
            }
        }
        return session;
    }

    @Override // org.eclipse.jetty.security.Authenticator
    public void setConfiguration(Authenticator.AuthConfiguration authConfiguration) {
        LoginService loginService = authConfiguration.getLoginService();
        this._loginService = loginService;
        if (loginService == null) {
            throw new IllegalStateException("No LoginService for " + this + " in " + authConfiguration);
        }
        IdentityService identityService = authConfiguration.getIdentityService();
        this._identityService = identityService;
        if (identityService != null) {
            this._renewSession = authConfiguration.isSessionRenewedOnAuthentication();
            return;
        }
        throw new IllegalStateException("No IdentityService for " + this + " in " + authConfiguration);
    }
}
