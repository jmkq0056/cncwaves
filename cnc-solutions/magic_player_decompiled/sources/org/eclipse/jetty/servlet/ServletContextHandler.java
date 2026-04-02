package org.eclipse.jetty.servlet;

import android.support.v4.media.f;
import g2.d;
import g2.e;
import g2.g0;
import g2.h;
import g2.h0;
import g2.i0;
import g2.m;
import g2.n;
import g2.s;
import g2.t;
import g2.u;
import g2.x;
import i2.a;
import i2.b;
import i2.c;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
import java.util.EventListener;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.jetty.security.ConstraintAware;
import org.eclipse.jetty.security.ConstraintMapping;
import org.eclipse.jetty.security.ConstraintSecurityHandler;
import org.eclipse.jetty.security.SecurityHandler;
import org.eclipse.jetty.server.Dispatcher;
import org.eclipse.jetty.server.HandlerContainer;
import org.eclipse.jetty.server.handler.ContextHandler;
import org.eclipse.jetty.server.handler.ErrorHandler;
import org.eclipse.jetty.server.handler.HandlerCollection;
import org.eclipse.jetty.server.handler.HandlerWrapper;
import org.eclipse.jetty.server.session.SessionHandler;
import org.eclipse.jetty.servlet.Holder;
import org.eclipse.jetty.util.LazyList;
import org.eclipse.jetty.util.component.AbstractLifeCycle;

/* JADX INFO: loaded from: classes2.dex */
public class ServletContextHandler extends ContextHandler {
    public static final int NO_SECURITY = 0;
    public static final int NO_SESSIONS = 0;
    public static final int SECURITY = 2;
    public static final int SESSIONS = 1;
    public final List<Decorator> _decorators;
    public Class<? extends SecurityHandler> _defaultSecurityHandlerClass;
    public a _jspConfig;
    public int _options;
    private boolean _restrictListeners;
    public Object _restrictedContextListeners;
    public SecurityHandler _securityHandler;
    public ServletHandler _servletHandler;
    public SessionHandler _sessionHandler;
    public HandlerWrapper _wrapper;

    public interface Decorator {
        void decorateFilterHolder(FilterHolder filterHolder);

        <T extends e> T decorateFilterInstance(T t3);

        <T extends EventListener> T decorateListenerInstance(T t3);

        void decorateServletHolder(ServletHolder servletHolder);

        <T extends n> T decorateServletInstance(T t3);

        void destroyFilterInstance(e eVar);

        void destroyListenerInstance(EventListener eventListener);

        void destroyServletInstance(n nVar);
    }

    public static class JspConfig implements a {
        private List<c> _taglibs = new ArrayList();
        private List<b> _jspPropertyGroups = new ArrayList();

        public void addJspPropertyGroup(b bVar) {
            this._jspPropertyGroups.add(bVar);
        }

        public void addTaglibDescriptor(c cVar) {
            this._taglibs.add(cVar);
        }

        public Collection<b> getJspPropertyGroups() {
            return new ArrayList(this._jspPropertyGroups);
        }

        public Collection<c> getTaglibs() {
            return new ArrayList(this._taglibs);
        }

        public String toString() {
            StringBuffer stringBufferA = v2.e.a("JspConfigDescriptor: \n");
            Iterator<c> it = this._taglibs.iterator();
            while (it.hasNext()) {
                stringBufferA.append(it.next() + "\n");
            }
            Iterator<b> it2 = this._jspPropertyGroups.iterator();
            while (it2.hasNext()) {
                stringBufferA.append(it2.next() + "\n");
            }
            return stringBufferA.toString();
        }
    }

    public static class JspPropertyGroup implements b {
        private String _buffer;
        private String _defaultContentType;
        private String _deferredSyntaxAllowedAsLiteral;
        private String _elIgnored;
        private String _errorOnUndeclaredNamespace;
        private String _isXml;
        private String _pageEncoding;
        private String _scriptingInvalid;
        private String _trimDirectiveWhitespaces;
        private List<String> _urlPatterns = new ArrayList();
        private List<String> _includePreludes = new ArrayList();
        private List<String> _includeCodas = new ArrayList();

