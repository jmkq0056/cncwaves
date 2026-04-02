package org.eclipse.jetty.security.authentication;

import android.support.v4.media.f;
import g2.e0;
import g2.m;
import g2.u;
import g2.y;
import j2.c;
import j2.d;
import j2.e;
import j2.g;
import java.io.IOException;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Locale;
import org.eclipse.jetty.http.HttpHeaders;
import org.eclipse.jetty.http.HttpMethods;
import org.eclipse.jetty.http.HttpStatus;
import org.eclipse.jetty.http.MimeTypes;
import org.eclipse.jetty.security.Authenticator;
import org.eclipse.jetty.security.LoginService;
import org.eclipse.jetty.security.ServerAuthException;
import org.eclipse.jetty.security.UserAuthentication;
import org.eclipse.jetty.server.AbstractHttpConnection;
import org.eclipse.jetty.server.Authentication;
import org.eclipse.jetty.server.Request;
import org.eclipse.jetty.server.UserIdentity;
import org.eclipse.jetty.util.MultiMap;
import org.eclipse.jetty.util.StringUtil;
import org.eclipse.jetty.util.URIUtil;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;
import org.eclipse.jetty.util.security.Constraint;

/* JADX INFO: loaded from: classes2.dex */
public class FormAuthenticator extends LoginAuthenticator {
    private static final Logger LOG = Log.getLogger((Class<?>) FormAuthenticator.class);
    public static final String __FORM_DISPATCH = "org.eclipse.jetty.security.dispatch";
    public static final String __FORM_ERROR_PAGE = "org.eclipse.jetty.security.form_error_page";
    public static final String __FORM_LOGIN_PAGE = "org.eclipse.jetty.security.form_login_page";
    public static final String __J_PASSWORD = "j_password";
    public static final String __J_POST = "org.eclipse.jetty.security.form_POST";
    public static final String __J_SECURITY_CHECK = "/j_security_check";
    public static final String __J_URI = "org.eclipse.jetty.security.form_URI";
    public static final String __J_USERNAME = "j_username";
    private boolean _alwaysSaveUri;
    private boolean _dispatch;
    private String _formErrorPage;
    private String _formErrorPath;
    private String _formLoginPage;
    private String _formLoginPath;

    public static class FormAuthentication extends UserAuthentication implements Authentication.ResponseSent {
        public FormAuthentication(String str, UserIdentity userIdentity) {
            super(str, userIdentity);
        }

        @Override // org.eclipse.jetty.security.UserAuthentication
        public String toString() {
            StringBuilder sbA = f.a("Form");
            sbA.append(super.toString());
            return sbA.toString();
        }
    }

    public static class FormRequest extends d {
        public FormRequest(c cVar) {
            super(cVar);
        }

        @Override // j2.d, j2.c
        public long getDateHeader(String str) {
            if (str.toLowerCase(Locale.ENGLISH).startsWith("if-")) {
                return -1L;
            }
            return super.getDateHeader(str);
        }

        @Override // j2.d, j2.c
        public String getHeader(String str) {
            if (str.toLowerCase(Locale.ENGLISH).startsWith("if-")) {
                return null;
            }
            return super.getHeader(str);
        }

        @Override // j2.d, j2.c
        public Enumeration getHeaderNames() {
            return Collections.enumeration(Collections.list(super.getHeaderNames()));
        }

        @Override // j2.d, j2.c
        public Enumeration getHeaders(String str) {
            return str.toLowerCase(Locale.ENGLISH).startsWith("if-") ? Collections.enumeration(Collections.EMPTY_LIST) : super.getHeaders(str);
        }
    }

    public static class FormResponse extends j2.f {
        public FormResponse(e eVar) {
            super(eVar);
        }

        private boolean notIgnored(String str) {
            return (HttpHeaders.CACHE_CONTROL.equalsIgnoreCase(str) || HttpHeaders.PRAGMA.equalsIgnoreCase(str) || HttpHeaders.ETAG.equalsIgnoreCase(str) || HttpHeaders.EXPIRES.equalsIgnoreCase(str) || HttpHeaders.LAST_MODIFIED.equalsIgnoreCase(str) || HttpHeaders.AGE.equalsIgnoreCase(str)) ? false : true;
        }

        @Override // j2.f, j2.e
        public void addDateHeader(String str, long j4) {
            if (notIgnored(str)) {
                super.addDateHeader(str, j4);
            }
        }

        @Override // j2.f, j2.e
        public void addHeader(String str, String str2) {
            if (notIgnored(str)) {
                super.addHeader(str, str2);
            }
        }

        @Override // j2.f, j2.e
        public void setDateHeader(String str, long j4) {
            if (notIgnored(str)) {
                super.setDateHeader(str, j4);
            }
        }

