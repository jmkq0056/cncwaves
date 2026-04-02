package org.eclipse.jetty.security.authentication;

import g2.e0;
import g2.w;
import g2.y;
import j2.a;
import j2.e;
import java.io.PrintWriter;
import java.util.Collection;
import java.util.Collections;
import java.util.Locale;
import java.util.Objects;
import org.eclipse.jetty.security.IdentityService;
import org.eclipse.jetty.security.ServerAuthException;
import org.eclipse.jetty.security.UserAuthentication;
import org.eclipse.jetty.server.Authentication;
import org.eclipse.jetty.server.UserIdentity;
import org.eclipse.jetty.util.IO;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class DeferredAuthentication implements Authentication.Deferred {
    private static final Logger LOG = Log.getLogger((Class<?>) DeferredAuthentication.class);
    public static final e __deferredResponse = new e() { // from class: org.eclipse.jetty.security.authentication.DeferredAuthentication.1
        @Override // j2.e
        public void addCookie(a aVar) {
        }

        @Override // j2.e
        public void addDateHeader(String str, long j4) {
        }

        @Override // j2.e
        public void addHeader(String str, String str2) {
        }

        @Override // j2.e
        public void addIntHeader(String str, int i4) {
        }

        @Override // j2.e
        public boolean containsHeader(String str) {
            return false;
        }

        @Override // j2.e
        public String encodeRedirectURL(String str) {
            return null;
        }

        @Override // j2.e
        public String encodeRedirectUrl(String str) {
            return null;
        }

        @Override // j2.e
        public String encodeURL(String str) {
            return null;
        }

        @Override // j2.e
        public String encodeUrl(String str) {
            return null;
        }

        @Override // g2.e0
        public void flushBuffer() {
        }

        @Override // g2.e0
        public int getBufferSize() {
            return 1024;
        }

        @Override // g2.e0
        public String getCharacterEncoding() {
            return null;
        }

        @Override // g2.e0
        public String getContentType() {
            return null;
        }

        @Override // j2.e
        public String getHeader(String str) {
            return null;
        }

        @Override // j2.e
        public Collection<String> getHeaderNames() {
            return Collections.emptyList();
        }

        @Override // j2.e
        public Collection<String> getHeaders(String str) {
            return Collections.emptyList();
        }

        @Override // g2.e0
        public Locale getLocale() {
            return null;
        }

        @Override // g2.e0
        public w getOutputStream() {
            return DeferredAuthentication.__nullOut;
        }

        @Override // j2.e
        public int getStatus() {
            return 0;
        }

        @Override // g2.e0
        public PrintWriter getWriter() {
            return IO.getNullPrintWriter();
        }

        @Override // g2.e0
        public boolean isCommitted() {
            return true;
        }

        @Override // g2.e0
        public void reset() {
        }

        @Override // g2.e0
        public void resetBuffer() {
        }

        @Override // j2.e
        public void sendError(int i4) {
        }

        @Override // j2.e
        public void sendError(int i4, String str) {
        }

        @Override // j2.e
        public void sendRedirect(String str) {
        }

        @Override // g2.e0
        public void setBufferSize(int i4) {
        }

        @Override // g2.e0
        public void setCharacterEncoding(String str) {
        }

        @Override // g2.e0
        public void setContentLength(int i4) {
        }

        @Override // g2.e0
        public void setContentType(String str) {
        }

        @Override // j2.e
        public void setDateHeader(String str, long j4) {
        }

        @Override // j2.e
        public void setHeader(String str, String str2) {
        }

        @Override // j2.e
        public void setIntHeader(String str, int i4) {
        }

        @Override // g2.e0
        public void setLocale(Locale locale) {
        }

        @Override // j2.e
        public void setStatus(int i4) {
        }

        @Override // j2.e
        public void setStatus(int i4, String str) {
        }
    };
    private static w __nullOut = new w() { // from class: org.eclipse.jetty.security.authentication.DeferredAuthentication.2
        @Override // g2.w
        public void print(String str) {
        }

        @Override // g2.w
        public void println(String str) {
        }

        @Override // java.io.OutputStream
        public void write(int i4) {
        }
    };
    public final LoginAuthenticator _authenticator;
    private Object _previousAssociation;

    public DeferredAuthentication(LoginAuthenticator loginAuthenticator) {
        Objects.requireNonNull(loginAuthenticator, "No Authenticator");
        this._authenticator = loginAuthenticator;
    }

    public static boolean isDeferred(e eVar) {
        return eVar == __deferredResponse;
    }

    @Override // org.eclipse.jetty.server.Authentication.Deferred
    public Authentication authenticate(y yVar) {
        try {
            Authentication authenticationValidateRequest = this._authenticator.validateRequest(yVar, __deferredResponse, true);
            if (authenticationValidateRequest != null && (authenticationValidateRequest instanceof Authentication.User) && !(authenticationValidateRequest instanceof Authentication.ResponseSent)) {
                IdentityService identityService = this._authenticator.getLoginService().getIdentityService();
                if (identityService != null) {
                    this._previousAssociation = identityService.associate(((Authentication.User) authenticationValidateRequest).getUserIdentity());
                }
                return authenticationValidateRequest;
            }
        } catch (ServerAuthException e4) {
            LOG.debug(e4);
        }
        return this;
    }

    public Object getPreviousAssociation() {
        return this._previousAssociation;
    }

    @Override // org.eclipse.jetty.server.Authentication.Deferred
    public Authentication login(String str, Object obj, y yVar) {
        UserIdentity userIdentityLogin = this._authenticator.login(str, obj, yVar);
        if (userIdentityLogin == null) {
            return null;
        }
        IdentityService identityService = this._authenticator.getLoginService().getIdentityService();
        UserAuthentication userAuthentication = new UserAuthentication("API", userIdentityLogin);
        if (identityService != null) {
            this._previousAssociation = identityService.associate(userIdentityLogin);
        }
        return userAuthentication;
    }

    @Override // org.eclipse.jetty.server.Authentication.Deferred
    public Authentication authenticate(y yVar, e0 e0Var) {
        try {
            IdentityService identityService = this._authenticator.getLoginService().getIdentityService();
            Authentication authenticationValidateRequest = this._authenticator.validateRequest(yVar, e0Var, true);
            if ((authenticationValidateRequest instanceof Authentication.User) && identityService != null) {
                this._previousAssociation = identityService.associate(((Authentication.User) authenticationValidateRequest).getUserIdentity());
            }
            return authenticationValidateRequest;
        } catch (ServerAuthException e4) {
            LOG.debug(e4);
            return this;
        }
    }
}