        public void addIncludeCoda(String str) {
            if (this._includeCodas.contains(str)) {
                return;
            }
            this._includeCodas.add(str);
        }

        public void addIncludePrelude(String str) {
            if (this._includePreludes.contains(str)) {
                return;
            }
            this._includePreludes.add(str);
        }

        public void addUrlPattern(String str) {
            if (this._urlPatterns.contains(str)) {
                return;
            }
            this._urlPatterns.add(str);
        }

        public String getBuffer() {
            return this._buffer;
        }

        public String getDefaultContentType() {
            return this._defaultContentType;
        }

        public String getDeferredSyntaxAllowedAsLiteral() {
            return this._deferredSyntaxAllowedAsLiteral;
        }

        public String getElIgnored() {
            return this._elIgnored;
        }

        public String getErrorOnUndeclaredNamespace() {
            return this._errorOnUndeclaredNamespace;
        }

        public Collection<String> getIncludeCodas() {
            return new ArrayList(this._includeCodas);
        }

        public Collection<String> getIncludePreludes() {
            return new ArrayList(this._includePreludes);
        }

        public String getIsXml() {
            return this._isXml;
        }

        public String getPageEncoding() {
            return this._pageEncoding;
        }

        public String getScriptingInvalid() {
            return this._scriptingInvalid;
        }

        public String getTrimDirectiveWhitespaces() {
            return this._trimDirectiveWhitespaces;
        }

        public Collection<String> getUrlPatterns() {
            return new ArrayList(this._urlPatterns);
        }

        public void setBuffer(String str) {
            this._buffer = str;
        }

        public void setDefaultContentType(String str) {
            this._defaultContentType = str;
        }

        public void setDeferredSyntaxAllowedAsLiteral(String str) {
            this._deferredSyntaxAllowedAsLiteral = str;
        }

        public void setElIgnored(String str) {
            this._elIgnored = str;
        }

        public void setErrorOnUndeclaredNamespace(String str) {
            this._errorOnUndeclaredNamespace = str;
        }

        public void setIsXml(String str) {
            this._isXml = str;
        }

        public void setPageEncoding(String str) {
            this._pageEncoding = str;
        }

        public void setScriptingInvalid(String str) {
            this._scriptingInvalid = str;
        }

        public void setTrimDirectiveWhitespaces(String str) {
            this._trimDirectiveWhitespaces = str;
        }

        public String toString() {
            StringBuffer stringBufferA = v2.e.a("JspPropertyGroupDescriptor:");
            StringBuilder sbA = f.a(" el-ignored=");
            sbA.append(this._elIgnored);
            stringBufferA.append(sbA.toString());
            stringBufferA.append(" is-xml=" + this._isXml);
            stringBufferA.append(" page-encoding=" + this._pageEncoding);
            stringBufferA.append(" scripting-invalid=" + this._scriptingInvalid);
            stringBufferA.append(" deferred-syntax-allowed-as-literal=" + this._deferredSyntaxAllowedAsLiteral);
            stringBufferA.append(" trim-directive-whitespaces" + this._trimDirectiveWhitespaces);
            stringBufferA.append(" default-content-type=" + this._defaultContentType);
            stringBufferA.append(" buffer=" + this._buffer);
            stringBufferA.append(" error-on-undeclared-namespace=" + this._errorOnUndeclaredNamespace);
            Iterator<String> it = this._includePreludes.iterator();
            while (it.hasNext()) {
                stringBufferA.append(" include-prelude=" + it.next());
            }
            Iterator<String> it2 = this._includeCodas.iterator();
            while (it2.hasNext()) {
                stringBufferA.append(" include-coda=" + it2.next());
            }
            return stringBufferA.toString();
        }
    }

    public static class TagLib implements c {
        private String _location;
        private String _uri;

        public String getTaglibLocation() {
            return this._location;
        }

        public String getTaglibURI() {
            return this._uri;
        }

        public void setTaglibLocation(String str) {
            this._location = str;
        }

        public void setTaglibURI(String str) {
            this._uri = str;
        }

        public String toString() {
            StringBuilder sbA = f.a("TagLibDescriptor: taglib-uri=");
            sbA.append(this._uri);
            sbA.append(" location=");
            sbA.append(this._location);
            return sbA.toString();
        }
    }