        @Override // j2.f, j2.e
        public void setHeader(String str, String str2) {
            if (notIgnored(str)) {
                super.setHeader(str, str2);
            }
        }
    }

    public FormAuthenticator() {
    }

    private void setErrorPage(String str) {
        if (str == null || str.trim().length() == 0) {
            this._formErrorPath = null;
            this._formErrorPage = null;
            return;
        }
        if (!str.startsWith("/")) {
            LOG.warn("form-error-page must start with /", new Object[0]);
            str = "/" + str;
        }
        this._formErrorPage = str;
        this._formErrorPath = str;
        if (str.indexOf(63) > 0) {
            String str2 = this._formErrorPath;
            this._formErrorPath = str2.substring(0, str2.indexOf(63));
        }
    }

    private void setLoginPage(String str) {
        if (!str.startsWith("/")) {
            LOG.warn("form-login-page must start with /", new Object[0]);
            str = "/" + str;
        }
        this._formLoginPage = str;
        this._formLoginPath = str;
        if (str.indexOf(63) > 0) {
            String str2 = this._formLoginPath;
            this._formLoginPath = str2.substring(0, str2.indexOf(63));
        }
    }

    public boolean getAlwaysSaveUri() {
        return this._alwaysSaveUri;
    }

    @Override // org.eclipse.jetty.security.Authenticator
    public String getAuthMethod() {
        return Constraint.__FORM_AUTH;
    }

    public boolean isJSecurityCheck(String str) {
        char cCharAt;
        int iIndexOf = str.indexOf(__J_SECURITY_CHECK);
        if (iIndexOf < 0) {
            return false;
        }
        int i4 = iIndexOf + 17;
        return i4 == str.length() || (cCharAt = str.charAt(i4)) == ';' || cCharAt == '#' || cCharAt == '/' || cCharAt == '?';
    }

    public boolean isLoginOrErrorPage(String str) {
        return str != null && (str.equals(this._formErrorPath) || str.equals(this._formLoginPath));
    }

    @Override // org.eclipse.jetty.security.authentication.LoginAuthenticator
    public UserIdentity login(String str, Object obj, y yVar) {
        UserIdentity userIdentityLogin = super.login(str, obj, yVar);
        if (userIdentityLogin != null) {
            ((c) yVar).getSession(true).setAttribute(SessionAuthentication.__J_AUTHENTICATED, new SessionAuthentication(getAuthMethod(), userIdentityLogin, obj));
        }
        return userIdentityLogin;
    }

    @Override // org.eclipse.jetty.security.Authenticator
    public boolean secureResponse(y yVar, e0 e0Var, boolean z3, Authentication.User user) {
        return true;
    }

    public void setAlwaysSaveUri(boolean z3) {
        this._alwaysSaveUri = z3;
    }

    @Override // org.eclipse.jetty.security.authentication.LoginAuthenticator, org.eclipse.jetty.security.Authenticator
    public void setConfiguration(Authenticator.AuthConfiguration authConfiguration) {
        super.setConfiguration(authConfiguration);
        String initParameter = authConfiguration.getInitParameter(__FORM_LOGIN_PAGE);
        if (initParameter != null) {
            setLoginPage(initParameter);
        }
        String initParameter2 = authConfiguration.getInitParameter(__FORM_ERROR_PAGE);
        if (initParameter2 != null) {
            setErrorPage(initParameter2);
        }
        String initParameter3 = authConfiguration.getInitParameter(__FORM_DISPATCH);
        this._dispatch = initParameter3 == null ? this._dispatch : Boolean.valueOf(initParameter3).booleanValue();
    }

