package org.eclipse.jetty.security;

import g2.e0;
import g2.p;
import g2.y;
import java.util.Set;
import org.eclipse.jetty.server.Authentication;
import org.eclipse.jetty.server.Server;

/* JADX INFO: loaded from: classes2.dex */
public interface Authenticator {

    public interface AuthConfiguration {
        String getAuthMethod();

        IdentityService getIdentityService();

        String getInitParameter(String str);

        Set<String> getInitParameterNames();

        LoginService getLoginService();

        String getRealmName();

        boolean isSessionRenewedOnAuthentication();
    }

    public interface Factory {
        Authenticator getAuthenticator(Server server, p pVar, AuthConfiguration authConfiguration, IdentityService identityService, LoginService loginService);
    }

    String getAuthMethod();

    boolean secureResponse(y yVar, e0 e0Var, boolean z3, Authentication.User user);

    void setConfiguration(AuthConfiguration authConfiguration);

    Authentication validateRequest(y yVar, e0 e0Var, boolean z3);
}