    public ServletContextHandler() {
        this(null, null, null, null, null);
    }

    public void addDecorator(Decorator decorator) {
        this._decorators.add(decorator);
    }

    public void addFilter(FilterHolder filterHolder, String str, EnumSet<d> enumSet) {
        getServletHandler().addFilterWithMapping(filterHolder, str, enumSet);
    }

    public void addRoles(String... strArr) {
        SecurityHandler securityHandler = this._securityHandler;
        if (securityHandler == null || !(securityHandler instanceof ConstraintAware)) {
            return;
        }
        HashSet hashSet = new HashSet();
        Set<String> roles = ((ConstraintAware) this._securityHandler).getRoles();
        if (roles != null) {
            hashSet.addAll(roles);
        }
        hashSet.addAll(Arrays.asList(strArr));
        ((ConstraintSecurityHandler) this._securityHandler).setRoles(hashSet);
    }

    public ServletHolder addServlet(String str, String str2) {
        return getServletHandler().addServletWithMapping(str, str2);
    }

    @Override // org.eclipse.jetty.server.handler.ContextHandler
    public void callContextDestroyed(t tVar, s sVar) {
        super.callContextDestroyed(tVar, sVar);
    }

    @Override // org.eclipse.jetty.server.handler.ContextHandler
    public void callContextInitialized(t tVar, s sVar) {
        try {
            if (LazyList.contains(this._restrictedContextListeners, tVar)) {
                getServletContext().setEnabled(false);
            }
            super.callContextInitialized(tVar, sVar);
        } finally {
            getServletContext().setEnabled(true);
        }
    }

    public void destroyFilter(e eVar) {
        Iterator<Decorator> it = this._decorators.iterator();
        while (it.hasNext()) {
            it.next().destroyFilterInstance(eVar);
        }
    }

    public void destroyServlet(n nVar) {
        Iterator<Decorator> it = this._decorators.iterator();
        while (it.hasNext()) {
            it.next().destroyServletInstance(nVar);
        }
    }

