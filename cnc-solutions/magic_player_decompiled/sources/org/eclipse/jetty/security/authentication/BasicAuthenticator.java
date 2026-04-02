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
import org.eclipse.jetty.util.B64Code;
import org.eclipse.jetty.util.security.Constraint;

/* JADX INFO: loaded from: classes2.dex */
public class BasicAuthenticator extends LoginAuthenticator {
    @Override // org.eclipse.jetty.security.Authenticator
    public String getAuthMethod() {
        return Constraint.__BASIC_AUTH;
    }

    @Override // org.eclipse.jetty.security.Authenticator
    public boolean secureResponse(y yVar, e0 e0Var, boolean z3, Authentication.User user) {
        return true;
    }

    @Override // org.eclipse.jetty.security.Authenticator
    public Authentication validateRequest(y yVar, e0 e0Var, boolean z3) throws ServerAuthException {
        int iIndexOf;
        String strDecode;
        int iIndexOf2;
        UserIdentity userIdentityLogin;
        c cVar = (c) yVar;
        e eVar = (e) e0Var;
        String header = cVar.getHeader(HttpHeaders.AUTHORIZATION);
        try {
            if (!z3) {
                return new DeferredAuthentication(this);
            }
            if (header != null && (iIndexOf = header.indexOf(32)) > 0 && "basic".equalsIgnoreCase(header.substring(0, iIndexOf)) && (iIndexOf2 = (strDecode = B64Code.decode(header.substring(iIndexOf + 1), "ISO-8859-1")).indexOf(58)) > 0 && (userIdentityLogin = login(strDecode.substring(0, iIndexOf2), strDecode.substring(iIndexOf2 + 1), cVar)) != null) {
                return new UserAuthentication(getAuthMethod(), userIdentityLogin);
            }
            if (DeferredAuthentication.isDeferred(eVar)) {
                return Authentication.UNAUTHENTICATED;
            }
            eVar.setHeader(HttpHeaders.WWW_AUTHENTICATE, "basic realm=\"" + this._loginService.getName() + '\"');
            eVar.sendError(HttpStatus.UNAUTHORIZED_401);
            return Authentication.SEND_CONTINUE;
        } catch (IOException e4) {
            throw new ServerAuthException(e4);
        }
    }
}