    @Override // org.eclipse.jetty.security.Authenticator
    public Authentication validateRequest(y yVar, e0 e0Var, boolean z3) throws ServerAuthException {
        LoginService loginService;
        String contextPath;
        c cVar = (c) yVar;
        e eVar = (e) e0Var;
        String requestURI = cVar.getRequestURI();
        if (requestURI == null) {
            requestURI = "/";
        }
        if (!z3 && !isJSecurityCheck(requestURI)) {
            return new DeferredAuthentication(this);
        }
        if (isLoginOrErrorPage(URIUtil.addPaths(cVar.getServletPath(), cVar.getPathInfo())) && !DeferredAuthentication.isDeferred(eVar)) {
            return new DeferredAuthentication(this);
        }
        g session = cVar.getSession(true);
        try {
            if (isJSecurityCheck(requestURI)) {
                String parameter = cVar.getParameter(__J_USERNAME);
                UserIdentity userIdentityLogin = login(parameter, cVar.getParameter(__J_PASSWORD), cVar);
                g session2 = cVar.getSession(true);
                if (userIdentityLogin != null) {
                    synchronized (session2) {
                        contextPath = (String) session2.getAttribute(__J_URI);
                        if (contextPath == null || contextPath.length() == 0) {
                            contextPath = cVar.getContextPath();
                            if (contextPath.length() == 0) {
                                contextPath = "/";
                            }
                        }
                    }
                    eVar.setContentLength(0);
                    eVar.sendRedirect(eVar.encodeRedirectURL(contextPath));
                    return new FormAuthentication(getAuthMethod(), userIdentityLogin);
                }
                Logger logger = LOG;
                if (logger.isDebugEnabled()) {
                    logger.debug("Form authentication FAILED for " + StringUtil.printable(parameter), new Object[0]);
                }
                String str = this._formErrorPage;
                if (str == null) {
                    if (eVar != null) {
                        eVar.sendError(HttpStatus.FORBIDDEN_403);
                    }
                } else if (this._dispatch) {
                    m requestDispatcher = cVar.getRequestDispatcher(str);
                    eVar.setHeader(HttpHeaders.CACHE_CONTROL, "No-cache");
                    eVar.setDateHeader(HttpHeaders.EXPIRES, 1L);
                    requestDispatcher.forward(new FormRequest(cVar), new FormResponse(eVar));
                } else {
                    eVar.sendRedirect(eVar.encodeRedirectURL(URIUtil.addPaths(cVar.getContextPath(), this._formErrorPage)));
                }
                return Authentication.SEND_FAILURE;
            }
            Authentication authentication = (Authentication) session.getAttribute(SessionAuthentication.__J_AUTHENTICATED);
            if (authentication != null) {
                if (!(authentication instanceof Authentication.User) || (loginService = this._loginService) == null || loginService.validate(((Authentication.User) authentication).getUserIdentity())) {
                    String str2 = (String) session.getAttribute(__J_URI);
                    if (str2 != null) {
                        MultiMap<String> multiMap = (MultiMap) session.getAttribute(__J_POST);
                        if (multiMap != null) {
                            StringBuffer requestURL = cVar.getRequestURL();
                            if (cVar.getQueryString() != null) {
                                requestURL.append("?");
                                requestURL.append(cVar.getQueryString());
                            }
                            if (str2.equals(requestURL.toString())) {
                                session.removeAttribute(__J_POST);
                                Request request = yVar instanceof Request ? (Request) yVar : AbstractHttpConnection.getCurrentConnection().getRequest();
                                request.setMethod(HttpMethods.POST);
                                request.setParameters(multiMap);
                            }
                        } else {
                            session.removeAttribute(__J_URI);
                        }
                    }
                    return authentication;
                }
                session.removeAttribute(SessionAuthentication.__J_AUTHENTICATED);
            }
            if (DeferredAuthentication.isDeferred(eVar)) {
                LOG.debug("auth deferred {}", session.getId());
                return Authentication.UNAUTHENTICATED;
            }
            synchronized (session) {
                if (session.getAttribute(__J_URI) == null || this._alwaysSaveUri) {
                    StringBuffer requestURL2 = cVar.getRequestURL();
                    if (cVar.getQueryString() != null) {
                        requestURL2.append("?");
                        requestURL2.append(cVar.getQueryString());
                    }
                    session.setAttribute(__J_URI, requestURL2.toString());
                    if (MimeTypes.FORM_ENCODED.equalsIgnoreCase(yVar.getContentType()) && HttpMethods.POST.equals(cVar.getMethod())) {
                        Request request2 = yVar instanceof Request ? (Request) yVar : AbstractHttpConnection.getCurrentConnection().getRequest();
                        request2.extractParameters();
                        session.setAttribute(__J_POST, new MultiMap((MultiMap) request2.getParameters()));
                    }
                }
            }
            if (this._dispatch) {
                m requestDispatcher2 = cVar.getRequestDispatcher(this._formLoginPage);
                eVar.setHeader(HttpHeaders.CACHE_CONTROL, "No-cache");
                eVar.setDateHeader(HttpHeaders.EXPIRES, 1L);
                requestDispatcher2.forward(new FormRequest(cVar), new FormResponse(eVar));
            } else {
                eVar.sendRedirect(eVar.encodeRedirectURL(URIUtil.addPaths(cVar.getContextPath(), this._formLoginPage)));
            }
            return Authentication.SEND_CONTINUE;
        } catch (u e4) {
            throw new ServerAuthException(e4);
        } catch (IOException e5) {
            throw new ServerAuthException(e5);
        }
    }

    public FormAuthenticator(String str, String str2, boolean z3) {
        this();
        if (str != null) {
            setLoginPage(str);
        }
        if (str2 != null) {
            setErrorPage(str2);
        }
        this._dispatch = z3;
    }
}
