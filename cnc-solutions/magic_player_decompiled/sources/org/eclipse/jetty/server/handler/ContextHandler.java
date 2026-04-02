package org.eclipse.jetty.server.handler;

import android.support.v4.media.f;
import g2.a0;
import g2.b0;
import g2.c0;
import g2.d;
import g2.e;
import g2.h;
import g2.h0;
import g2.i0;
import g2.m;
import g2.n;
import g2.p;
import g2.q;
import g2.r;
import g2.s;
import g2.t;
import g2.u;
import g2.x;
import i2.a;
import j2.c;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLClassLoader;
import java.security.AccessController;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Enumeration;
import java.util.EventListener;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import org.eclipse.jetty.http.HttpException;
import org.eclipse.jetty.http.HttpStatus;
import org.eclipse.jetty.http.MimeTypes;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.server.AbstractHttpConnection;
import org.eclipse.jetty.server.Dispatcher;
import org.eclipse.jetty.server.Handler;
import org.eclipse.jetty.server.HandlerContainer;
import org.eclipse.jetty.server.Request;
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.util.Attributes;
import org.eclipse.jetty.util.AttributesMap;
import org.eclipse.jetty.util.LazyList;
import org.eclipse.jetty.util.Loader;
import org.eclipse.jetty.util.StringUtil;
import org.eclipse.jetty.util.TypeUtil;
import org.eclipse.jetty.util.URIUtil;
import org.eclipse.jetty.util.component.AggregateLifeCycle;
import org.eclipse.jetty.util.component.Dumpable;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;
import org.eclipse.jetty.util.resource.Resource;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes2.dex */
public class ContextHandler extends ScopedHandler implements Attributes, Server.Graceful {
    public static final String MANAGED_ATTRIBUTES = "org.eclipse.jetty.server.context.ManagedAttributes";
    private static final int __AVAILABLE = 1;
    private static final int __SHUTDOWN = 2;
    private static final int __STOPPED = 0;
    private static final int __UNAVAILABLE = 3;
    private final CopyOnWriteArrayList<AliasCheck> _aliasChecks;
    private boolean _aliasesAllowed;
    private boolean _allowNullPathInfo;
    private final AttributesMap _attributes;
    private volatile int _availability;
    private boolean _available;
    private Resource _baseResource;
    private ClassLoader _classLoader;
    private boolean _compactPath;
    private Set<String> _connectors;
    private Object _contextAttributeListeners;
    private final AttributesMap _contextAttributes;
    private Object _contextListeners;
    private String _contextPath;
    private String _displayName;
    private Object _durableListeners;
    private ErrorHandler _errorHandler;
    private EventListener[] _eventListeners;
    private final Map<String, String> _initParams;
    private Map<String, String> _localeEncodingMap;
    private Logger _logger;
    private Map<String, Object> _managedAttributes;
    private int _maxFormContentSize;
    private int _maxFormKeys;
    private MimeTypes _mimeTypes;
    private String[] _protectedTargets;
    private Object _requestAttributeListeners;
    private Object _requestListeners;
    public Context _scontext;
    private boolean _shutdown;
    private String[] _vhosts;
    private String[] _welcomeFiles;
    private static final Logger LOG = Log.getLogger((Class<?>) ContextHandler.class);
    private static final ThreadLocal<Context> __context = new ThreadLocal<>();

    public interface AliasCheck {
        boolean check(String str, Resource resource);
    }

    public static class ApproveNonExistentDirectoryAliases implements AliasCheck {
        @Override // org.eclipse.jetty.server.handler.ContextHandler.AliasCheck
        public boolean check(String str, Resource resource) {
            if (resource.exists()) {
                return false;
            }
            String string = resource.getAlias().toString();
            String string2 = resource.getURL().toString();
            return string.length() > string2.length() ? string.startsWith(string2) && string.length() == string2.length() + 1 && string.endsWith("/") : string2.startsWith(string) && string2.length() == string.length() + 1 && string2.endsWith("/");
        }
    }

    @Deprecated
    public static class ApprovePathPrefixAliases implements AliasCheck {
        public ApprovePathPrefixAliases() {
            ContextHandler.LOG.warn("ApprovePathPrefixAliases is not safe for production", new Object[0]);
        }

        @Override // org.eclipse.jetty.server.handler.ContextHandler.AliasCheck
        public boolean check(String str, Resource resource) {
            int iLastIndexOf = str.lastIndexOf(47);
            if (iLastIndexOf < 0 || iLastIndexOf == str.length() - 1) {
                return false;
            }
            return resource.toString().endsWith(str.substring(iLastIndexOf));
        }
    }

    @Deprecated
    public static class ApproveSameSuffixAliases implements AliasCheck {
        public ApproveSameSuffixAliases() {
            ContextHandler.LOG.warn("ApproveSameSuffixAlias is not safe for production", new Object[0]);
        }

        @Override // org.eclipse.jetty.server.handler.ContextHandler.AliasCheck
        public boolean check(String str, Resource resource) {
            int iLastIndexOf = str.lastIndexOf(46);
            if (iLastIndexOf < 0) {
                return false;
            }
            return resource.toString().endsWith(str.substring(iLastIndexOf));
        }
    }

    public static class CLDump implements Dumpable {
        public final ClassLoader _loader;

        public CLDump(ClassLoader classLoader) {
            this._loader = classLoader;
        }

        @Override // org.eclipse.jetty.util.component.Dumpable
        public String dump() {
            return AggregateLifeCycle.dump(this);
        }

        @Override // org.eclipse.jetty.util.component.Dumpable
        public void dump(Appendable appendable, String str) throws IOException {
            ClassLoader parent;
            appendable.append(String.valueOf(this._loader)).append("\n");
            ClassLoader classLoader = this._loader;
            if (classLoader == null || (parent = classLoader.getParent()) == null) {
                return;
            }
            boolean z3 = parent instanceof Dumpable;
            Object cLDump = parent;
            if (!z3) {
                cLDump = new CLDump(parent);
            }
            ClassLoader classLoader2 = this._loader;
            if (classLoader2 instanceof URLClassLoader) {
                AggregateLifeCycle.dump(appendable, str, TypeUtil.asList(((URLClassLoader) classLoader2).getURLs()), Collections.singleton(cLDump));
            } else {
                AggregateLifeCycle.dump(appendable, str, Collections.singleton(cLDump));
            }
        }
    }

    public class Context implements p {
        private static final String __unimplmented = "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler";
        public int _majorVersion = 3;
        public int _minorVersion = 0;
        public boolean _enabled = true;

        public Context() {
        }

