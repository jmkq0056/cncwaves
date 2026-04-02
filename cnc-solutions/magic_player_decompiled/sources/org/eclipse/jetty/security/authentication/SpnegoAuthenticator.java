package org.eclipse.jetty.security.authentication;

import g2.e0;
import g2.y;
import j2.c;
import j2.e;
import java.io.IOException;
import org.eclipse.jetty.http.HttpHeaders;
import org.eclipse.jetty.http.HttpStatus;
import org.eclipse.jetty.security.ServerAuthException;
import org.eclipse.jetty.security.UserAuthentication;
import org.eclipse.jetty.server.Authentication;
import org.eclipse.jetty.server.UserIdentity;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;
import org.eclipse.jetty.util.security.Constraint;

/* JADX INFO: loaded from: classes2.dex */
public class SpnegoAuthenticator extends LoginAuthenticator {
    private static final Logger LOG = Log.getLogger((Class<?>) SpnegoAuthenticator.class);
    private String _authMethod;

    public SpnegoAuthenticator() {
        this._authMethod = Constraint.__SPNEGO_AUTH;
    }

    @Override // org.eclipse.jetty.security.Authenticator
    public String getAuthMethod() {
        return this._authMethod;
    }

    @Override // org.eclipse.jetty.security.Authenticator
    public boolean secureResponse(y yVar, e0 e0Var, boolean z3, Authentication.User user) {
        return true;
    }

    @Override // org.eclipse.jetty.security.Authenticator
    public Authentication validateRequest(y yVar, e0 e0Var, boolean z3) throws ServerAuthException {
        UserIdentity userIdentityLogin;
        e eVar = (e) e0Var;
        String header = ((c) yVar).getHeader(HttpHeaders.AUTHORIZATION);
        if (!z3) {
            return new DeferredAuthentication(this);
        }
        if (header != null) {
            return (!header.startsWith(HttpHeaders.NEGOTIATE) || (userIdentityLogin = login(null, header.substring(10), yVar)) == null) ? Authentication.UNAUTHENTICATED : new UserAuthentication(getAuthMethod(), userIdentityLogin);
        }
        try {
            if (DeferredAuthentication.isDeferred(eVar)) {
                return Authentication.UNAUTHENTICATED;
            }
            LOG.debug("SpengoAuthenticator: sending challenge", new Object[0]);
            eVar.setHeader(HttpHeaders.WWW_AUTHENTICATE, HttpHeaders.NEGOTIATE);
            eVar.sendError(HttpStatus.UNAUTHORIZED_401);
            return Authentication.SEND_CONTINUE;
        } catch (IOException e4) {
            throw new ServerAuthException(e4);
        }
    }

    public SpnegoAuthenticator(String str) {
        this._authMethod = Constraint.__SPNEGO_AUTH;
        this._authMethod = str;
    }
}
