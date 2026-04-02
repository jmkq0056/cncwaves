package org.eclipse.jetty.security;

import g2.p;
import org.eclipse.jetty.security.Authenticator;
import org.eclipse.jetty.security.authentication.BasicAuthenticator;
import org.eclipse.jetty.security.authentication.ClientCertAuthenticator;
import org.eclipse.jetty.security.authentication.DigestAuthenticator;
import org.eclipse.jetty.security.authentication.FormAuthenticator;
import org.eclipse.jetty.security.authentication.SpnegoAuthenticator;
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.util.security.Constraint;

/* JADX INFO: loaded from: classes2.dex */
public class DefaultAuthenticatorFactory implements Authenticator.Factory {
    public LoginService _loginService;

    @Override // org.eclipse.jetty.security.Authenticator.Factory
    public Authenticator getAuthenticator(Server server, p pVar, Authenticator.AuthConfiguration authConfiguration, IdentityService identityService, LoginService loginService) {
        String authMethod = authConfiguration.getAuthMethod();
        return (Constraint.__CERT_AUTH.equalsIgnoreCase(authMethod) || Constraint.__CERT_AUTH2.equalsIgnoreCase(authMethod)) ? new ClientCertAuthenticator() : (authMethod == null || Constraint.__BASIC_AUTH.equalsIgnoreCase(authMethod)) ? new BasicAuthenticator() : Constraint.__DIGEST_AUTH.equalsIgnoreCase(authMethod) ? new DigestAuthenticator() : Constraint.__FORM_AUTH.equalsIgnoreCase(authMethod) ? new FormAuthenticator() : Constraint.__SPNEGO_AUTH.equalsIgnoreCase(authMethod) ? new SpnegoAuthenticator() : Constraint.__NEGOTIATE_AUTH.equalsIgnoreCase(authMethod) ? new SpnegoAuthenticator(Constraint.__NEGOTIATE_AUTH) : null;
    }

    public LoginService getLoginService() {
        return this._loginService;
    }

    public void setLoginService(LoginService loginService) {
        this._loginService = loginService;
    }
}