    @Override // org.eclipse.jetty.server.handler.ContextHandler, org.eclipse.jetty.server.handler.HandlerWrapper, org.eclipse.jetty.server.handler.AbstractHandler, org.eclipse.jetty.util.component.AggregateLifeCycle, org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStop() throws Throwable {
        super.doStop();
        List<Decorator> list = this._decorators;
        if (list != null) {
            list.clear();
        }
        HandlerWrapper handlerWrapper = this._wrapper;
        if (handlerWrapper != null) {
            handlerWrapper.setHandler(null);
        }
    }

    public x.a dynamicHolderAdded(ServletHolder servletHolder) {
        return servletHolder.getRegistration();
    }

    public List<Decorator> getDecorators() {
        return Collections.unmodifiableList(this._decorators);
    }

    public Class<? extends SecurityHandler> getDefaultSecurityHandlerClass() {
        return this._defaultSecurityHandlerClass;
    }

    public SecurityHandler getSecurityHandler() {
        if (this._securityHandler == null && (this._options & 2) != 0 && !isStarted()) {
            this._securityHandler = newSecurityHandler();
        }
        return this._securityHandler;
    }

    public ServletHandler getServletHandler() {
        if (this._servletHandler == null && !isStarted()) {
            this._servletHandler = newServletHandler();
        }
        return this._servletHandler;
    }

    public SessionHandler getSessionHandler() {
        if (this._sessionHandler == null && (this._options & 1) != 0 && !isStarted()) {
            this._sessionHandler = newSessionHandler();
        }
        return this._sessionHandler;
    }

    public boolean isRestrictListeners() {
        return this._restrictListeners;
    }

    public SecurityHandler newSecurityHandler() {
        try {
            return this._defaultSecurityHandlerClass.newInstance();
        } catch (Exception e4) {
            throw new IllegalStateException(e4);
        }
    }

    public ServletHandler newServletHandler() {
        return new ServletHandler();
    }

    public SessionHandler newSessionHandler() {
        return new SessionHandler();
    }

    @Override // org.eclipse.jetty.server.handler.ContextHandler
    public void restrictEventListener(EventListener eventListener) {
        if (this._restrictListeners && (eventListener instanceof t)) {
            this._restrictedContextListeners = LazyList.add(this._restrictedContextListeners, eventListener);
        }
    }

    public void setDecorators(List<Decorator> list) {
        this._decorators.clear();
        this._decorators.addAll(list);
    }

    public void setDefaultSecurityHandlerClass(Class<? extends SecurityHandler> cls) {
        this._defaultSecurityHandlerClass = cls;
    }

    public void setRestrictListeners(boolean z3) {
        this._restrictListeners = z3;
    }

    public void setSecurityHandler(SecurityHandler securityHandler) {
        if (isStarted()) {
            throw new IllegalStateException(AbstractLifeCycle.STARTED);
        }
        this._securityHandler = securityHandler;
    }

    public void setServletHandler(ServletHandler servletHandler) {
        if (isStarted()) {
            throw new IllegalStateException(AbstractLifeCycle.STARTED);
        }
        this._servletHandler = servletHandler;
    }

    public Set<String> setServletSecurity(x.a aVar, g0 g0Var) {
        Collection<String> mappings = aVar.getMappings();
        if (mappings != null) {
            Iterator<String> it = mappings.iterator();
            while (it.hasNext()) {
                Iterator<ConstraintMapping> it2 = ConstraintSecurityHandler.createConstraintsWithMappingsForPath(aVar.getName(), it.next(), g0Var).iterator();
                while (it2.hasNext()) {
                    ((ConstraintAware) getSecurityHandler()).addConstraintMapping(it2.next());
                }
            }
        }
        return Collections.emptySet();
    }

    public void setSessionHandler(SessionHandler sessionHandler) {
        if (isStarted()) {
            throw new IllegalStateException(AbstractLifeCycle.STARTED);
        }
        this._sessionHandler = sessionHandler;
    }

    @Override // org.eclipse.jetty.server.handler.ContextHandler
    public void startContext() throws Exception {
        getSessionHandler();
        getSecurityHandler();
        getServletHandler();
        HandlerWrapper handlerWrapper = this._servletHandler;
        SecurityHandler securityHandler = this._securityHandler;
        if (securityHandler != null) {
            securityHandler.setHandler(handlerWrapper);
            handlerWrapper = this._securityHandler;
        }
        SessionHandler sessionHandler = this._sessionHandler;
        if (sessionHandler != null) {
            sessionHandler.setHandler(handlerWrapper);
            handlerWrapper = this._sessionHandler;
        }
        this._wrapper = this;
        while (true) {
            HandlerWrapper handlerWrapper2 = this._wrapper;
            if (handlerWrapper2 == handlerWrapper || !(handlerWrapper2.getHandler() instanceof HandlerWrapper)) {
                break;
            } else {
                this._wrapper = (HandlerWrapper) this._wrapper.getHandler();
            }
        }
        HandlerWrapper handlerWrapper3 = this._wrapper;
        if (handlerWrapper3 != handlerWrapper) {
            if (handlerWrapper3.getHandler() != null) {
                throw new IllegalStateException("!ScopedHandler");
            }
            this._wrapper.setHandler(handlerWrapper);
        }
        super.startContext();
        ServletHandler servletHandler = this._servletHandler;
        if (servletHandler == null || !servletHandler.isStarted()) {
            return;
        }
        for (int size = this._decorators.size() - 1; size >= 0; size--) {
            Decorator decorator = this._decorators.get(size);
            if (this._servletHandler.getFilters() != null) {
                for (FilterHolder filterHolder : this._servletHandler.getFilters()) {
                    decorator.decorateFilterHolder(filterHolder);
                }
            }
            if (this._servletHandler.getServlets() != null) {
                for (ServletHolder servletHolder : this._servletHandler.getServlets()) {
                    decorator.decorateServletHolder(servletHolder);
                }
            }
        }
        this._servletHandler.initialize();
    }

    public ServletContextHandler(int i4) {
        this(null, null, i4);
    }

    public FilterHolder addFilter(Class<? extends e> cls, String str, EnumSet<d> enumSet) {
        return getServletHandler().addFilterWithMapping(cls, str, enumSet);
    }

    public ServletHolder addServlet(Class<? extends n> cls, String str) {
        return getServletHandler().addServletWithMapping(cls.getName(), str);
    }

    public ServletContextHandler(HandlerContainer handlerContainer, String str) {
        this(handlerContainer, str, null, null, null, null);
    }

    public FilterHolder addFilter(String str, String str2, EnumSet<d> enumSet) {
        return getServletHandler().addFilterWithMapping(str, str2, enumSet);
    }

    public void addServlet(ServletHolder servletHolder, String str) {
        getServletHandler().addServletWithMapping(servletHolder, str);
    }

    public ServletContextHandler(HandlerContainer handlerContainer, String str, int i4) {
        this(handlerContainer, str, null, null, null, null);
        this._options = i4;
    }

    public class Context extends ContextHandler.Context {
        public Context() {
            super();
        }

        @Override // org.eclipse.jetty.server.handler.ContextHandler.Context
        public h.a addFilter(String str, Class<? extends e> cls) {
            if (ServletContextHandler.this.isStarted()) {
                throw new IllegalStateException();
            }
            if (!this._enabled) {
                throw new UnsupportedOperationException();
            }
            ServletHandler servletHandler = ServletContextHandler.this.getServletHandler();
            FilterHolder filter = servletHandler.getFilter(str);
            if (filter == null) {
                FilterHolder filterHolderNewFilterHolder = servletHandler.newFilterHolder(Holder.Source.JAVAX_API);
                filterHolderNewFilterHolder.setName(str);
                filterHolderNewFilterHolder.setHeldClass(cls);
                servletHandler.addFilter(filterHolderNewFilterHolder);
                return filterHolderNewFilterHolder.getRegistration();
            }
            if (filter.getClassName() != null || filter.getHeldClass() != null) {
                return null;
            }
            filter.setHeldClass(cls);
            return filter.getRegistration();
        }

        @Override // org.eclipse.jetty.server.handler.ContextHandler.Context
        public void addListener(String str) {
            if (!ServletContextHandler.this.isStarting()) {
                throw new IllegalStateException();
            }
            if (!this._enabled) {
                throw new UnsupportedOperationException();
            }
            super.addListener(str);
        }

        @Override // org.eclipse.jetty.server.handler.ContextHandler.Context
        public x.a addServlet(String str, Class<? extends n> cls) {
            if (!ServletContextHandler.this.isStarting()) {
                throw new IllegalStateException();
            }
            if (!this._enabled) {
                throw new UnsupportedOperationException();
            }
            ServletHandler servletHandler = ServletContextHandler.this.getServletHandler();
            ServletHolder servlet = servletHandler.getServlet(str);
            if (servlet == null) {
                ServletHolder servletHolderNewServletHolder = servletHandler.newServletHolder(Holder.Source.JAVAX_API);
                servletHolderNewServletHolder.setName(str);
                servletHolderNewServletHolder.setHeldClass(cls);
                servletHandler.addServlet(servletHolderNewServletHolder);
                return ServletContextHandler.this.dynamicHolderAdded(servletHolderNewServletHolder);
            }
            if (servlet.getClassName() != null || servlet.getHeldClass() != null) {
                return null;
            }
            servlet.setHeldClass(cls);
            return servlet.getRegistration();
        }

        @Override // org.eclipse.jetty.server.handler.ContextHandler.Context
        public <T extends e> T createFilter(Class<T> cls) throws u {
            try {
                T tNewInstance = cls.newInstance();
                for (int size = ServletContextHandler.this._decorators.size() - 1; size >= 0; size--) {
                    tNewInstance = (T) ServletContextHandler.this._decorators.get(size).decorateFilterInstance(tNewInstance);
                }
                return tNewInstance;
            } catch (IllegalAccessException e4) {
                throw new u(e4);
            } catch (InstantiationException e5) {
                throw new u(e5);
            }
        }

        @Override // org.eclipse.jetty.server.handler.ContextHandler.Context
        public <T extends EventListener> T createListener(Class<T> cls) throws u {
            try {
                T t3 = (T) super.createListener(cls);
                for (int size = ServletContextHandler.this._decorators.size() - 1; size >= 0; size--) {
                    t3 = (T) ServletContextHandler.this._decorators.get(size).decorateListenerInstance(t3);
                }
                return t3;
            } catch (u e4) {
                throw e4;
            } catch (Exception e5) {
                throw new u(e5);
            }
        }

        @Override // org.eclipse.jetty.server.handler.ContextHandler.Context
        public <T extends n> T createServlet(Class<T> cls) throws u {
            try {
                T tNewInstance = cls.newInstance();
                for (int size = ServletContextHandler.this._decorators.size() - 1; size >= 0; size--) {
                    tNewInstance = (T) ServletContextHandler.this._decorators.get(size).decorateServletInstance(tNewInstance);
                }
                return tNewInstance;
            } catch (IllegalAccessException e4) {
                throw new u(e4);
            } catch (InstantiationException e5) {
                throw new u(e5);
            }
        }

        @Override // org.eclipse.jetty.server.handler.ContextHandler.Context
        public void declareRoles(String... strArr) {
            if (!ServletContextHandler.this.isStarting()) {
                throw new IllegalStateException();
            }
            if (!this._enabled) {
                throw new UnsupportedOperationException();
            }
            ServletContextHandler.this.addRoles(strArr);
        }

        @Override // org.eclipse.jetty.server.handler.ContextHandler.Context
        public Set<i0> getDefaultSessionTrackingModes() {
            SessionHandler sessionHandler = ServletContextHandler.this._sessionHandler;
            if (sessionHandler != null) {
                return sessionHandler.getSessionManager().getDefaultSessionTrackingModes();
            }
            return null;
        }

        @Override // org.eclipse.jetty.server.handler.ContextHandler.Context
        public Set<i0> getEffectiveSessionTrackingModes() {
            SessionHandler sessionHandler = ServletContextHandler.this._sessionHandler;
            if (sessionHandler != null) {
                return sessionHandler.getSessionManager().getEffectiveSessionTrackingModes();
            }
            return null;
        }

        @Override // org.eclipse.jetty.server.handler.ContextHandler.Context
        public h getFilterRegistration(String str) {
            if (!this._enabled) {
                throw new UnsupportedOperationException();
            }
            FilterHolder filter = ServletContextHandler.this.getServletHandler().getFilter(str);
            if (filter == null) {
                return null;
            }
            return filter.getRegistration();
        }

        @Override // org.eclipse.jetty.server.handler.ContextHandler.Context
        public Map<String, ? extends h> getFilterRegistrations() {
            if (!this._enabled) {
                throw new UnsupportedOperationException();
            }
            HashMap map = new HashMap();
            FilterHolder[] filters = ServletContextHandler.this.getServletHandler().getFilters();
            if (filters != null) {
                for (FilterHolder filterHolder : filters) {
                    map.put(filterHolder.getName(), filterHolder.getRegistration());
                }
            }
            return map;
        }

        @Override // org.eclipse.jetty.server.handler.ContextHandler.Context
        public a getJspConfigDescriptor() {
            return ServletContextHandler.this._jspConfig;
        }

        @Override // org.eclipse.jetty.server.handler.ContextHandler.Context
        public m getNamedDispatcher(String str) {
            ServletHolder servlet;
            ServletContextHandler servletContextHandler = ServletContextHandler.this;
            ServletHandler servletHandler = servletContextHandler._servletHandler;
            if (servletHandler == null || (servlet = servletHandler.getServlet(str)) == null || !servlet.isEnabled()) {
                return null;
            }
            return new Dispatcher(servletContextHandler, str);
        }

        @Override // org.eclipse.jetty.server.handler.ContextHandler.Context
        public x getServletRegistration(String str) {
            if (!this._enabled) {
                throw new UnsupportedOperationException();
            }
            ServletHolder servlet = ServletContextHandler.this.getServletHandler().getServlet(str);
            if (servlet == null) {
                return null;
            }
            return servlet.getRegistration();
        }

        @Override // org.eclipse.jetty.server.handler.ContextHandler.Context
        public Map<String, ? extends x> getServletRegistrations() {
            if (!this._enabled) {
                throw new UnsupportedOperationException();
            }
            HashMap map = new HashMap();
            ServletHolder[] servlets = ServletContextHandler.this.getServletHandler().getServlets();
            if (servlets != null) {
                for (ServletHolder servletHolder : servlets) {
                    map.put(servletHolder.getName(), servletHolder.getRegistration());
                }
            }
            return map;
        }

        @Override // org.eclipse.jetty.server.handler.ContextHandler.Context
        public h0 getSessionCookieConfig() {
            if (!this._enabled) {
                throw new UnsupportedOperationException();
            }
            SessionHandler sessionHandler = ServletContextHandler.this._sessionHandler;
            if (sessionHandler != null) {
                return sessionHandler.getSessionManager().getSessionCookieConfig();
            }
            return null;
        }

        @Override // org.eclipse.jetty.server.handler.ContextHandler.Context
        public boolean setInitParameter(String str, String str2) {
            if (!ServletContextHandler.this.isStarting()) {
                throw new IllegalStateException();
            }
            if (this._enabled) {
                return super.setInitParameter(str, str2);
            }
            throw new UnsupportedOperationException();
        }

        @Override // org.eclipse.jetty.server.handler.ContextHandler.Context
        public void setJspConfigDescriptor(a aVar) {
            ServletContextHandler.this._jspConfig = aVar;
        }

        @Override // org.eclipse.jetty.server.handler.ContextHandler.Context
        public void setSessionTrackingModes(Set<i0> set) {
            if (!ServletContextHandler.this.isStarting()) {
                throw new IllegalStateException();
            }
            if (!this._enabled) {
                throw new UnsupportedOperationException();
            }
            SessionHandler sessionHandler = ServletContextHandler.this._sessionHandler;
            if (sessionHandler != null) {
                sessionHandler.getSessionManager().setSessionTrackingModes(set);
            }
        }

        @Override // org.eclipse.jetty.server.handler.ContextHandler.Context
        public <T extends EventListener> void addListener(T t3) {
            if (ServletContextHandler.this.isStarting()) {
                if (this._enabled) {
                    super.addListener(t3);
                    return;
                }
                throw new UnsupportedOperationException();
            }
            throw new IllegalStateException();
        }

        @Override // org.eclipse.jetty.server.handler.ContextHandler.Context
        public void addListener(Class<? extends EventListener> cls) {
            if (ServletContextHandler.this.isStarting()) {
                if (this._enabled) {
                    super.addListener(cls);
                    return;
                }
                throw new UnsupportedOperationException();
            }
            throw new IllegalStateException();
        }

        @Override // org.eclipse.jetty.server.handler.ContextHandler.Context
        public h.a addFilter(String str, String str2) {
            if (!ServletContextHandler.this.isStarted()) {
                if (this._enabled) {
                    ServletHandler servletHandler = ServletContextHandler.this.getServletHandler();
                    FilterHolder filter = servletHandler.getFilter(str);
                    if (filter == null) {
                        FilterHolder filterHolderNewFilterHolder = servletHandler.newFilterHolder(Holder.Source.JAVAX_API);
                        filterHolderNewFilterHolder.setName(str);
                        filterHolderNewFilterHolder.setClassName(str2);
                        servletHandler.addFilter(filterHolderNewFilterHolder);
                        return filterHolderNewFilterHolder.getRegistration();
                    }
                    if (filter.getClassName() != null || filter.getHeldClass() != null) {
                        return null;
                    }
                    filter.setClassName(str2);
                    return filter.getRegistration();
                }
                throw new UnsupportedOperationException();
            }
            throw new IllegalStateException();
        }

        @Override // org.eclipse.jetty.server.handler.ContextHandler.Context
        public x.a addServlet(String str, String str2) {
            if (ServletContextHandler.this.isStarting()) {
                if (this._enabled) {
                    ServletHandler servletHandler = ServletContextHandler.this.getServletHandler();
                    ServletHolder servlet = servletHandler.getServlet(str);
                    if (servlet == null) {
                        ServletHolder servletHolderNewServletHolder = servletHandler.newServletHolder(Holder.Source.JAVAX_API);
                        servletHolderNewServletHolder.setName(str);
                        servletHolderNewServletHolder.setClassName(str2);
                        servletHandler.addServlet(servletHolderNewServletHolder);
                        return ServletContextHandler.this.dynamicHolderAdded(servletHolderNewServletHolder);
                    }
                    if (servlet.getClassName() != null || servlet.getHeldClass() != null) {
                        return null;
                    }
                    servlet.setClassName(str2);
                    return servlet.getRegistration();
                }
                throw new UnsupportedOperationException();
            }
            throw new IllegalStateException();
        }

        @Override // org.eclipse.jetty.server.handler.ContextHandler.Context
        public h.a addFilter(String str, e eVar) {
            if (!ServletContextHandler.this.isStarted()) {
                if (this._enabled) {
                    ServletHandler servletHandler = ServletContextHandler.this.getServletHandler();
                    FilterHolder filter = servletHandler.getFilter(str);
                    if (filter == null) {
                        FilterHolder filterHolderNewFilterHolder = servletHandler.newFilterHolder(Holder.Source.JAVAX_API);
                        filterHolderNewFilterHolder.setName(str);
                        filterHolderNewFilterHolder.setFilter(eVar);
                        servletHandler.addFilter(filterHolderNewFilterHolder);
                        return filterHolderNewFilterHolder.getRegistration();
                    }
                    if (filter.getClassName() != null || filter.getHeldClass() != null) {
                        return null;
                    }
                    filter.setFilter(eVar);
                    return filter.getRegistration();
                }
                throw new UnsupportedOperationException();
            }
            throw new IllegalStateException();
        }

        @Override // org.eclipse.jetty.server.handler.ContextHandler.Context
        public x.a addServlet(String str, n nVar) {
            if (ServletContextHandler.this.isStarting()) {
                if (this._enabled) {
                    ServletHandler servletHandler = ServletContextHandler.this.getServletHandler();
                    ServletHolder servlet = servletHandler.getServlet(str);
                    if (servlet == null) {
                        ServletHolder servletHolderNewServletHolder = servletHandler.newServletHolder(Holder.Source.JAVAX_API);
                        servletHolderNewServletHolder.setName(str);
                        servletHolderNewServletHolder.setServlet(nVar);
                        servletHandler.addServlet(servletHolderNewServletHolder);
                        return ServletContextHandler.this.dynamicHolderAdded(servletHolderNewServletHolder);
                    }
                    if (servlet.getClassName() != null || servlet.getHeldClass() != null) {
                        return null;
                    }
                    servlet.setServlet(nVar);
                    return servlet.getRegistration();
                }
                throw new UnsupportedOperationException();
            }
            throw new IllegalStateException();
        }
    }

    public ServletContextHandler(HandlerContainer handlerContainer, String str, boolean z3, boolean z4) {
        this(handlerContainer, str, (z3 ? 1 : 0) | (z4 ? 2 : 0));
    }

    public ServletContextHandler(HandlerContainer handlerContainer, SessionHandler sessionHandler, SecurityHandler securityHandler, ServletHandler servletHandler, ErrorHandler errorHandler) {
        this(handlerContainer, null, sessionHandler, securityHandler, servletHandler, errorHandler);
    }

    public ServletContextHandler(HandlerContainer handlerContainer, String str, SessionHandler sessionHandler, SecurityHandler securityHandler, ServletHandler servletHandler, ErrorHandler errorHandler) {
        super((ContextHandler.Context) null);
        this._decorators = new ArrayList();
        this._defaultSecurityHandlerClass = ConstraintSecurityHandler.class;
        this._restrictListeners = true;
        this._scontext = new Context();
        this._sessionHandler = sessionHandler;
        this._securityHandler = securityHandler;
        this._servletHandler = servletHandler;
        if (errorHandler != null) {
            setErrorHandler(errorHandler);
        }
        if (str != null) {
            setContextPath(str);
        }
        if (handlerContainer instanceof HandlerWrapper) {
            ((HandlerWrapper) handlerContainer).setHandler(this);
        } else if (handlerContainer instanceof HandlerCollection) {
            ((HandlerCollection) handlerContainer).addHandler(this);
        }
    }
}