        public h.a addFilter(String str, Class<? extends e> cls) {
            ContextHandler.LOG.warn(__unimplmented, new Object[0]);
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void addListener(String str) {
            if (!this._enabled) {
                throw new UnsupportedOperationException();
            }
            try {
                addListener((Class<? extends EventListener>) (ContextHandler.this._classLoader == null ? Loader.loadClass(ContextHandler.class, str) : ContextHandler.this._classLoader.loadClass(str)));
            } catch (ClassNotFoundException e4) {
                throw new IllegalArgumentException(e4);
            }
        }

        public x.a addServlet(String str, Class<? extends n> cls) {
            ContextHandler.LOG.warn(__unimplmented, new Object[0]);
            return null;
        }

        public <T extends e> T createFilter(Class<T> cls) {
            ContextHandler.LOG.warn(__unimplmented, new Object[0]);
            return null;
        }

        public <T extends EventListener> T createListener(Class<T> cls) throws u {
            try {
                return cls.newInstance();
            } catch (IllegalAccessException e4) {
                throw new u(e4);
            } catch (InstantiationException e5) {
                throw new u(e5);
            }
        }

        public <T extends n> T createServlet(Class<T> cls) {
            ContextHandler.LOG.warn(__unimplmented, new Object[0]);
            return null;
        }

        public void declareRoles(String... strArr) {
            if (!ContextHandler.this.isStarting()) {
                throw new IllegalStateException();
            }
            if (!this._enabled) {
                throw new UnsupportedOperationException();
            }
        }

        @Override // g2.p
        public synchronized Object getAttribute(String str) {
            Object attribute;
            attribute = ContextHandler.this.getAttribute(str);
            if (attribute == null && ContextHandler.this._contextAttributes != null) {
                attribute = ContextHandler.this._contextAttributes.getAttribute(str);
            }
            return attribute;
        }

        public synchronized Enumeration getAttributeNames() {
            HashSet hashSet;
            hashSet = new HashSet();
            if (ContextHandler.this._contextAttributes != null) {
                Enumeration<String> attributeNames = ContextHandler.this._contextAttributes.getAttributeNames();
                while (attributeNames.hasMoreElements()) {
                    hashSet.add(attributeNames.nextElement());
                }
            }
            Enumeration<String> attributeNames2 = ContextHandler.this._attributes.getAttributeNames();
            while (attributeNames2.hasMoreElements()) {
                hashSet.add(attributeNames2.nextElement());
            }
            return Collections.enumeration(hashSet);
        }

        public ClassLoader getClassLoader() {
            AccessController.checkPermission(new RuntimePermission("getClassLoader"));
            return ContextHandler.this._classLoader;
        }

        /* JADX WARN: Removed duplicated region for block: B:38:0x009b  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x00af A[PHI: r4 r8
          0x00af: PHI (r4v6 int) = (r4v2 int), (r4v2 int), (r4v2 int), (r4v9 int), (r4v2 int) binds: [B:6:0x0020, B:21:0x005b, B:23:0x0062, B:87:0x00af, B:15:0x0044] A[DONT_GENERATE, DONT_INLINE]
          0x00af: PHI (r8v8 java.lang.String) = 
          (r8v1 java.lang.String)
          (r8v1 java.lang.String)
          (r8v1 java.lang.String)
          (r8v12 java.lang.String)
          (r8v1 java.lang.String)
         binds: [B:6:0x0020, B:21:0x005b, B:23:0x0062, B:87:0x00af, B:15:0x0044] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:90:0x00a1 A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public g2.p getContext(java.lang.String r18) {
            /*
                Method dump skipped, instruction units count: 319
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.server.handler.ContextHandler.Context.getContext(java.lang.String):g2.p");
        }

        public ContextHandler getContextHandler() {
            return ContextHandler.this;
        }

        @Override // g2.p
        public String getContextPath() {
            return (ContextHandler.this._contextPath == null || !ContextHandler.this._contextPath.equals("/")) ? ContextHandler.this._contextPath : "";
        }

        public Set<i0> getDefaultSessionTrackingModes() {
            ContextHandler.LOG.warn(__unimplmented, new Object[0]);
            return null;
        }

        public int getEffectiveMajorVersion() {
            return this._majorVersion;
        }

        public int getEffectiveMinorVersion() {
            return this._minorVersion;
        }

        public Set<i0> getEffectiveSessionTrackingModes() {
            ContextHandler.LOG.warn(__unimplmented, new Object[0]);
            return null;
        }

        public h getFilterRegistration(String str) {
            ContextHandler.LOG.warn(__unimplmented, new Object[0]);
            return null;
        }

        public Map<String, ? extends h> getFilterRegistrations() {
            ContextHandler.LOG.warn(__unimplmented, new Object[0]);
            return null;
        }

        @Override // g2.p
        public String getInitParameter(String str) {
            return ContextHandler.this.getInitParameter(str);
        }

        public Enumeration getInitParameterNames() {
            return ContextHandler.this.getInitParameterNames();
        }

        public a getJspConfigDescriptor() {
            ContextHandler.LOG.warn(__unimplmented, new Object[0]);
            return null;
        }

        @Override // g2.p
        public int getMajorVersion() {
            return 3;
        }

        @Override // g2.p
        public String getMimeType(String str) {
            Buffer mimeByExtension;
            if (ContextHandler.this._mimeTypes == null || (mimeByExtension = ContextHandler.this._mimeTypes.getMimeByExtension(str)) == null) {
                return null;
            }
            return mimeByExtension.toString();
        }

        public int getMinorVersion() {
            return 0;
        }

        public m getNamedDispatcher(String str) {
            return null;
        }

        public String getRealPath(String str) {
            File file;
            if (str == null) {
                return null;
            }
            if (str.length() == 0) {
                str = "/";
            } else if (str.charAt(0) != '/') {
                str = androidx.appcompat.view.a.a("/", str);
            }
            try {
                Resource resource = ContextHandler.this.getResource(str);
                if (resource != null && (file = resource.getFile()) != null) {
                    return file.getCanonicalPath();
                }
            } catch (Exception e4) {
                ContextHandler.LOG.ignore(e4);
            }
            return null;
        }

        @Override // g2.p
        public m getRequestDispatcher(String str) {
            String strSubstring;
            if (str == null || !str.startsWith("/")) {
                return null;
            }
            try {
                int iIndexOf = str.indexOf(63);
                if (iIndexOf > 0) {
                    strSubstring = str.substring(iIndexOf + 1);
                    str = str.substring(0, iIndexOf);
                } else {
                    strSubstring = null;
                }
                String strCanonicalPath = URIUtil.canonicalPath(URIUtil.decodePath(str));
                if (strCanonicalPath != null) {
                    return new Dispatcher(ContextHandler.this, URIUtil.addPaths(getContextPath(), str), strCanonicalPath, strSubstring);
                }
            } catch (Exception e4) {
                ContextHandler.LOG.ignore(e4);
            }
            return null;
        }

        @Override // g2.p
        public URL getResource(String str) throws MalformedURLException {
            Resource resource = ContextHandler.this.getResource(str);
            if (resource == null || !resource.exists()) {
                return null;
            }
            return resource.getURL();
        }

        public InputStream getResourceAsStream(String str) {
            try {
                URL resource = getResource(str);
                if (resource == null) {
                    return null;
                }
                return Resource.newResource(resource).getInputStream();
            } catch (Exception e4) {
                ContextHandler.LOG.ignore(e4);
                return null;
            }
        }

        public Set getResourcePaths(String str) {
            return ContextHandler.this.getResourcePaths(str);
        }

        public String getServerInfo() {
            StringBuilder sbA = f.a("jetty/");
            sbA.append(Server.getVersion());
            return sbA.toString();
        }

        @Deprecated
        public n getServlet(String str) {
            return null;
        }

        public String getServletContextName() {
            String displayName = ContextHandler.this.getDisplayName();
            return displayName == null ? ContextHandler.this.getContextPath() : displayName;
        }

        @Deprecated
        public Enumeration getServletNames() {
            return Collections.enumeration(Collections.EMPTY_LIST);
        }

        public x getServletRegistration(String str) {
            ContextHandler.LOG.warn(__unimplmented, new Object[0]);
            return null;
        }

        public Map<String, ? extends x> getServletRegistrations() {
            ContextHandler.LOG.warn(__unimplmented, new Object[0]);
            return null;
        }

        @Deprecated
        public Enumeration getServlets() {
            return Collections.enumeration(Collections.EMPTY_LIST);
        }

        public h0 getSessionCookieConfig() {
            ContextHandler.LOG.warn(__unimplmented, new Object[0]);
            return null;
        }

        public boolean isEnabled() {
            return this._enabled;
        }

        public void log(Exception exc, String str) {
            ContextHandler.this._logger.warn(str, exc);
        }

        public synchronized void removeAttribute(String str) {
            ContextHandler.this.checkManagedAttribute(str, null);
            if (ContextHandler.this._contextAttributes == null) {
                ContextHandler.this._attributes.removeAttribute(str);
                return;
            }
            Object attribute = ContextHandler.this._contextAttributes.getAttribute(str);
            ContextHandler.this._contextAttributes.removeAttribute(str);
            if (attribute != null && ContextHandler.this._contextAttributeListeners != null) {
                q qVar = new q(ContextHandler.this._scontext, str, attribute);
                for (int i4 = 0; i4 < LazyList.size(ContextHandler.this._contextAttributeListeners); i4++) {
                    ((r) LazyList.get(ContextHandler.this._contextAttributeListeners, i4)).b(qVar);
                }
            }
        }

        public synchronized void setAttribute(String str, Object obj) {
            ContextHandler.this.checkManagedAttribute(str, obj);
            Object attribute = ContextHandler.this._contextAttributes.getAttribute(str);
            if (obj == null) {
                ContextHandler.this._contextAttributes.removeAttribute(str);
            } else {
                ContextHandler.this._contextAttributes.setAttribute(str, obj);
            }
            if (ContextHandler.this._contextAttributeListeners != null) {
                q qVar = new q(ContextHandler.this._scontext, str, attribute == null ? obj : attribute);
                for (int i4 = 0; i4 < LazyList.size(ContextHandler.this._contextAttributeListeners); i4++) {
                    r rVar = (r) LazyList.get(ContextHandler.this._contextAttributeListeners, i4);
                    if (attribute == null) {
                        rVar.a(qVar);
                    } else if (obj == null) {
                        rVar.b(qVar);
                    } else {
                        rVar.e(qVar);
                    }
                }
            }
        }

        public void setEffectiveMajorVersion(int i4) {
            this._majorVersion = i4;
        }

        public void setEffectiveMinorVersion(int i4) {
            this._minorVersion = i4;
        }

        public void setEnabled(boolean z3) {
            this._enabled = z3;
        }

        public boolean setInitParameter(String str, String str2) {
            if (ContextHandler.this.getInitParameter(str) != null) {
                return false;
            }
            ContextHandler.this.getInitParams().put(str, str2);
            return true;
        }

        public void setJspConfigDescriptor(a aVar) {
        }

        public void setSessionTrackingModes(Set<i0> set) {
            ContextHandler.LOG.warn(__unimplmented, new Object[0]);
        }

        public String toString() {
            StringBuilder sbA = f.a("ServletContext@");
            sbA.append(ContextHandler.this.toString());
            return sbA.toString();
        }

        public h.a addFilter(String str, e eVar) {
            ContextHandler.LOG.warn(__unimplmented, new Object[0]);
            return null;
        }

        public x.a addServlet(String str, n nVar) {
            ContextHandler.LOG.warn(__unimplmented, new Object[0]);
            return null;
        }

        @Override // g2.p
        public void log(String str) {
            ContextHandler.this._logger.info(str, new Object[0]);
        }

        public h.a addFilter(String str, String str2) {
            ContextHandler.LOG.warn(__unimplmented, new Object[0]);
            return null;
        }

        public x.a addServlet(String str, String str2) {
            ContextHandler.LOG.warn(__unimplmented, new Object[0]);
            return null;
        }

        @Override // g2.p
        public void log(String str, Throwable th) {
            ContextHandler.this._logger.warn(str, th);
        }

        public <T extends EventListener> void addListener(T t3) {
            if (this._enabled) {
                ContextHandler.this.addEventListener(t3);
                ContextHandler.this.restrictEventListener(t3);
                return;
            }
            throw new UnsupportedOperationException();
        }

        public void addListener(Class<? extends EventListener> cls) {
            if (this._enabled) {
                try {
                    EventListener eventListenerCreateListener = createListener(cls);
                    ContextHandler.this.addEventListener(eventListenerCreateListener);
                    ContextHandler.this.restrictEventListener(eventListenerCreateListener);
                    return;
                } catch (u e4) {
                    throw new IllegalArgumentException(e4);
                }
            }
            throw new UnsupportedOperationException();
        }
    }

    public ContextHandler() {
        this._contextPath = "/";
        this._maxFormKeys = Integer.getInteger("org.eclipse.jetty.server.Request.maxFormKeys", -1).intValue();
        this._maxFormContentSize = Integer.getInteger("org.eclipse.jetty.server.Request.maxFormContentSize", -1).intValue();
        this._compactPath = false;
        this._aliasesAllowed = false;
        this._aliasChecks = new CopyOnWriteArrayList<>();
        this._shutdown = false;
        this._available = true;
        this._scontext = new Context();
        this._attributes = new AttributesMap();
        this._contextAttributes = new AttributesMap();
        this._initParams = new HashMap();
        addAliasCheck(new ApproveNonExistentDirectoryAliases());
    }

    public static Context getCurrentContext() {
        return __context.get();
    }

    private String normalizeHostname(String str) {
        if (str == null) {
            return null;
        }
        return str.endsWith(".") ? str.substring(0, str.length() - 1) : str;
    }

    public void addAliasCheck(AliasCheck aliasCheck) {
        this._aliasChecks.add(aliasCheck);
    }

    public void addEventListener(EventListener eventListener) {
        if (!isStarted() && !isStarting()) {
            this._durableListeners = LazyList.add(this._durableListeners, eventListener);
        }
        setEventListeners((EventListener[]) LazyList.addToArray(getEventListeners(), eventListener, EventListener.class));
    }

    public void addLocaleEncoding(String str, String str2) {
        if (this._localeEncodingMap == null) {
            this._localeEncodingMap = new HashMap();
        }
        this._localeEncodingMap.put(str, str2);
    }

    public void addVirtualHosts(String[] strArr) {
        if (strArr == null) {
            return;
        }
        ArrayList arrayList = this._vhosts != null ? new ArrayList(Arrays.asList(this._vhosts)) : new ArrayList();
        for (String str : strArr) {
            String strNormalizeHostname = normalizeHostname(str);
            if (!arrayList.contains(strNormalizeHostname)) {
                arrayList.add(strNormalizeHostname);
            }
        }
        this._vhosts = (String[]) arrayList.toArray(new String[0]);
    }

    public void callContextDestroyed(t tVar, s sVar) {
        tVar.contextDestroyed(sVar);
    }

    public void callContextInitialized(t tVar, s sVar) {
        tVar.contextInitialized(sVar);
    }

    public boolean checkAlias(String str, Resource resource) {
        if (this._aliasesAllowed || resource.getAlias() == null) {
            return true;
        }
        Logger logger = LOG;
        if (logger.isDebugEnabled()) {
            logger.debug("Aliased resource: " + resource + "~=" + resource.getAlias(), new Object[0]);
        }
        for (AliasCheck aliasCheck : this._aliasChecks) {
            if (aliasCheck.check(str, resource)) {
                Logger logger2 = LOG;
                if (logger2.isDebugEnabled()) {
                    logger2.debug("Aliased resource: " + resource + " approved by " + aliasCheck, new Object[0]);
                }
                return true;
            }
        }
        return false;
    }

    public boolean checkContext(String str, Request request, j2.e eVar) {
        String name;
        d dispatcherType = request.getDispatcherType();
        int i4 = this._availability;
        if (i4 != 0 && i4 != 2) {
            if (i4 != 3) {
                if (d.REQUEST.equals(dispatcherType) && request.isHandled()) {
                    return false;
                }
                String[] strArr = this._vhosts;
                if (strArr != null && strArr.length > 0) {
                    String strNormalizeHostname = normalizeHostname(request.getServerName());
                    boolean zRegionMatches = false;
                    int i5 = 0;
                    while (!zRegionMatches) {
                        String[] strArr2 = this._vhosts;
                        if (i5 >= strArr2.length) {
                            break;
                        }
                        String str2 = strArr2[i5];
                        if (str2 != null) {
                            zRegionMatches = str2.startsWith("*.") ? str2.regionMatches(true, 2, strNormalizeHostname, strNormalizeHostname.indexOf(".") + 1, str2.length() - 2) : str2.equalsIgnoreCase(strNormalizeHostname);
                        }
                        i5++;
                    }
                    if (!zRegionMatches) {
                        return false;
                    }
                }
                Set<String> set = this._connectors;
                if (set != null && set.size() > 0 && ((name = AbstractHttpConnection.getCurrentConnection().getConnector().getName()) == null || !this._connectors.contains(name))) {
                    return false;
                }
                if (this._contextPath.length() > 1) {
                    if (!str.startsWith(this._contextPath)) {
                        return false;
                    }
                    if (str.length() > this._contextPath.length() && str.charAt(this._contextPath.length()) != '/') {
                        return false;
                    }
                    if (!this._allowNullPathInfo && this._contextPath.length() == str.length()) {
                        request.setHandled(true);
                        if (request.getQueryString() != null) {
                            eVar.sendRedirect(URIUtil.addPaths(request.getRequestURI(), "/") + "?" + request.getQueryString());
                        } else {
                            eVar.sendRedirect(URIUtil.addPaths(request.getRequestURI(), "/"));
                        }
                        return false;
                    }
                }
                return true;
            }
            request.setHandled(true);
            eVar.sendError(HttpStatus.SERVICE_UNAVAILABLE_503);
        }
        return false;
    }

    public void checkManagedAttribute(String str, Object obj) {
        Map<String, Object> map = this._managedAttributes;
        if (map == null || !map.containsKey(str)) {
            return;
        }
        setManagedAttribute(str, obj);
    }

    @Override // org.eclipse.jetty.util.Attributes
    public void clearAttributes() {
        Enumeration<String> attributeNames = this._attributes.getAttributeNames();
        while (attributeNames.hasMoreElements()) {
            checkManagedAttribute(attributeNames.nextElement(), null);
        }
        this._attributes.clearAttributes();
    }

    @Override // org.eclipse.jetty.server.handler.ScopedHandler
    public void doHandle(String str, Request request, c cVar, j2.e eVar) {
        d dispatcherType = request.getDispatcherType();
        boolean zTakeNewContext = request.takeNewContext();
        try {
            if (zTakeNewContext) {
                try {
                    Object obj = this._requestAttributeListeners;
                    if (obj != null) {
                        int size = LazyList.size(obj);
                        for (int i4 = 0; i4 < size; i4++) {
                            request.addEventListener((EventListener) LazyList.get(this._requestAttributeListeners, i4));
                        }
                    }
                    Object obj2 = this._requestListeners;
                    if (obj2 != null) {
                        int size2 = LazyList.size(obj2);
                        b0 b0Var = new b0(this._scontext, cVar);
                        for (int i5 = 0; i5 < size2; i5++) {
                            ((c0) LazyList.get(this._requestListeners, i5)).requestInitialized(b0Var);
                        }
                    }
                } catch (HttpException e4) {
                    LOG.debug(e4);
                    request.setHandled(true);
                    eVar.sendError(e4.getStatus(), e4.getReason());
                    if (!zTakeNewContext) {
                        return;
                    }
                    if (this._requestListeners != null) {
                        b0 b0Var2 = new b0(this._scontext, cVar);
                        int size3 = LazyList.size(this._requestListeners);
                        while (true) {
                            int i6 = size3 - 1;
                            if (size3 <= 0) {
                                break;
                            }
                            ((c0) LazyList.get(this._requestListeners, i6)).requestDestroyed(b0Var2);
                            size3 = i6;
                        }
                    }
                    Object obj3 = this._requestAttributeListeners;
                    if (obj3 == null) {
                        return;
                    }
                    int size4 = LazyList.size(obj3);
                    while (true) {
                        int i7 = size4 - 1;
                        if (size4 <= 0) {
                            return;
                        }
                        request.removeEventListener((EventListener) LazyList.get(this._requestAttributeListeners, i7));
                        size4 = i7;
                    }
                }
            }
            if (d.REQUEST.equals(dispatcherType) && isProtectedTarget(str)) {
                throw new HttpException(HttpStatus.NOT_FOUND_404);
            }
            if (never()) {
                nextHandle(str, request, cVar, eVar);
            } else {
                ScopedHandler scopedHandler = this._nextScope;
                if (scopedHandler == null || scopedHandler != this._handler) {
                    Handler handler = this._handler;
                    if (handler != null) {
                        handler.handle(str, request, cVar, eVar);
                    }
                } else {
                    scopedHandler.doHandle(str, request, cVar, eVar);
                }
            }
            if (!zTakeNewContext) {
                return;
            }
            if (this._requestListeners != null) {
                b0 b0Var3 = new b0(this._scontext, cVar);
                int size5 = LazyList.size(this._requestListeners);
                while (true) {
                    int i8 = size5 - 1;
                    if (size5 <= 0) {
                        break;
                    }
                    ((c0) LazyList.get(this._requestListeners, i8)).requestDestroyed(b0Var3);
                    size5 = i8;
                }
            }
            Object obj4 = this._requestAttributeListeners;
            if (obj4 == null) {
                return;
            }
            int size6 = LazyList.size(obj4);
            while (true) {
                int i9 = size6 - 1;
                if (size6 <= 0) {
                    return;
                }
                request.removeEventListener((EventListener) LazyList.get(this._requestAttributeListeners, i9));
                size6 = i9;
            }
        } catch (Throwable th) {
            if (zTakeNewContext) {
                if (this._requestListeners != null) {
                    b0 b0Var4 = new b0(this._scontext, cVar);
                    int size7 = LazyList.size(this._requestListeners);
                    while (true) {
                        int i10 = size7 - 1;
                        if (size7 <= 0) {
                            break;
                        }
                        ((c0) LazyList.get(this._requestListeners, i10)).requestDestroyed(b0Var4);
                        size7 = i10;
                    }
                }
                Object obj5 = this._requestAttributeListeners;
                if (obj5 != null) {
                    int size8 = LazyList.size(obj5);
                    while (true) {
                        int i11 = size8 - 1;
                        if (size8 <= 0) {
                            break;
                        }
                        request.removeEventListener((EventListener) LazyList.get(this._requestAttributeListeners, i11));
                        size8 = i11;
                    }
                }
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:103:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00df A[Catch: all -> 0x0160, TryCatch #0 {all -> 0x0160, blocks: (B:45:0x00d2, B:47:0x00df, B:49:0x00e5, B:51:0x00ee, B:53:0x00f9, B:52:0x00f4, B:54:0x0100, B:56:0x0106, B:57:0x0126, B:59:0x012c, B:60:0x0130, B:62:0x0134, B:63:0x0138, B:65:0x013c, B:66:0x0140), top: B:94:0x00d2 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00ee A[Catch: all -> 0x0160, TryCatch #0 {all -> 0x0160, blocks: (B:45:0x00d2, B:47:0x00df, B:49:0x00e5, B:51:0x00ee, B:53:0x00f9, B:52:0x00f4, B:54:0x0100, B:56:0x0106, B:57:0x0126, B:59:0x012c, B:60:0x0130, B:62:0x0134, B:63:0x0138, B:65:0x013c, B:66:0x0140), top: B:94:0x00d2 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00f4 A[Catch: all -> 0x0160, TryCatch #0 {all -> 0x0160, blocks: (B:45:0x00d2, B:47:0x00df, B:49:0x00e5, B:51:0x00ee, B:53:0x00f9, B:52:0x00f4, B:54:0x0100, B:56:0x0106, B:57:0x0126, B:59:0x012c, B:60:0x0130, B:62:0x0134, B:63:0x0138, B:65:0x013c, B:66:0x0140), top: B:94:0x00d2 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0106 A[Catch: all -> 0x0160, TryCatch #0 {all -> 0x0160, blocks: (B:45:0x00d2, B:47:0x00df, B:49:0x00e5, B:51:0x00ee, B:53:0x00f9, B:52:0x00f4, B:54:0x0100, B:56:0x0106, B:57:0x0126, B:59:0x012c, B:60:0x0130, B:62:0x0134, B:63:0x0138, B:65:0x013c, B:66:0x0140), top: B:94:0x00d2 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x012c A[Catch: all -> 0x0160, TryCatch #0 {all -> 0x0160, blocks: (B:45:0x00d2, B:47:0x00df, B:49:0x00e5, B:51:0x00ee, B:53:0x00f9, B:52:0x00f4, B:54:0x0100, B:56:0x0106, B:57:0x0126, B:59:0x012c, B:60:0x0130, B:62:0x0134, B:63:0x0138, B:65:0x013c, B:66:0x0140), top: B:94:0x00d2 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0130 A[Catch: all -> 0x0160, TryCatch #0 {all -> 0x0160, blocks: (B:45:0x00d2, B:47:0x00df, B:49:0x00e5, B:51:0x00ee, B:53:0x00f9, B:52:0x00f4, B:54:0x0100, B:56:0x0106, B:57:0x0126, B:59:0x012c, B:60:0x0130, B:62:0x0134, B:63:0x0138, B:65:0x013c, B:66:0x0140), top: B:94:0x00d2 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0147  */
    @Override // org.eclipse.jetty.server.handler.ScopedHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void doScope(java.lang.String r18, org.eclipse.jetty.server.Request r19, j2.c r20, j2.e r21) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 405
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.server.handler.ContextHandler.doScope(java.lang.String, org.eclipse.jetty.server.Request, j2.c, j2.e):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x007f  */
    @Override // org.eclipse.jetty.server.handler.ScopedHandler, org.eclipse.jetty.server.handler.HandlerWrapper, org.eclipse.jetty.server.handler.AbstractHandler, org.eclipse.jetty.util.component.AggregateLifeCycle, org.eclipse.jetty.util.component.AbstractLifeCycle
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void doStart() throws java.lang.Throwable {
        /*
            r5 = this;
            r0 = 0
            r5._availability = r0
            java.lang.String r0 = r5._contextPath
            if (r0 == 0) goto L83
            java.lang.String r0 = r5.getDisplayName()
            if (r0 != 0) goto L12
            java.lang.String r0 = r5.getContextPath()
            goto L16
        L12:
            java.lang.String r0 = r5.getDisplayName()
        L16:
            org.eclipse.jetty.util.log.Logger r0 = org.eclipse.jetty.util.log.Log.getLogger(r0)
            r5._logger = r0
            r0 = 0
            java.lang.ClassLoader r1 = r5._classLoader     // Catch: java.lang.Throwable -> L73
            if (r1 == 0) goto L32
            java.lang.Thread r1 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> L73
            java.lang.ClassLoader r2 = r1.getContextClassLoader()     // Catch: java.lang.Throwable -> L2f
            java.lang.ClassLoader r3 = r5._classLoader     // Catch: java.lang.Throwable -> L71
            r1.setContextClassLoader(r3)     // Catch: java.lang.Throwable -> L71
            goto L34
        L2f:
            r3 = move-exception
            r2 = r0
            goto L76
        L32:
            r1 = r0
            r2 = r1
        L34:
            org.eclipse.jetty.http.MimeTypes r3 = r5._mimeTypes     // Catch: java.lang.Throwable -> L71
            if (r3 != 0) goto L3f
            org.eclipse.jetty.http.MimeTypes r3 = new org.eclipse.jetty.http.MimeTypes     // Catch: java.lang.Throwable -> L71
            r3.<init>()     // Catch: java.lang.Throwable -> L71
            r5._mimeTypes = r3     // Catch: java.lang.Throwable -> L71
        L3f:
            java.lang.ThreadLocal<org.eclipse.jetty.server.handler.ContextHandler$Context> r3 = org.eclipse.jetty.server.handler.ContextHandler.__context     // Catch: java.lang.Throwable -> L71
            java.lang.Object r4 = r3.get()     // Catch: java.lang.Throwable -> L71
            org.eclipse.jetty.server.handler.ContextHandler$Context r4 = (org.eclipse.jetty.server.handler.ContextHandler.Context) r4     // Catch: java.lang.Throwable -> L71
            org.eclipse.jetty.server.handler.ContextHandler$Context r0 = r5._scontext     // Catch: java.lang.Throwable -> L6e
            r3.set(r0)     // Catch: java.lang.Throwable -> L6e
            r5.startContext()     // Catch: java.lang.Throwable -> L6e
            monitor-enter(r5)     // Catch: java.lang.Throwable -> L6e
            boolean r0 = r5._shutdown     // Catch: java.lang.Throwable -> L6b
            if (r0 == 0) goto L56
            r0 = 2
            goto L5d
        L56:
            boolean r0 = r5._available     // Catch: java.lang.Throwable -> L6b
            if (r0 == 0) goto L5c
            r0 = 1
            goto L5d
        L5c:
            r0 = 3
        L5d:
            r5._availability = r0     // Catch: java.lang.Throwable -> L6b
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L6b
            r3.set(r4)
            java.lang.ClassLoader r0 = r5._classLoader
            if (r0 == 0) goto L6a
            r1.setContextClassLoader(r2)
        L6a:
            return
        L6b:
            r0 = move-exception
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L6b
            throw r0     // Catch: java.lang.Throwable -> L6e
        L6e:
            r3 = move-exception
            r0 = r4
            goto L76
        L71:
            r3 = move-exception
            goto L76
        L73:
            r3 = move-exception
            r1 = r0
            r2 = r1
        L76:
            java.lang.ThreadLocal<org.eclipse.jetty.server.handler.ContextHandler$Context> r4 = org.eclipse.jetty.server.handler.ContextHandler.__context
            r4.set(r0)
            java.lang.ClassLoader r0 = r5._classLoader
            if (r0 == 0) goto L82
            r1.setContextClassLoader(r2)
        L82:
            throw r3
        L83:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "Null contextPath"
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.server.handler.ContextHandler.doStart():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00b2  */
    @Override // org.eclipse.jetty.server.handler.HandlerWrapper, org.eclipse.jetty.server.handler.AbstractHandler, org.eclipse.jetty.util.component.AggregateLifeCycle, org.eclipse.jetty.util.component.AbstractLifeCycle
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void doStop() throws java.lang.Throwable {
        /*
            r11 = this;
            java.lang.String r0 = "stopped {}"
            r1 = 0
            r11._availability = r1
            java.lang.ThreadLocal<org.eclipse.jetty.server.handler.ContextHandler$Context> r2 = org.eclipse.jetty.server.handler.ContextHandler.__context
            java.lang.Object r3 = r2.get()
            org.eclipse.jetty.server.handler.ContextHandler$Context r3 = (org.eclipse.jetty.server.handler.ContextHandler.Context) r3
            org.eclipse.jetty.server.handler.ContextHandler$Context r4 = r11._scontext
            r2.set(r4)
            r2 = 1
            r4 = 0
            java.lang.ClassLoader r5 = r11._classLoader     // Catch: java.lang.Throwable -> L9c
            if (r5 == 0) goto L2c
            java.lang.Thread r5 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> L9c
            java.lang.ClassLoader r6 = r5.getContextClassLoader()     // Catch: java.lang.Throwable -> L26
            java.lang.ClassLoader r7 = r11._classLoader     // Catch: java.lang.Throwable -> L9a
            r5.setContextClassLoader(r7)     // Catch: java.lang.Throwable -> L9a
            goto L2e
        L26:
            r6 = move-exception
            r10 = r6
            r6 = r4
            r4 = r10
            goto La0
        L2c:
            r5 = r4
            r6 = r5
        L2e:
            super.doStop()     // Catch: java.lang.Throwable -> L9a
            java.lang.Object r7 = r11._contextListeners     // Catch: java.lang.Throwable -> L9a
            if (r7 == 0) goto L53
            g2.s r7 = new g2.s     // Catch: java.lang.Throwable -> L9a
            org.eclipse.jetty.server.handler.ContextHandler$Context r8 = r11._scontext     // Catch: java.lang.Throwable -> L9a
            r7.<init>(r8)     // Catch: java.lang.Throwable -> L9a
            java.lang.Object r8 = r11._contextListeners     // Catch: java.lang.Throwable -> L9a
            int r8 = org.eclipse.jetty.util.LazyList.size(r8)     // Catch: java.lang.Throwable -> L9a
        L42:
            int r9 = r8 + (-1)
            if (r8 <= 0) goto L53
            java.lang.Object r8 = r11._contextListeners     // Catch: java.lang.Throwable -> L9a
            java.lang.Object r8 = org.eclipse.jetty.util.LazyList.get(r8, r9)     // Catch: java.lang.Throwable -> L9a
            g2.t r8 = (g2.t) r8     // Catch: java.lang.Throwable -> L9a
            r8.contextDestroyed(r7)     // Catch: java.lang.Throwable -> L9a
            r8 = r9
            goto L42
        L53:
            java.lang.Object r7 = r11._durableListeners     // Catch: java.lang.Throwable -> L9a
            java.lang.Class<java.util.EventListener> r8 = java.util.EventListener.class
            java.lang.Object r7 = org.eclipse.jetty.util.LazyList.toArray(r7, r8)     // Catch: java.lang.Throwable -> L9a
            java.util.EventListener[] r7 = (java.util.EventListener[]) r7     // Catch: java.lang.Throwable -> L9a
            r11.setEventListeners(r7)     // Catch: java.lang.Throwable -> L9a
            r11._durableListeners = r4     // Catch: java.lang.Throwable -> L9a
            org.eclipse.jetty.server.handler.ErrorHandler r7 = r11._errorHandler     // Catch: java.lang.Throwable -> L9a
            if (r7 == 0) goto L69
            r7.stop()     // Catch: java.lang.Throwable -> L9a
        L69:
            org.eclipse.jetty.server.handler.ContextHandler$Context r7 = r11._scontext     // Catch: java.lang.Throwable -> L9a
            java.util.Enumeration r7 = r7.getAttributeNames()     // Catch: java.lang.Throwable -> L9a
        L6f:
            boolean r8 = r7.hasMoreElements()     // Catch: java.lang.Throwable -> L9a
            if (r8 == 0) goto L7f
            java.lang.Object r8 = r7.nextElement()     // Catch: java.lang.Throwable -> L9a
            java.lang.String r8 = (java.lang.String) r8     // Catch: java.lang.Throwable -> L9a
            r11.checkManagedAttribute(r8, r4)     // Catch: java.lang.Throwable -> L9a
            goto L6f
        L7f:
            org.eclipse.jetty.util.log.Logger r4 = org.eclipse.jetty.server.handler.ContextHandler.LOG
            java.lang.Object[] r2 = new java.lang.Object[r2]
            r2[r1] = r11
            r4.info(r0, r2)
            java.lang.ThreadLocal<org.eclipse.jetty.server.handler.ContextHandler$Context> r0 = org.eclipse.jetty.server.handler.ContextHandler.__context
            r0.set(r3)
            java.lang.ClassLoader r0 = r11._classLoader
            if (r0 == 0) goto L94
            r5.setContextClassLoader(r6)
        L94:
            org.eclipse.jetty.util.AttributesMap r0 = r11._contextAttributes
            r0.clearAttributes()
            return
        L9a:
            r4 = move-exception
            goto La0
        L9c:
            r5 = move-exception
            r6 = r4
            r4 = r5
            r5 = r6
        La0:
            org.eclipse.jetty.util.log.Logger r7 = org.eclipse.jetty.server.handler.ContextHandler.LOG
            java.lang.Object[] r2 = new java.lang.Object[r2]
            r2[r1] = r11
            r7.info(r0, r2)
            java.lang.ThreadLocal<org.eclipse.jetty.server.handler.ContextHandler$Context> r0 = org.eclipse.jetty.server.handler.ContextHandler.__context
            r0.set(r3)
            java.lang.ClassLoader r0 = r11._classLoader
            if (r0 == 0) goto Lb5
            r5.setContextClassLoader(r6)
        Lb5:
            goto Lb7
        Lb6:
            throw r4
        Lb7:
            goto Lb6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.server.handler.ContextHandler.doStop():void");
    }

    @Override // org.eclipse.jetty.server.handler.AbstractHandlerContainer, org.eclipse.jetty.util.component.AggregateLifeCycle, org.eclipse.jetty.util.component.Dumpable
    public void dump(Appendable appendable, String str) {
        dumpThis(appendable);
        AggregateLifeCycle.dump(appendable, str, Collections.singletonList(new CLDump(getClassLoader())), TypeUtil.asList(getHandlers()), getBeans(), this._initParams.entrySet(), this._attributes.getAttributeEntrySet(), this._contextAttributes.getAttributeEntrySet());
    }

    public List<AliasCheck> getAliasChecks() {
        return this._aliasChecks;
    }

    public boolean getAllowNullPathInfo() {
        return this._allowNullPathInfo;
    }

    @Override // org.eclipse.jetty.util.Attributes
    public Object getAttribute(String str) {
        return this._attributes.getAttribute(str);
    }

    @Override // org.eclipse.jetty.util.Attributes
    public Enumeration getAttributeNames() {
        return AttributesMap.getAttributeNamesCopy(this._attributes);
    }

    public Attributes getAttributes() {
        return this._attributes;
    }

    public Resource getBaseResource() {
        Resource resource = this._baseResource;
        if (resource == null) {
            return null;
        }
        return resource;
    }

    public ClassLoader getClassLoader() {
        return this._classLoader;
    }

    public String getClassPath() {
        ClassLoader classLoader = this._classLoader;
        if (classLoader == null || !(classLoader instanceof URLClassLoader)) {
            return null;
        }
        URL[] uRLs = ((URLClassLoader) classLoader).getURLs();
        StringBuilder sb = new StringBuilder();
        for (URL url : uRLs) {
            try {
                File file = newResource(url).getFile();
                if (file != null && file.exists()) {
                    if (sb.length() > 0) {
                        sb.append(File.pathSeparatorChar);
                    }
                    sb.append(file.getAbsolutePath());
                }
            } catch (IOException e4) {
                LOG.debug(e4);
            }
        }
        if (sb.length() == 0) {
            return null;
        }
        return sb.toString();
    }

    public String[] getConnectorNames() {
        Set<String> set = this._connectors;
        if (set == null || set.size() == 0) {
            return null;
        }
        Set<String> set2 = this._connectors;
        return (String[]) set2.toArray(new String[set2.size()]);
    }

    public String getContextPath() {
        return this._contextPath;
    }

    public String getDisplayName() {
        return this._displayName;
    }

    public ErrorHandler getErrorHandler() {
        return this._errorHandler;
    }

    public EventListener[] getEventListeners() {
        return this._eventListeners;
    }

    public String getInitParameter(String str) {
        return this._initParams.get(str);
    }

    public Enumeration getInitParameterNames() {
        return Collections.enumeration(this._initParams.keySet());
    }

    public Map<String, String> getInitParams() {
        return this._initParams;
    }

    public String getLocaleEncoding(String str) {
        Map<String, String> map = this._localeEncodingMap;
        if (map == null) {
            return null;
        }
        return map.get(str);
    }

    public Logger getLogger() {
        return this._logger;
    }

    public int getMaxFormContentSize() {
        return this._maxFormContentSize;
    }

    public int getMaxFormKeys() {
        return this._maxFormKeys;
    }

    public MimeTypes getMimeTypes() {
        if (this._mimeTypes == null) {
            this._mimeTypes = new MimeTypes();
        }
        return this._mimeTypes;
    }

    public String[] getProtectedTargets() {
        String[] strArr = this._protectedTargets;
        if (strArr == null) {
            return null;
        }
        String[] strArr2 = new String[strArr.length];
        System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
        return strArr2;
    }

    public Resource getResource(String str) throws MalformedURLException {
        if (str == null || !str.startsWith("/")) {
            throw new MalformedURLException(str);
        }
        if (this._baseResource == null) {
            return null;
        }
        try {
            String strCanonicalPath = URIUtil.canonicalPath(str);
            Resource resourceAddPath = this._baseResource.addPath(strCanonicalPath);
            if (checkAlias(strCanonicalPath, resourceAddPath)) {
                return resourceAddPath;
            }
            return null;
        } catch (Exception e4) {
            LOG.ignore(e4);
            return null;
        }
    }

    public String getResourceBase() {
        Resource resource = this._baseResource;
        if (resource == null) {
            return null;
        }
        return resource.toString();
    }

    public Set<String> getResourcePaths(String str) {
        try {
            String strCanonicalPath = URIUtil.canonicalPath(str);
            Resource resource = getResource(strCanonicalPath);
            if (resource != null && resource.exists()) {
                if (!strCanonicalPath.endsWith("/")) {
                    strCanonicalPath = strCanonicalPath + "/";
                }
                String[] list = resource.list();
                if (list != null) {
                    HashSet hashSet = new HashSet();
                    for (String str2 : list) {
                        hashSet.add(strCanonicalPath + str2);
                    }
                    return hashSet;
                }
            }
        } catch (Exception e4) {
            LOG.ignore(e4);
        }
        return Collections.emptySet();
    }

    public Context getServletContext() {
        return this._scontext;
    }

    public String[] getVirtualHosts() {
        return this._vhosts;
    }

    public String[] getWelcomeFiles() {
        return this._welcomeFiles;
    }

    public void handle(Runnable runnable) throws Throwable {
        ClassLoader classLoader;
        Thread threadCurrentThread;
        Context context = null;
        contextClassLoader = null;
        ClassLoader contextClassLoader = null;
        try {
            ThreadLocal<Context> threadLocal = __context;
            Context context2 = threadLocal.get();
            try {
                threadLocal.set(this._scontext);
                if (this._classLoader != null) {
                    threadCurrentThread = Thread.currentThread();
                    try {
                        contextClassLoader = threadCurrentThread.getContextClassLoader();
                        threadCurrentThread.setContextClassLoader(this._classLoader);
                    } catch (Throwable th) {
                        th = th;
                        classLoader = contextClassLoader;
                        context = context2;
                        __context.set(context);
                        if (classLoader != null) {
                            threadCurrentThread.setContextClassLoader(classLoader);
                        }
                        throw th;
                    }
                } else {
                    threadCurrentThread = null;
                }
                runnable.run();
                threadLocal.set(context2);
                if (contextClassLoader != null) {
                    threadCurrentThread.setContextClassLoader(contextClassLoader);
                }
            } catch (Throwable th2) {
                th = th2;
                classLoader = null;
                threadCurrentThread = null;
            }
        } catch (Throwable th3) {
            th = th3;
            classLoader = null;
            threadCurrentThread = null;
        }
    }

    public boolean isAliases() {
        return this._aliasesAllowed;
    }

    public boolean isAvailable() {
        boolean z3;
        synchronized (this) {
            z3 = this._available;
        }
        return z3;
    }

    public boolean isCompactPath() {
        return this._compactPath;
    }

    public boolean isProtectedTarget(String str) {
        boolean z3 = false;
        if (str != null && this._protectedTargets != null) {
            while (str.startsWith("//")) {
                str = URIUtil.compactPath(str);
            }
            int i4 = 0;
            while (!z3) {
                String[] strArr = this._protectedTargets;
                if (i4 >= strArr.length) {
                    break;
                }
                int i5 = i4 + 1;
                boolean zStartsWithIgnoreCase = StringUtil.startsWithIgnoreCase(str, strArr[i4]);
                i4 = i5;
                z3 = zStartsWithIgnoreCase;
            }
        }
        return z3;
    }

    public boolean isShutdown() {
        boolean z3;
        synchronized (this) {
            z3 = !this._shutdown;
        }
        return z3;
    }

    public synchronized Class<?> loadClass(String str) {
        if (str == null) {
            return null;
        }
        ClassLoader classLoader = this._classLoader;
        if (classLoader == null) {
            return Loader.loadClass(getClass(), str);
        }
        return classLoader.loadClass(str);
    }

    public Resource newResource(URL url) {
        return Resource.newResource(url);
    }

    @Override // org.eclipse.jetty.util.Attributes
    public void removeAttribute(String str) {
        checkManagedAttribute(str, null);
        this._attributes.removeAttribute(str);
    }

    public void removeVirtualHosts(String[] strArr) {
        String[] strArr2;
        if (strArr == null || (strArr2 = this._vhosts) == null || strArr2.length == 0) {
            return;
        }
        ArrayList arrayList = new ArrayList(Arrays.asList(this._vhosts));
        for (String str : strArr) {
            String strNormalizeHostname = normalizeHostname(str);
            if (arrayList.contains(strNormalizeHostname)) {
                arrayList.remove(strNormalizeHostname);
            }
        }
        if (arrayList.isEmpty()) {
            this._vhosts = null;
        } else {
            this._vhosts = (String[]) arrayList.toArray(new String[0]);
        }
    }

    public void restrictEventListener(EventListener eventListener) {
    }

    public void setAliases(boolean z3) {
        this._aliasesAllowed = z3;
    }

    public void setAllowNullPathInfo(boolean z3) {
        this._allowNullPathInfo = z3;
    }

    @Override // org.eclipse.jetty.util.Attributes
    public void setAttribute(String str, Object obj) {
        checkManagedAttribute(str, obj);
        this._attributes.setAttribute(str, obj);
    }

    public void setAttributes(Attributes attributes) {
        this._attributes.clearAttributes();
        this._attributes.addAll(attributes);
        Enumeration<String> attributeNames = this._attributes.getAttributeNames();
        while (attributeNames.hasMoreElements()) {
            String strNextElement = attributeNames.nextElement();
            checkManagedAttribute(strNextElement, attributes.getAttribute(strNextElement));
        }
    }

    public void setAvailable(boolean z3) {
        synchronized (this) {
            this._available = z3;
            this._availability = isRunning() ? this._shutdown ? 2 : this._available ? 1 : 3 : 0;
        }
    }

    public void setBaseResource(Resource resource) {
        this._baseResource = resource;
    }

    public void setClassLoader(ClassLoader classLoader) {
        this._classLoader = classLoader;
    }

    public void setCompactPath(boolean z3) {
        this._compactPath = z3;
    }

    public void setConnectorNames(String[] strArr) {
        if (strArr == null || strArr.length == 0) {
            this._connectors = null;
        } else {
            this._connectors = new HashSet(Arrays.asList(strArr));
        }
    }

    public void setContextPath(String str) {
        if (str != null && str.length() > 1 && str.endsWith("/")) {
            throw new IllegalArgumentException("ends with /");
        }
        this._contextPath = str;
        if (getServer() != null) {
            if (getServer().isStarting() || getServer().isStarted()) {
                Handler[] childHandlersByClass = getServer().getChildHandlersByClass(ContextHandlerCollection.class);
                for (int i4 = 0; childHandlersByClass != null && i4 < childHandlersByClass.length; i4++) {
                    ((ContextHandlerCollection) childHandlersByClass[i4]).mapContexts();
                }
            }
        }
    }

    public void setDisplayName(String str) {
        this._displayName = str;
    }

    public void setErrorHandler(ErrorHandler errorHandler) {
        if (errorHandler != null) {
            errorHandler.setServer(getServer());
        }
        if (getServer() != null) {
            getServer().getContainer().update((Object) this, (Object) this._errorHandler, (Object) errorHandler, "errorHandler", true);
        }
        this._errorHandler = errorHandler;
    }

    public void setEventListeners(EventListener[] eventListenerArr) {
        this._contextListeners = null;
        this._contextAttributeListeners = null;
        this._requestListeners = null;
        this._requestAttributeListeners = null;
        this._eventListeners = eventListenerArr;
        for (int i4 = 0; eventListenerArr != null && i4 < eventListenerArr.length; i4++) {
            EventListener eventListener = this._eventListeners[i4];
            if (eventListener instanceof t) {
                this._contextListeners = LazyList.add(this._contextListeners, eventListener);
            }
            if (eventListener instanceof r) {
                this._contextAttributeListeners = LazyList.add(this._contextAttributeListeners, eventListener);
            }
            if (eventListener instanceof c0) {
                this._requestListeners = LazyList.add(this._requestListeners, eventListener);
            }
            if (eventListener instanceof a0) {
                this._requestAttributeListeners = LazyList.add(this._requestAttributeListeners, eventListener);
            }
        }
    }

    public String setInitParameter(String str, String str2) {
        return this._initParams.put(str, str2);
    }

    public void setLogger(Logger logger) {
        this._logger = logger;
    }

    public void setManagedAttribute(String str, Object obj) {
        getServer().getContainer().update((Object) this, this._managedAttributes.put(str, obj), obj, str, true);
    }

    public void setMaxFormContentSize(int i4) {
        this._maxFormContentSize = i4;
    }

    public void setMaxFormKeys(int i4) {
        this._maxFormKeys = i4;
    }

    public void setMimeTypes(MimeTypes mimeTypes) {
        this._mimeTypes = mimeTypes;
    }

    public void setProtectedTargets(String[] strArr) {
        if (strArr == null) {
            this._protectedTargets = null;
            return;
        }
        String[] strArr2 = new String[strArr.length];
        this._protectedTargets = strArr2;
        System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
    }

    public void setResourceBase(String str) {
        try {
            setBaseResource(newResource(str));
        } catch (Exception e4) {
            Logger logger = LOG;
            logger.warn(e4.toString(), new Object[0]);
            logger.debug(e4);
            throw new IllegalArgumentException(str);
        }
    }

    @Override // org.eclipse.jetty.server.handler.HandlerWrapper, org.eclipse.jetty.server.handler.AbstractHandler, org.eclipse.jetty.server.Handler
    public void setServer(Server server) {
        if (this._errorHandler == null) {
            super.setServer(server);
            return;
        }
        Server server2 = getServer();
        if (server2 != null && server2 != server) {
            server2.getContainer().update((Object) this, (Object) this._errorHandler, (Object) null, "error", true);
        }
        super.setServer(server);
        if (server != null && server != server2) {
            server.getContainer().update((Object) this, (Object) null, (Object) this._errorHandler, "error", true);
        }
        this._errorHandler.setServer(server);
    }

    @Override // org.eclipse.jetty.server.Server.Graceful
    public void setShutdown(boolean z3) {
        synchronized (this) {
            this._shutdown = z3;
            this._availability = isRunning() ? this._shutdown ? 2 : this._available ? 1 : 3 : 0;
        }
    }

    public void setVirtualHosts(String[] strArr) {
        if (strArr == null) {
            this._vhosts = strArr;
            return;
        }
        this._vhosts = new String[strArr.length];
        for (int i4 = 0; i4 < strArr.length; i4++) {
            this._vhosts[i4] = normalizeHostname(strArr[i4]);
        }
    }

    public void setWelcomeFiles(String[] strArr) {
        this._welcomeFiles = strArr;
    }

    public void startContext() {
        String str = this._initParams.get(MANAGED_ATTRIBUTES);
        if (str != null) {
            this._managedAttributes = new HashMap();
            for (String str2 : str.split(",")) {
                this._managedAttributes.put(str2, null);
            }
            Enumeration attributeNames = this._scontext.getAttributeNames();
            while (attributeNames.hasMoreElements()) {
                String str3 = (String) attributeNames.nextElement();
                checkManagedAttribute(str3, this._scontext.getAttribute(str3));
            }
        }
        super.doStart();
        ErrorHandler errorHandler = this._errorHandler;
        if (errorHandler != null) {
            errorHandler.start();
        }
        if (this._contextListeners != null) {
            s sVar = new s(this._scontext);
            for (int i4 = 0; i4 < LazyList.size(this._contextListeners); i4++) {
                callContextInitialized((t) LazyList.get(this._contextListeners, i4), sVar);
            }
        }
    }

    public String toString() {
        String name;
        String[] virtualHosts = getVirtualHosts();
        StringBuilder sb = new StringBuilder();
        Package r22 = getClass().getPackage();
        if (r22 != null && (name = r22.getName()) != null && name.length() > 0) {
            for (String str : name.split("\\.")) {
                sb.append(str.charAt(0));
                sb.append('.');
            }
        }
        sb.append(getClass().getSimpleName());
        sb.append(MessageFormatter.DELIM_START);
        sb.append(getContextPath());
        sb.append(',');
        sb.append(getBaseResource());
        if (virtualHosts != null && virtualHosts.length > 0) {
            sb.append(',');
            sb.append(virtualHosts[0]);
        }
        sb.append(MessageFormatter.DELIM_STOP);
        return sb.toString();
    }

    public Resource newResource(String str) {
        return Resource.newResource(str);
    }

    public String getLocaleEncoding(Locale locale) {
        Map<String, String> map = this._localeEncodingMap;
        if (map == null) {
            return null;
        }
        String str = map.get(locale.toString());
        return str == null ? this._localeEncodingMap.get(locale.getLanguage()) : str;
    }

    public ContextHandler(Context context) {
        this._contextPath = "/";
        this._maxFormKeys = Integer.getInteger("org.eclipse.jetty.server.Request.maxFormKeys", -1).intValue();
        this._maxFormContentSize = Integer.getInteger("org.eclipse.jetty.server.Request.maxFormContentSize", -1).intValue();
        this._compactPath = false;
        this._aliasesAllowed = false;
        this._aliasChecks = new CopyOnWriteArrayList<>();
        this._shutdown = false;
        this._available = true;
        this._scontext = context;
        this._attributes = new AttributesMap();
        this._contextAttributes = new AttributesMap();
        this._initParams = new HashMap();
        addAliasCheck(new ApproveNonExistentDirectoryAliases());
    }

    public ContextHandler(String str) {
        this();
        setContextPath(str);
    }

    public ContextHandler(HandlerContainer handlerContainer, String str) {
        this();
        setContextPath(str);
        if (handlerContainer instanceof HandlerWrapper) {
            ((HandlerWrapper) handlerContainer).setHandler(this);
        } else if (handlerContainer instanceof HandlerCollection) {
            ((HandlerCollection) handlerContainer).addHandler(this);
        }
    }
}
