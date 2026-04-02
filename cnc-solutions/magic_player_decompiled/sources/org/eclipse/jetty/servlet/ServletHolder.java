package org.eclipse.jetty.servlet;

import android.support.v4.media.f;
import androidx.appcompat.view.a;
import g2.e0;
import g2.g0;
import g2.j0;
import g2.k;
import g2.k0;
import g2.n;
import g2.o;
import g2.p;
import g2.u;
import g2.x;
import g2.y;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.Stack;
import org.eclipse.jetty.security.IdentityService;
import org.eclipse.jetty.security.RunAsToken;
import org.eclipse.jetty.server.Dispatcher;
import org.eclipse.jetty.server.Request;
import org.eclipse.jetty.server.UserIdentity;
import org.eclipse.jetty.server.handler.ContextHandler;
import org.eclipse.jetty.servlet.Holder;
import org.eclipse.jetty.servlet.ServletContextHandler;
import org.eclipse.jetty.util.Loader;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class ServletHolder extends Holder<n> implements UserIdentity.Scope, Comparable {
    private static final Logger LOG = Log.getLogger((Class<?>) ServletHolder.class);
    public static final Map<String, String> NO_MAPPED_ROLES = Collections.emptyMap();
    private transient Config _config;
    private transient boolean _enabled;
    private String _forcedPath;
    private IdentityService _identityService;
    private boolean _initOnStartup;
    private int _initOrder;
    private x.a _registration;
    private Map<String, String> _roleMap;
    private String _runAsRole;
    private RunAsToken _runAsToken;
    private transient n _servlet;
    private transient long _unavailable;
    private transient k0 _unavailableEx;

    public class Config extends Holder<n>.HolderConfig implements o {
        public Config() {
            super();
        }

        @Override // g2.o
        public String getServletName() {
            return ServletHolder.this.getName();
        }
    }

    public class Registration extends Holder<n>.HolderRegistration implements x.a {
        public k _multipartConfig;

        public Registration() {
            super();
        }

        public Set<String> addMapping(String... strArr) {
            ServletHolder.this.illegalStateIfContextStarted();
            HashSet hashSet = null;
            for (String str : strArr) {
                ServletMapping servletMapping = ServletHolder.this._servletHandler.getServletMapping(str);
                if (servletMapping != null && !servletMapping.isDefault()) {
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(str);
                }
            }
            if (hashSet != null) {
                return hashSet;
            }
            ServletMapping servletMapping2 = new ServletMapping();
            servletMapping2.setServletName(ServletHolder.this.getName());
            servletMapping2.setPathSpecs(strArr);
            ServletHolder.this._servletHandler.addServletMapping(servletMapping2);
            return Collections.emptySet();
        }

        @Override // org.eclipse.jetty.servlet.Holder.HolderRegistration
        public /* bridge */ /* synthetic */ String getClassName() {
            return super.getClassName();
        }

        public int getInitOrder() {
            return ServletHolder.this.getInitOrder();
        }

        @Override // org.eclipse.jetty.servlet.Holder.HolderRegistration
        public /* bridge */ /* synthetic */ String getInitParameter(String str) {
            return super.getInitParameter(str);
        }

        @Override // org.eclipse.jetty.servlet.Holder.HolderRegistration
        public /* bridge */ /* synthetic */ Map getInitParameters() {
            return super.getInitParameters();
        }

        @Override // g2.x
        public Collection<String> getMappings() {
            String[] pathSpecs;
            ServletMapping[] servletMappings = ServletHolder.this._servletHandler.getServletMappings();
            ArrayList arrayList = new ArrayList();
            if (servletMappings != null) {
                for (ServletMapping servletMapping : servletMappings) {
                    if (servletMapping.getServletName().equals(getName()) && (pathSpecs = servletMapping.getPathSpecs()) != null && pathSpecs.length > 0) {
                        arrayList.addAll(Arrays.asList(pathSpecs));
                    }
                }
            }
            return arrayList;
        }

        public k getMultipartConfig() {
            return this._multipartConfig;
        }

        @Override // org.eclipse.jetty.servlet.Holder.HolderRegistration, g2.l
        public /* bridge */ /* synthetic */ String getName() {
            return super.getName();
        }

        public String getRunAsRole() {
            return ServletHolder.this._runAsRole;
        }

        @Override // org.eclipse.jetty.servlet.Holder.HolderRegistration
        public /* bridge */ /* synthetic */ void setAsyncSupported(boolean z3) {
            super.setAsyncSupported(z3);
        }

        @Override // org.eclipse.jetty.servlet.Holder.HolderRegistration
        public /* bridge */ /* synthetic */ void setDescription(String str) {
            super.setDescription(str);
        }

        @Override // org.eclipse.jetty.servlet.Holder.HolderRegistration
        public /* bridge */ /* synthetic */ boolean setInitParameter(String str, String str2) {
            return super.setInitParameter(str, str2);
        }

        @Override // org.eclipse.jetty.servlet.Holder.HolderRegistration
        public /* bridge */ /* synthetic */ Set setInitParameters(Map map) {
            return super.setInitParameters(map);
        }

        public void setLoadOnStartup(int i4) {
            ServletHolder.this.illegalStateIfContextStarted();
            ServletHolder.this.setInitOrder(i4);
        }

        public void setMultipartConfig(k kVar) {
            this._multipartConfig = kVar;
        }

        public void setRunAsRole(String str) {
            ServletHolder.this._runAsRole = str;
        }

        public Set<String> setServletSecurity(g0 g0Var) {
            return ServletHolder.this._servletHandler.setServletSecurity(this, g0Var);
        }
    }

    public class SingleThreadedWrapper implements n {
        public Stack<n> _stack;

        private SingleThreadedWrapper() {
            this._stack = new Stack<>();
        }

        @Override // g2.n
        public void destroy() {
            synchronized (this) {
                while (this._stack.size() > 0) {
                    try {
                        this._stack.pop().destroy();
                    } catch (Exception e4) {
                        ServletHolder.LOG.warn(e4);
                    }
                }
            }
        }

        public o getServletConfig() {
            return ServletHolder.this._config;
        }

        public String getServletInfo() {
            return null;
        }

        @Override // g2.n
        public void init(o oVar) {
            synchronized (this) {
                if (this._stack.size() == 0) {
                    try {
                        try {
                            n nVarNewInstance = ServletHolder.this.newInstance();
                            nVarNewInstance.init(oVar);
                            this._stack.push(nVarNewInstance);
                        } catch (Exception e4) {
                            throw new u(e4);
                        }
                    } catch (u e5) {
                        throw e5;
                    }
                }
            }
        }

        @Override // g2.n
        public void service(y yVar, e0 e0Var) {
            n nVarNewInstance;
            synchronized (this) {
                if (this._stack.size() > 0) {
                    nVarNewInstance = this._stack.pop();
                } else {
                    try {
                        nVarNewInstance = ServletHolder.this.newInstance();
                        nVarNewInstance.init(ServletHolder.this._config);
                    } catch (u e4) {
                        throw e4;
                    } catch (Exception e5) {
                        throw new u(e5);
                    }
                }
            }
            try {
                nVarNewInstance.service(yVar, e0Var);
                synchronized (this) {
                    this._stack.push(nVarNewInstance);
                }
            } catch (Throwable th) {
                synchronized (this) {
                    this._stack.push(nVarNewInstance);
                    throw th;
                }
            }
        }
    }

    public ServletHolder() {
        this(Holder.Source.EMBEDDED);
    }

    /* JADX WARN: Not initialized variable reg: 2, insn: 0x008b: MOVE (r0 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:49:0x008b */
    private void initServlet() throws Throwable {
        Object obj;
        Object runAs;
        Object obj2 = null;
        try {
            try {
                if (this._servlet == null) {
                    this._servlet = newInstance();
                }
                if (this._config == null) {
                    this._config = new Config();
                }
                IdentityService identityService = this._identityService;
                runAs = identityService != null ? identityService.setRunAs(identityService.getSystemUserIdentity(), this._runAsToken) : null;
            } catch (Throwable th) {
                th = th;
                obj2 = obj;
            }
            try {
                if (isJspServlet()) {
                    initJspServlet();
                }
                initMultiPart();
                this._servlet.init(this._config);
                IdentityService identityService2 = this._identityService;
                if (identityService2 != null) {
                    identityService2.unsetRunAs(runAs);
                }
            } catch (k0 e4) {
                e = e4;
                makeUnavailable(e);
                this._servlet = null;
                this._config = null;
                throw e;
            } catch (u e5) {
                e = e5;
                makeUnavailable(e.getCause() == null ? e : e.getCause());
                this._servlet = null;
                this._config = null;
                throw e;
            } catch (Exception e6) {
                e = e6;
                makeUnavailable(e);
                this._servlet = null;
                this._config = null;
                throw new u(toString(), e);
            } catch (Throwable th2) {
                Object obj3 = runAs;
                th = th2;
                obj2 = obj3;
                IdentityService identityService3 = this._identityService;
                if (identityService3 != null) {
                    identityService3.unsetRunAs(obj2);
                }
                throw th;
            }
        } catch (k0 e7) {
            e = e7;
        } catch (u e8) {
            e = e8;
        } catch (Exception e9) {
            e = e9;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private boolean isJspServlet() {
        n nVar = this._servlet;
        boolean zIsJspServlet = false;
        if (nVar == null) {
            return false;
        }
        for (Class<?> superclass = nVar.getClass(); superclass != null && !zIsJspServlet; superclass = superclass.getSuperclass()) {
            zIsJspServlet = isJspServlet(superclass.getName());
        }
        return zIsJspServlet;
    }

    private void makeUnavailable(k0 k0Var) {
        if (this._unavailableEx != k0Var || this._unavailable == 0) {
            this._servletHandler.getServletContext().log("unavailable", k0Var);
            this._unavailableEx = k0Var;
            this._unavailable = -1L;
            if (k0Var.isPermanent()) {
                this._unavailable = -1L;
            } else if (this._unavailableEx.getUnavailableSeconds() > 0) {
                this._unavailable = System.currentTimeMillis() + ((long) (this._unavailableEx.getUnavailableSeconds() * 1000));
            } else {
                this._unavailable = System.currentTimeMillis() + 5000;
            }
        }
    }

    public void checkServletType() throws k0 {
        Class<? extends T> cls = this._class;
        if (cls == 0 || !n.class.isAssignableFrom(cls)) {
            StringBuilder sbA = f.a("Servlet ");
            sbA.append(this._class);
            sbA.append(" is not a javax.servlet.Servlet");
            throw new k0(sbA.toString());
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        String str;
        if (!(obj instanceof ServletHolder)) {
            return 1;
        }
        ServletHolder servletHolder = (ServletHolder) obj;
        int iCompareTo = 0;
        if (servletHolder == this) {
            return 0;
        }
        int i4 = servletHolder._initOrder;
        int i5 = this._initOrder;
        if (i4 < i5) {
            return 1;
        }
        if (i4 > i5) {
            return -1;
        }
        String str2 = this._className;
        if (str2 != null && (str = servletHolder._className) != null) {
            iCompareTo = str2.compareTo(str);
        }
        return iCompareTo == 0 ? this._name.compareTo(servletHolder._name) : iCompareTo;
    }

    @Override // org.eclipse.jetty.servlet.Holder
    public void destroyInstance(Object obj) {
        if (obj == null) {
            return;
        }
        n nVar = (n) obj;
        getServletHandler().destroyServlet(nVar);
        nVar.destroy();
    }

    @Override // org.eclipse.jetty.servlet.Holder, org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStart() throws Exception {
        String str;
        this._unavailable = 0L;
        if (this._enabled) {
            try {
                super.doStart();
                try {
                    checkServletType();
                    IdentityService identityService = this._servletHandler.getIdentityService();
                    this._identityService = identityService;
                    if (identityService != null && (str = this._runAsRole) != null) {
                        this._runAsToken = identityService.newRunAsToken(str);
                    }
                    this._config = new Config();
                    Class<? extends T> cls = this._class;
                    if (cls != 0 && j0.class.isAssignableFrom(cls)) {
                        this._servlet = new SingleThreadedWrapper();
                    }
                    if (this._extInstance || this._initOnStartup) {
                        try {
                            initServlet();
                        } catch (Exception e4) {
                            if (!this._servletHandler.isStartWithUnavailable()) {
                                throw e4;
                            }
                            LOG.ignore(e4);
                        }
                    }
                } catch (k0 e5) {
                    makeUnavailable(e5);
                    if (!this._servletHandler.isStartWithUnavailable()) {
                        throw e5;
                    }
                    LOG.ignore(e5);
                }
            } catch (k0 e6) {
                makeUnavailable(e6);
                if (!this._servletHandler.isStartWithUnavailable()) {
                    throw e6;
                }
                LOG.ignore(e6);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0043  */
    @Override // org.eclipse.jetty.servlet.Holder, org.eclipse.jetty.util.component.AbstractLifeCycle
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void doStop() throws java.lang.Throwable {
        /*
            r5 = this;
            g2.n r0 = r5._servlet
            r1 = 0
            if (r0 == 0) goto L47
            org.eclipse.jetty.security.IdentityService r0 = r5._identityService     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L2e
            if (r0 == 0) goto L14
            org.eclipse.jetty.server.UserIdentity r2 = r0.getSystemUserIdentity()     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L2e
            org.eclipse.jetty.security.RunAsToken r3 = r5._runAsToken     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L2e
            java.lang.Object r0 = r0.setRunAs(r2, r3)     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L2e
            goto L15
        L14:
            r0 = r1
        L15:
            g2.n r2 = r5._servlet     // Catch: java.lang.Throwable -> L22 java.lang.Exception -> L27
            r5.destroyInstance(r2)     // Catch: java.lang.Throwable -> L22 java.lang.Exception -> L27
            org.eclipse.jetty.security.IdentityService r2 = r5._identityService
            if (r2 == 0) goto L47
            r2.unsetRunAs(r0)
            goto L47
        L22:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
            goto L3f
        L27:
            r2 = move-exception
            r4 = r2
            r2 = r0
            r0 = r4
            goto L30
        L2c:
            r0 = move-exception
            goto L3f
        L2e:
            r0 = move-exception
            r2 = r1
        L30:
            org.eclipse.jetty.util.log.Logger r3 = org.eclipse.jetty.servlet.ServletHolder.LOG     // Catch: java.lang.Throwable -> L3d
            r3.warn(r0)     // Catch: java.lang.Throwable -> L3d
            org.eclipse.jetty.security.IdentityService r0 = r5._identityService
            if (r0 == 0) goto L47
            r0.unsetRunAs(r2)
            goto L47
        L3d:
            r0 = move-exception
            r1 = r2
        L3f:
            org.eclipse.jetty.security.IdentityService r2 = r5._identityService
            if (r2 == 0) goto L46
            r2.unsetRunAs(r1)
        L46:
            throw r0
        L47:
            boolean r0 = r5._extInstance
            if (r0 != 0) goto L4d
            r5._servlet = r1
        L4d:
            r5._config = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.servlet.ServletHolder.doStop():void");
    }

    public boolean equals(Object obj) {
        return compareTo(obj) == 0;
    }

    @Override // org.eclipse.jetty.server.UserIdentity.Scope
    public String getContextPath() {
        return this._config.getServletContext().getContextPath();
    }

    public String getForcedPath() {
        return this._forcedPath;
    }

    public int getInitOrder() {
        return this._initOrder;
    }

    public x.a getRegistration() {
        if (this._registration == null) {
            this._registration = new Registration();
        }
        return this._registration;
    }

    public Map<String, String> getRoleMap() {
        Map<String, String> map = this._roleMap;
        return map == null ? NO_MAPPED_ROLES : map;
    }

    @Override // org.eclipse.jetty.server.UserIdentity.Scope
    public Map<String, String> getRoleRefMap() {
        return this._roleMap;
    }

    public String getRunAsRole() {
        return this._runAsRole;
    }

    public synchronized n getServlet() {
        long j4 = this._unavailable;
        if (j4 != 0) {
            if (j4 < 0 || (j4 > 0 && System.currentTimeMillis() < this._unavailable)) {
                throw this._unavailableEx;
            }
            this._unavailable = 0L;
            this._unavailableEx = null;
        }
        if (this._servlet == null) {
            initServlet();
        }
        return this._servlet;
    }

    public n getServletInstance() {
        return this._servlet;
    }

    public k0 getUnavailableException() {
        return this._unavailableEx;
    }

    public String getUserRoleLink(String str) {
        String str2;
        Map<String, String> map = this._roleMap;
        return (map == null || (str2 = map.get(str)) == null) ? str : str2;
    }

    public void handle(Request request, y yVar, e0 e0Var) {
        if (this._class == null) {
            throw new k0("Servlet Not Initialized");
        }
        n servlet = this._servlet;
        synchronized (this) {
            if (!isStarted()) {
                throw new k0("Servlet not initialized", -1);
            }
            if (this._unavailable != 0 || !this._initOnStartup) {
                servlet = getServlet();
            }
            if (servlet == null) {
                throw new k0("Could not instantiate " + this._class);
            }
        }
        boolean zIsAsyncSupported = request.isAsyncSupported();
        try {
            try {
                String str = this._forcedPath;
                if (str != null) {
                    yVar.setAttribute(Dispatcher.__JSP_FILE, str);
                }
                IdentityService identityService = this._identityService;
                runAs = identityService != null ? identityService.setRunAs(request.getResolvedUserIdentity(), this._runAsToken) : null;
                if (!isAsyncSupported()) {
                    request.setAsyncSupported(false);
                }
                k multipartConfig = ((Registration) getRegistration()).getMultipartConfig();
                if (multipartConfig != null) {
                    yVar.setAttribute(Request.__MULTIPART_CONFIG_ELEMENT, multipartConfig);
                }
                servlet.service(yVar, e0Var);
                request.setAsyncSupported(zIsAsyncSupported);
                IdentityService identityService2 = this._identityService;
                if (identityService2 != null) {
                    identityService2.unsetRunAs(runAs);
                }
            } catch (k0 e4) {
                makeUnavailable(e4);
                throw this._unavailableEx;
            }
        } catch (Throwable th) {
            request.setAsyncSupported(zIsAsyncSupported);
            IdentityService identityService3 = this._identityService;
            if (identityService3 != null) {
                identityService3.unsetRunAs(runAs);
            }
            yVar.setAttribute("javax.servlet.error.servlet_name", getName());
            throw th;
        }
    }

    public int hashCode() {
        String str = this._name;
        return str == null ? System.identityHashCode(this) : str.hashCode();
    }

    public void initJspServlet() {
        ContextHandler contextHandler = ((ContextHandler.Context) getServletHandler().getServletContext()).getContextHandler();
        contextHandler.setAttribute("org.apache.catalina.jsp_classpath", contextHandler.getClassPath());
        setInitParameter("com.sun.appserv.jsp.classpath", Loader.getClassPath(contextHandler.getClassLoader().getParent()));
        if ("?".equals(getInitParameter("classpath"))) {
            String classPath = contextHandler.getClassPath();
            LOG.debug(a.a("classpath=", classPath), new Object[0]);
            if (classPath != null) {
                setInitParameter("classpath", classPath);
            }
        }
    }

    public void initMultiPart() {
        if (((Registration) getRegistration()).getMultipartConfig() != null) {
            ((ContextHandler.Context) getServletHandler().getServletContext()).getContextHandler().addEventListener(new Request.MultiPartCleanerListener());
        }
    }

    public boolean isAvailable() {
        if (isStarted() && this._unavailable == 0) {
            return true;
        }
        try {
            getServlet();
        } catch (Exception e4) {
            LOG.ignore(e4);
        }
        return isStarted() && this._unavailable == 0;
    }

    public boolean isEnabled() {
        return this._enabled;
    }

    public boolean isSetInitOrder() {
        return this._initOnStartup;
    }

    public n newInstance() throws IllegalAccessException, InstantiationException, u {
        try {
            p servletContext = getServletHandler().getServletContext();
            return servletContext == null ? getHeldClass().newInstance() : ((ServletContextHandler.Context) servletContext).createServlet(getHeldClass());
        } catch (u e4) {
            Throwable rootCause = e4.getRootCause();
            if (rootCause instanceof InstantiationException) {
                throw ((InstantiationException) rootCause);
            }
            if (rootCause instanceof IllegalAccessException) {
                throw ((IllegalAccessException) rootCause);
            }
            throw e4;
        }
    }

    public void setEnabled(boolean z3) {
        this._enabled = z3;
    }

    public void setForcedPath(String str) {
        this._forcedPath = str;
    }

    public void setInitOrder(int i4) {
        this._initOnStartup = true;
        this._initOrder = i4;
    }

    public void setRunAsRole(String str) {
        this._runAsRole = str;
    }

    public synchronized void setServlet(n nVar) {
        if (nVar != null) {
            if (!(nVar instanceof j0)) {
                this._extInstance = true;
                this._servlet = nVar;
                setHeldClass(nVar.getClass());
                if (getName() == null) {
                    setName(nVar.getClass().getName() + "-" + super.hashCode());
                }
            }
        }
        throw new IllegalArgumentException();
    }

    public synchronized void setUserRoleLink(String str, String str2) {
        if (this._roleMap == null) {
            this._roleMap = new HashMap();
        }
        this._roleMap.put(str, str2);
    }

    public ServletHolder(Holder.Source source) {
        super(source);
        this._initOnStartup = false;
        this._enabled = true;
    }

    public ServletHolder(n nVar) {
        this(Holder.Source.EMBEDDED);
        setServlet(nVar);
    }

    private boolean isJspServlet(String str) {
        if (str == null) {
            return false;
        }
        return "org.apache.jasper.servlet.JspServlet".equals(str);
    }

    public ServletHolder(String str, Class<? extends n> cls) {
        this(Holder.Source.EMBEDDED);
        setName(str);
        setHeldClass(cls);
    }

    public ServletHolder(String str, n nVar) {
        this(Holder.Source.EMBEDDED);
        setName(str);
        setServlet(nVar);
    }

    private void makeUnavailable(Throwable th) {
        if (th instanceof k0) {
            makeUnavailable((k0) th);
            return;
        }
        p servletContext = this._servletHandler.getServletContext();
        if (servletContext == null) {
            LOG.info("unavailable", th);
        } else {
            servletContext.log("unavailable", th);
        }
        this._unavailableEx = new k0(String.valueOf(th), -1, th) { // from class: org.eclipse.jetty.servlet.ServletHolder.1
            public final /* synthetic */ Throwable val$e;

            {
                this.val$e = th;
                initCause(th);
            }
        };
        this._unavailable = -1L;
    }

    public ServletHolder(Class<? extends n> cls) {
        this(Holder.Source.EMBEDDED);
        setHeldClass(cls);
    }
}
