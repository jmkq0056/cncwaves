package org.eclipse.jetty.security;

import g2.d;
import j2.c;
import j2.e;
import j2.m;
import j2.n;
import java.security.Principal;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.jetty.http.HttpStatus;
import org.eclipse.jetty.security.Authenticator;
import org.eclipse.jetty.security.authentication.DeferredAuthentication;
import org.eclipse.jetty.server.AbstractHttpConnection;
import org.eclipse.jetty.server.Authentication;
import org.eclipse.jetty.server.Handler;
import org.eclipse.jetty.server.Request;
import org.eclipse.jetty.server.Response;
import org.eclipse.jetty.server.UserIdentity;
import org.eclipse.jetty.server.handler.ContextHandler;
import org.eclipse.jetty.server.handler.HandlerWrapper;
import org.eclipse.jetty.server.session.AbstractSessionManager;
import org.eclipse.jetty.util.component.LifeCycle;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public abstract class SecurityHandler extends HandlerWrapper implements Authenticator.AuthConfiguration {
    private String _authMethod;
    private Authenticator _authenticator;
    private IdentityService _identityService;
    private LoginService _loginService;
    private boolean _loginServiceShared;
    private String _realmName;
    private static final Logger LOG = Log.getLogger((Class<?>) SecurityHandler.class);
    public static Principal __NO_USER = new Principal() { // from class: org.eclipse.jetty.security.SecurityHandler.2
        @Override // java.security.Principal
        public String getName() {
            return null;
        }

        @Override // java.security.Principal
        public String toString() {
            return "No User";
        }
    };
    public static Principal __NOBODY = new Principal() { // from class: org.eclipse.jetty.security.SecurityHandler.3
        @Override // java.security.Principal
        public String getName() {
            return "Nobody";
        }

        @Override // java.security.Principal
        public String toString() {
            return getName();
        }
    };
    private boolean _checkWelcomeFiles = false;
    private Authenticator.Factory _authenticatorFactory = new DefaultAuthenticatorFactory();
    private final Map<String, String> _initParameters = new HashMap();
    private boolean _renewSession = true;

    /* JADX INFO: renamed from: org.eclipse.jetty.security.SecurityHandler$4, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass4 {
        public static final /* synthetic */ int[] $SwitchMap$javax$servlet$DispatcherType;

        static {
            int[] iArr = new int[d.values().length];
            $SwitchMap$javax$servlet$DispatcherType = iArr;
            try {
                iArr[2] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$javax$servlet$DispatcherType[3] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$javax$servlet$DispatcherType[0] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public class NotChecked implements Principal {
        public NotChecked() {
        }

        @Override // java.security.Principal
        public String getName() {
            return null;
        }

        public SecurityHandler getSecurityHandler() {
            return SecurityHandler.this;
        }

        @Override // java.security.Principal
        public String toString() {
            return "NOT CHECKED";
        }
    }

    public static SecurityHandler getCurrentSecurityHandler() {
        ContextHandler.Context currentContext = ContextHandler.getCurrentContext();
        if (currentContext == null) {
            return null;
        }
        return (SecurityHandler) currentContext.getContextHandler().getChildHandlerByClass(SecurityHandler.class);
    }

    public boolean checkSecurity(Request request) {
        int i4 = AnonymousClass4.$SwitchMap$javax$servlet$DispatcherType[request.getDispatcherType().ordinal()];
        if (i4 == 1 || i4 == 2) {
            return true;
        }
        if (i4 != 3 || !this._checkWelcomeFiles || request.getAttribute("org.eclipse.jetty.server.welcome") == null) {
            return false;
        }
        request.removeAttribute("org.eclipse.jetty.server.welcome");
        return true;
    }

    public abstract boolean checkUserDataPermissions(String str, Request request, Response response, Object obj);

    public abstract boolean checkWebResourcePermissions(String str, Request request, Response response, Object obj, UserIdentity userIdentity);

    @Override // org.eclipse.jetty.server.handler.HandlerWrapper, org.eclipse.jetty.server.handler.AbstractHandler, org.eclipse.jetty.util.component.AggregateLifeCycle, org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStart() {
        Authenticator.Factory factory;
        ContextHandler.Context currentContext = ContextHandler.getCurrentContext();
        if (currentContext != null) {
            Enumeration initParameterNames = currentContext.getInitParameterNames();
            while (initParameterNames != null && initParameterNames.hasMoreElements()) {
                String str = (String) initParameterNames.nextElement();
                if (str.startsWith("org.eclipse.jetty.security.") && getInitParameter(str) == null) {
                    setInitParameter(str, currentContext.getInitParameter(str));
                }
            }
            currentContext.getContextHandler().addEventListener(new n() { // from class: org.eclipse.jetty.security.SecurityHandler.1
                @Override // j2.n
                public void sessionCreated(m mVar) {
                    Request request;
                    AbstractHttpConnection currentConnection = AbstractHttpConnection.getCurrentConnection();
                    if (currentConnection == null || (request = currentConnection.getRequest()) == null || !request.isSecure()) {
                        return;
                    }
                    mVar.a().setAttribute(AbstractSessionManager.SESSION_KNOWN_ONLY_TO_AUTHENTICATED, Boolean.TRUE);
                }

                @Override // j2.n
                public void sessionDestroyed(m mVar) {
                }
            });
        }
        if (this._loginService == null) {
            LoginService loginServiceFindLoginService = findLoginService();
            this._loginService = loginServiceFindLoginService;
            if (loginServiceFindLoginService != null) {
                this._loginServiceShared = true;
            }
        }
        if (this._identityService == null) {
            LoginService loginService = this._loginService;
            if (loginService != null) {
                this._identityService = loginService.getIdentityService();
            }
            if (this._identityService == null) {
                this._identityService = findIdentityService();
            }
            if (this._identityService == null && this._realmName != null) {
                this._identityService = new DefaultIdentityService();
            }
        }
        LoginService loginService2 = this._loginService;
        if (loginService2 != null) {
            if (loginService2.getIdentityService() == null) {
                this._loginService.setIdentityService(this._identityService);
            } else if (this._loginService.getIdentityService() != this._identityService) {
                throw new IllegalStateException("LoginService has different IdentityService to " + this);
            }
        }
        if (!this._loginServiceShared) {
            LoginService loginService3 = this._loginService;
            if (loginService3 instanceof LifeCycle) {
                ((LifeCycle) loginService3).start();
            }
        }
        if (this._authenticator == null && (factory = this._authenticatorFactory) != null && this._identityService != null) {
            Authenticator authenticator = factory.getAuthenticator(getServer(), ContextHandler.getCurrentContext(), this, this._identityService, this._loginService);
            this._authenticator = authenticator;
            if (authenticator != null) {
                this._authMethod = authenticator.getAuthMethod();
            }
        }
        Authenticator authenticator2 = this._authenticator;
        if (authenticator2 != null) {
            authenticator2.setConfiguration(this);
            Authenticator authenticator3 = this._authenticator;
            if (authenticator3 instanceof LifeCycle) {
                ((LifeCycle) authenticator3).start();
            }
        } else if (this._realmName != null) {
            LOG.warn("No ServerAuthentication for " + this, new Object[0]);
            throw new IllegalStateException("No ServerAuthentication");
        }
        super.doStart();
    }

    @Override // org.eclipse.jetty.server.handler.HandlerWrapper, org.eclipse.jetty.server.handler.AbstractHandler, org.eclipse.jetty.util.component.AggregateLifeCycle, org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStop() {
        super.doStop();
        if (this._loginServiceShared) {
            return;
        }
        LoginService loginService = this._loginService;
        if (loginService instanceof LifeCycle) {
            ((LifeCycle) loginService).stop();
        }
    }

    public IdentityService findIdentityService() {
        return (IdentityService) getServer().getBean(IdentityService.class);
    }

    public LoginService findLoginService() {
        List<LoginService> beans = getServer().getBeans(LoginService.class);
        String realmName = getRealmName();
        if (realmName == null) {
            if (beans.size() == 1) {
                return (LoginService) beans.get(0);
            }
            return null;
        }
        for (LoginService loginService : beans) {
            if (loginService.getName() != null && loginService.getName().equals(realmName)) {
                return loginService;
            }
        }
        return null;
    }

    @Override // org.eclipse.jetty.security.Authenticator.AuthConfiguration
    public String getAuthMethod() {
        return this._authMethod;
    }

    public Authenticator getAuthenticator() {
        return this._authenticator;
    }

    public Authenticator.Factory getAuthenticatorFactory() {
        return this._authenticatorFactory;
    }

    @Override // org.eclipse.jetty.security.Authenticator.AuthConfiguration
    public IdentityService getIdentityService() {
        return this._identityService;
    }

    @Override // org.eclipse.jetty.security.Authenticator.AuthConfiguration
    public String getInitParameter(String str) {
        return this._initParameters.get(str);
    }

    @Override // org.eclipse.jetty.security.Authenticator.AuthConfiguration
    public Set<String> getInitParameterNames() {
        return this._initParameters.keySet();
    }

    @Override // org.eclipse.jetty.security.Authenticator.AuthConfiguration
    public LoginService getLoginService() {
        return this._loginService;
    }

    @Override // org.eclipse.jetty.security.Authenticator.AuthConfiguration
    public String getRealmName() {
        return this._realmName;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v27 */
    /* JADX WARN: Type inference failed for: r0v7, types: [org.eclipse.jetty.security.IdentityService] */
    /* JADX WARN: Type inference failed for: r1v1, types: [org.eclipse.jetty.security.IdentityService] */
    /* JADX WARN: Type inference failed for: r1v17, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v37 */
    /* JADX WARN: Type inference failed for: r1v38 */
    /* JADX WARN: Type inference failed for: r1v39 */
    /* JADX WARN: Type inference failed for: r1v40 */
    /* JADX WARN: Type inference failed for: r1v41 */
    /* JADX WARN: Type inference failed for: r1v42 */
    /* JADX WARN: Type inference failed for: r1v5, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v17 */
    /* JADX WARN: Type inference failed for: r3v18 */
    /* JADX WARN: Type inference failed for: r3v19 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v20 */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // org.eclipse.jetty.server.handler.HandlerWrapper, org.eclipse.jetty.server.Handler
    public void handle(String str, Request request, c cVar, e eVar) throws Throwable {
        e eVar2;
        ?? r3;
        ?? r02;
        Authentication authentication;
        c cVar2;
        Authentication.User user;
        Object obj;
        c httpServletRequest = cVar;
        e httpServletResponse = eVar;
        Response response = request.getResponse();
        Handler handler = getHandler();
        if (handler == null) {
            return;
        }
        Authenticator authenticator = this._authenticator;
        if (!checkSecurity(request)) {
            handler.handle(str, request, httpServletRequest, httpServletResponse);
            return;
        }
        Object objPrepareConstraintInfo = prepareConstraintInfo(str, request);
        if (!checkUserDataPermissions(str, request, response, objPrepareConstraintInfo)) {
            if (request.isHandled()) {
                return;
            }
            httpServletResponse.sendError(HttpStatus.FORBIDDEN_403);
            request.setHandled(true);
            return;
        }
        boolean zIsAuthMandatory = isAuthMandatory(request, response, objPrepareConstraintInfo);
        if (zIsAuthMandatory && authenticator == null) {
            LOG.warn("No authenticator for: " + objPrepareConstraintInfo, new Object[0]);
            if (request.isHandled()) {
                return;
            }
            httpServletResponse.sendError(HttpStatus.FORBIDDEN_403);
            request.setHandled(true);
            return;
        }
        ?? r32 = 0;
        ?? r33 = 0;
         = 0;
        ?? r34 = 0;
        try {
            try {
                authentication = request.getAuthentication();
                if (authentication == null || authentication == Authentication.NOT_CHECKED) {
                    authentication = authenticator == null ? Authentication.UNAUTHENTICATED : authenticator.validateRequest(httpServletRequest, httpServletResponse, zIsAuthMandatory);
                }
                if (authentication instanceof Authentication.Wrapped) {
                    httpServletRequest = ((Authentication.Wrapped) authentication).getHttpServletRequest();
                    httpServletResponse = ((Authentication.Wrapped) authentication).getHttpServletResponse();
                }
                cVar2 = httpServletRequest;
                eVar2 = httpServletResponse;
                try {
                } catch (ServerAuthException e4) {
                    e = e4;
                }
            } catch (ServerAuthException e5) {
                e = e5;
                eVar2 = httpServletResponse;
            }
            if (authentication instanceof Authentication.ResponseSent) {
                request.setHandled(true);
            } else {
                ?? previousAssociation = authentication instanceof Authentication.User;
                try {
                } catch (ServerAuthException e6) {
                    e = e6;
                } catch (Throwable th) {
                    th = th;
                }
                if (previousAssociation != 0) {
                    Authentication.User user2 = (Authentication.User) authentication;
                    request.setAuthentication(authentication);
                    IdentityService identityService = this._identityService;
                    Object objAssociate = identityService != null ? identityService.associate(user2.getUserIdentity()) : null;
                    if (zIsAuthMandatory) {
                        try {
                            user = user2;
                            Object obj2 = objAssociate;
                            try {
                                if (!checkWebResourcePermissions(str, request, response, objPrepareConstraintInfo, user2.getUserIdentity())) {
                                    eVar2.sendError(HttpStatus.FORBIDDEN_403, "!role");
                                    request.setHandled(true);
                                    IdentityService identityService2 = this._identityService;
                                    if (identityService2 != null) {
                                        identityService2.disassociate(obj2);
                                        return;
                                    }
                                    return;
                                }
                                obj = obj2;
                            } catch (ServerAuthException e7) {
                                e = e7;
                                previousAssociation = obj2;
                                r34 = previousAssociation;
                                eVar2.sendError(HttpStatus.INTERNAL_SERVER_ERROR_500, e.getMessage());
                                IdentityService identityService3 = this._identityService;
                                r02 = identityService3;
                                r3 = r34;
                                if (identityService3 == null) {
                                    return;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                previousAssociation = obj2;
                                r32 = previousAssociation;
                                ?? r12 = this._identityService;
                                if (r12 != 0) {
                                    r12.disassociate(r32);
                                }
                                throw th;
                            }
                        } catch (ServerAuthException e8) {
                            e = e8;
                            previousAssociation = objAssociate;
                        } catch (Throwable th3) {
                            th = th3;
                            previousAssociation = objAssociate;
                        }
                        r02.disassociate(r3);
                    }
                    user = user2;
                    obj = objAssociate;
                    handler.handle(str, request, cVar2, eVar2);
                    previousAssociation = obj;
                    if (authenticator != null) {
                        authenticator.secureResponse(cVar2, eVar2, zIsAuthMandatory, user);
                        previousAssociation = obj;
                    }
                } else if (authentication instanceof Authentication.Deferred) {
                    DeferredAuthentication deferredAuthentication = (DeferredAuthentication) authentication;
                    request.setAuthentication(authentication);
                    try {
                        handler.handle(str, request, cVar2, eVar2);
                        previousAssociation = deferredAuthentication.getPreviousAssociation();
                        if (authenticator != null) {
                            Authentication authentication2 = request.getAuthentication();
                            if (authentication2 instanceof Authentication.User) {
                                authenticator.secureResponse(cVar2, eVar2, zIsAuthMandatory, (Authentication.User) authentication2);
                                previousAssociation = previousAssociation;
                            } else {
                                authenticator.secureResponse(cVar2, eVar2, zIsAuthMandatory, null);
                                previousAssociation = previousAssociation;
                            }
                        }
                        r33 = previousAssociation;
                    } catch (Throwable th4) {
                        deferredAuthentication.getPreviousAssociation();
                        throw th4;
                    }
                } else {
                    request.setAuthentication(authentication);
                    IdentityService identityService4 = this._identityService;
                    Object objAssociate2 = identityService4 != null ? identityService4.associate(null) : null;
                    handler.handle(str, request, cVar2, eVar2);
                    previousAssociation = objAssociate2;
                    if (authenticator != null) {
                        authenticator.secureResponse(cVar2, eVar2, zIsAuthMandatory, null);
                        previousAssociation = objAssociate2;
                    }
                }
                r33 = previousAssociation;
            }
            IdentityService identityService5 = this._identityService;
            r02 = identityService5;
            r3 = r33;
            if (identityService5 == null) {
                return;
            }
            r02.disassociate(r3);
        } catch (Throwable th5) {
            th = th5;
        }
    }

    public abstract boolean isAuthMandatory(Request request, Response response, Object obj);

    public boolean isCheckWelcomeFiles() {
        return this._checkWelcomeFiles;
    }

    @Override // org.eclipse.jetty.security.Authenticator.AuthConfiguration
    public boolean isSessionRenewedOnAuthentication() {
        return this._renewSession;
    }

    public void logout(Authentication.User user) {
        LOG.debug("logout {}", user);
        LoginService loginService = getLoginService();
        if (loginService != null) {
            loginService.logout(user.getUserIdentity());
        }
        IdentityService identityService = getIdentityService();
        if (identityService != null) {
            identityService.disassociate(null);
        }
    }

    public abstract Object prepareConstraintInfo(String str, Request request);

    public void setAuthMethod(String str) {
        if (isRunning()) {
            throw new IllegalStateException("running");
        }
        this._authMethod = str;
    }

    public void setAuthenticator(Authenticator authenticator) {
        if (isStarted()) {
            throw new IllegalStateException("Started");
        }
        this._authenticator = authenticator;
    }

    public void setAuthenticatorFactory(Authenticator.Factory factory) {
        if (isRunning()) {
            throw new IllegalStateException("running");
        }
        this._authenticatorFactory = factory;
    }

    public void setCheckWelcomeFiles(boolean z3) {
        if (isRunning()) {
            throw new IllegalStateException("running");
        }
        this._checkWelcomeFiles = z3;
    }

    public void setIdentityService(IdentityService identityService) {
        if (isStarted()) {
            throw new IllegalStateException("Started");
        }
        this._identityService = identityService;
    }

    public String setInitParameter(String str, String str2) {
        if (isRunning()) {
            throw new IllegalStateException("running");
        }
        return this._initParameters.put(str, str2);
    }

    public void setLoginService(LoginService loginService) {
        if (isStarted()) {
            throw new IllegalStateException("Started");
        }
        this._loginService = loginService;
        this._loginServiceShared = false;
    }

    public void setRealmName(String str) {
        if (isRunning()) {
            throw new IllegalStateException("running");
        }
        this._realmName = str;
    }

    public void setSessionRenewedOnAuthentication(boolean z3) {
        this._renewSession = z3;
    }
}
