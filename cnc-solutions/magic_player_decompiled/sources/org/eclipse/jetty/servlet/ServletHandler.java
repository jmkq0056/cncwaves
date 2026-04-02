package org.eclipse.jetty.servlet;

import g2.d;
import g2.e0;
import g2.f;
import g2.g0;
import g2.n;
import g2.p;
import g2.x;
import g2.y;
import j2.c;
import j2.e;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ConcurrentMap;
import javax.servlet.FilterChain;
import org.eclipse.jetty.http.PathMap;
import org.eclipse.jetty.security.IdentityService;
import org.eclipse.jetty.security.SecurityHandler;
import org.eclipse.jetty.server.AbstractHttpConnection;
import org.eclipse.jetty.server.Request;
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.server.UserIdentity;
import org.eclipse.jetty.server.handler.ContextHandler;
import org.eclipse.jetty.server.handler.ScopedHandler;
import org.eclipse.jetty.servlet.Holder;
import org.eclipse.jetty.util.LazyList;
import org.eclipse.jetty.util.MultiException;
import org.eclipse.jetty.util.MultiMap;
import org.eclipse.jetty.util.TypeUtil;
import org.eclipse.jetty.util.URIUtil;
import org.eclipse.jetty.util.component.AggregateLifeCycle;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class ServletHandler extends ScopedHandler {
    private static final Logger LOG;
    private static final Logger LOG_UNHANDLED;
    public static final String __DEFAULT_SERVLET = "default";
    private ServletContextHandler _contextHandler;
    private FilterMapping[] _filterMappings;
    private MultiMap<String> _filterNameMappings;
    private List<FilterMapping> _filterPathMappings;
    private IdentityService _identityService;
    private ContextHandler.Context _servletContext;
    private ServletMapping[] _servletMappings;
    private PathMap _servletPathMap;
    private FilterHolder[] _filters = new FilterHolder[0];
    private int _matchBeforeIndex = -1;
    private int _matchAfterIndex = -1;
    private boolean _filterChainsCached = true;
    private int _maxFilterChainsCacheSize = 512;
    private boolean _startWithUnavailable = false;
    private ServletHolder[] _servlets = new ServletHolder[0];
    private final Map<String, FilterHolder> _filterNameMap = new HashMap();
    private final Map<String, ServletHolder> _servletNameMap = new HashMap();
    public final ConcurrentMap<String, FilterChain>[] _chainCache = new ConcurrentMap[31];
    public final Queue<String>[] _chainLRU = new Queue[31];

    public class CachedChain implements f {
        public FilterHolder _filterHolder;
        public CachedChain _next;
        public ServletHolder _servletHolder;

        public CachedChain(Object obj, ServletHolder servletHolder) {
            if (LazyList.size(obj) <= 0) {
                this._servletHolder = servletHolder;
            } else {
                this._filterHolder = (FilterHolder) LazyList.get(obj, 0);
                this._next = ServletHandler.this.newCachedChain(LazyList.remove(obj, 0), servletHolder);
            }
        }

        @Override // g2.f
        public void doFilter(y yVar, e0 e0Var) {
            Request request = yVar instanceof Request ? (Request) yVar : AbstractHttpConnection.getCurrentConnection().getRequest();
            if (this._filterHolder == null) {
                c cVar = (c) yVar;
                if (this._servletHolder == null) {
                    if (ServletHandler.this.getHandler() == null) {
                        ServletHandler.this.notFound(cVar, (e) e0Var);
                        return;
                    } else {
                        ServletHandler.this.nextHandle(URIUtil.addPaths(cVar.getServletPath(), cVar.getPathInfo()), request, cVar, (e) e0Var);
                        return;
                    }
                }
                if (ServletHandler.LOG.isDebugEnabled()) {
                    Logger logger = ServletHandler.LOG;
                    StringBuilder sbA = android.support.v4.media.f.a("call servlet ");
                    sbA.append(this._servletHolder);
                    logger.debug(sbA.toString(), new Object[0]);
                }
                this._servletHolder.handle(request, yVar, e0Var);
                return;
            }
            if (ServletHandler.LOG.isDebugEnabled()) {
                Logger logger2 = ServletHandler.LOG;
                StringBuilder sbA2 = android.support.v4.media.f.a("call filter ");
                sbA2.append(this._filterHolder);
                logger2.debug(sbA2.toString(), new Object[0]);
            }
            g2.e filter = this._filterHolder.getFilter();
            if (this._filterHolder.isAsyncSupported()) {
                filter.doFilter(yVar, e0Var, this._next);
                return;
            }
            if (!request.isAsyncSupported()) {
                filter.doFilter(yVar, e0Var, this._next);
                return;
            }
            try {
                request.setAsyncSupported(false);
                filter.doFilter(yVar, e0Var, this._next);
            } finally {
                request.setAsyncSupported(true);
            }
        }

        public String toString() {
            if (this._filterHolder == null) {
                ServletHolder servletHolder = this._servletHolder;
                return servletHolder != null ? servletHolder.toString() : "null";
            }
            return this._filterHolder + "->" + this._next.toString();
        }
    }

    public class Chain implements f {
        public final Request _baseRequest;
        public final Object _chain;
        public int _filter = 0;
        public final ServletHolder _servletHolder;

        public Chain(Request request, Object obj, ServletHolder servletHolder) {
            this._baseRequest = request;
            this._chain = obj;
            this._servletHolder = servletHolder;
        }

        @Override // g2.f
        public void doFilter(y yVar, e0 e0Var) {
            if (ServletHandler.LOG.isDebugEnabled()) {
                Logger logger = ServletHandler.LOG;
                StringBuilder sbA = android.support.v4.media.f.a("doFilter ");
                sbA.append(this._filter);
                logger.debug(sbA.toString(), new Object[0]);
            }
            if (this._filter >= LazyList.size(this._chain)) {
                c cVar = (c) yVar;
                if (this._servletHolder == null) {
                    if (ServletHandler.this.getHandler() == null) {
                        ServletHandler.this.notFound(cVar, (e) e0Var);
                        return;
                    } else {
                        ServletHandler.this.nextHandle(URIUtil.addPaths(cVar.getServletPath(), cVar.getPathInfo()), yVar instanceof Request ? (Request) yVar : AbstractHttpConnection.getCurrentConnection().getRequest(), cVar, (e) e0Var);
                        return;
                    }
                }
                if (ServletHandler.LOG.isDebugEnabled()) {
                    Logger logger2 = ServletHandler.LOG;
                    StringBuilder sbA2 = android.support.v4.media.f.a("call servlet ");
                    sbA2.append(this._servletHolder);
                    logger2.debug(sbA2.toString(), new Object[0]);
                }
                this._servletHolder.handle(this._baseRequest, yVar, e0Var);
                return;
            }
            Object obj = this._chain;
            int i4 = this._filter;
            this._filter = i4 + 1;
            FilterHolder filterHolder = (FilterHolder) LazyList.get(obj, i4);
            if (ServletHandler.LOG.isDebugEnabled()) {
                ServletHandler.LOG.debug("call filter " + filterHolder, new Object[0]);
            }
            g2.e filter = filterHolder.getFilter();
            if (filterHolder.isAsyncSupported() || !this._baseRequest.isAsyncSupported()) {
                filter.doFilter(yVar, e0Var, this);
                return;
            }
            try {
                this._baseRequest.setAsyncSupported(false);
                filter.doFilter(yVar, e0Var, this);
            } finally {
                this._baseRequest.setAsyncSupported(true);
            }
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            for (int i4 = 0; i4 < LazyList.size(this._chain); i4++) {
                sb.append(LazyList.get(this._chain, i4).toString());
                sb.append("->");
            }
            sb.append(this._servletHolder);
            return sb.toString();
        }
    }

    static {
        Logger logger = Log.getLogger((Class<?>) ServletHandler.class);
        LOG = logger;
        LOG_UNHANDLED = logger.getLogger("unhandled");
    }

    public FilterHolder addFilter(String str, String str2, EnumSet<d> enumSet) {
        return addFilterWithMapping(str, str2, enumSet);
    }

    public void addFilterMapping(FilterMapping filterMapping) {
        if (filterMapping != null) {
            Holder.Source source = filterMapping.getFilterHolder() == null ? null : filterMapping.getFilterHolder().getSource();
            FilterMapping[] filterMappings = getFilterMappings();
            if (filterMappings == null || filterMappings.length == 0) {
                setFilterMappings(insertFilterMapping(filterMapping, 0, false));
                if (source == null || source != Holder.Source.JAVAX_API) {
                    return;
                }
                this._matchAfterIndex = 0;
                return;
            }
            if (source != null && Holder.Source.JAVAX_API == source) {
                setFilterMappings(insertFilterMapping(filterMapping, filterMappings.length - 1, false));
                if (this._matchAfterIndex < 0) {
                    this._matchAfterIndex = getFilterMappings().length - 1;
                    return;
                }
                return;
            }
            int i4 = this._matchAfterIndex;
            if (i4 < 0) {
                setFilterMappings(insertFilterMapping(filterMapping, filterMappings.length - 1, false));
                return;
            }
            FilterMapping[] filterMappingArrInsertFilterMapping = insertFilterMapping(filterMapping, i4, true);
            this._matchAfterIndex++;
            setFilterMappings(filterMappingArrInsertFilterMapping);
        }
    }

    public FilterHolder addFilterWithMapping(Class<? extends g2.e> cls, String str, EnumSet<d> enumSet) {
        FilterHolder filterHolderNewFilterHolder = newFilterHolder(Holder.Source.EMBEDDED);
        filterHolderNewFilterHolder.setHeldClass(cls);
        addFilterWithMapping(filterHolderNewFilterHolder, str, enumSet);
        return filterHolderNewFilterHolder;
    }

    public void addServlet(ServletHolder servletHolder) {
        setServlets((ServletHolder[]) LazyList.addToArray(getServlets(), servletHolder, ServletHolder.class));
    }

    public void addServletMapping(ServletMapping servletMapping) {
        setServletMappings((ServletMapping[]) LazyList.addToArray(getServletMappings(), servletMapping, ServletMapping.class));
    }

    public ServletHolder addServletWithMapping(String str, String str2) {
        ServletHolder servletHolderNewServletHolder = newServletHolder(Holder.Source.EMBEDDED);
        servletHolderNewServletHolder.setClassName(str);
        addServletWithMapping(servletHolderNewServletHolder, str2);
        return servletHolderNewServletHolder;
    }

    public void destroyFilter(g2.e eVar) {
        ServletContextHandler servletContextHandler = this._contextHandler;
        if (servletContextHandler != null) {
            servletContextHandler.destroyFilter(eVar);
        }
    }

    public void destroyServlet(n nVar) {
        ServletContextHandler servletContextHandler = this._contextHandler;
        if (servletContextHandler != null) {
            servletContextHandler.destroyServlet(nVar);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0205  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003d  */
    /* JADX WARN: Type inference failed for: r0v45 */
    /* JADX WARN: Type inference failed for: r0v46, types: [g2.y] */
    /* JADX WARN: Type inference failed for: r0v50 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r11v0, types: [org.eclipse.jetty.util.log.Logger] */
    /* JADX WARN: Type inference failed for: r13v0, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r16v0, types: [org.eclipse.jetty.server.handler.HandlerWrapper, org.eclipse.jetty.server.handler.ScopedHandler, org.eclipse.jetty.servlet.ServletHandler] */
    /* JADX WARN: Type inference failed for: r19v0, types: [g2.y, j2.c, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v1, types: [org.eclipse.jetty.servlet.ServletHolder] */
    /* JADX WARN: Type inference failed for: r9v18 */
    /* JADX WARN: Type inference failed for: r9v19 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6, types: [g2.f] */
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
    @Override // org.eclipse.jetty.server.handler.ScopedHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void doHandle(java.lang.String r17, org.eclipse.jetty.server.Request r18, j2.c r19, j2.e r20) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 540
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.servlet.ServletHandler.doHandle(java.lang.String, org.eclipse.jetty.server.Request, j2.c, j2.e):void");
    }

    @Override // org.eclipse.jetty.server.handler.ScopedHandler
    public void doScope(String str, Request request, c cVar, e eVar) {
        ServletHolder servletHolder;
        d dVar = d.INCLUDE;
        String servletPath = request.getServletPath();
        String pathInfo = request.getPathInfo();
        d dispatcherType = request.getDispatcherType();
        if (str.startsWith("/")) {
            PathMap.Entry holderEntry = getHolderEntry(str);
            if (holderEntry != null) {
                servletHolder = (ServletHolder) holderEntry.getValue();
                String str2 = (String) holderEntry.getKey();
                String mapped = holderEntry.getMapped() != null ? holderEntry.getMapped() : PathMap.pathMatch(str2, str);
                String strPathInfo = PathMap.pathInfo(str2, str);
                if (dVar.equals(dispatcherType)) {
                    request.setAttribute("javax.servlet.include.servlet_path", mapped);
                    request.setAttribute("javax.servlet.include.path_info", strPathInfo);
                } else {
                    request.setServletPath(mapped);
                    request.setPathInfo(strPathInfo);
                }
            } else {
                servletHolder = null;
            }
        } else {
            servletHolder = this._servletNameMap.get(str);
        }
        Logger logger = LOG;
        if (logger.isDebugEnabled()) {
            logger.debug("servlet {}|{}|{} -> {}", request.getContextPath(), request.getServletPath(), request.getPathInfo(), servletHolder);
        }
        try {
            UserIdentity.Scope userIdentityScope = request.getUserIdentityScope();
            request.setUserIdentityScope(servletHolder);
            if (never()) {
                nextScope(str, request, cVar, eVar);
            } else {
                ScopedHandler scopedHandler = this._nextScope;
                if (scopedHandler != null) {
                    scopedHandler.doScope(str, request, cVar, eVar);
                } else {
                    ScopedHandler scopedHandler2 = this._outerScope;
                    if (scopedHandler2 != null) {
                        scopedHandler2.doHandle(str, request, cVar, eVar);
                    } else {
                        doHandle(str, request, cVar, eVar);
                    }
                }
            }
            if (userIdentityScope != null) {
                request.setUserIdentityScope(userIdentityScope);
            }
            if (dVar.equals(dispatcherType)) {
                return;
            }
            request.setServletPath(servletPath);
            request.setPathInfo(pathInfo);
        } catch (Throwable th) {
            if (0 != 0) {
                request.setUserIdentityScope(null);
            }
            if (!dVar.equals(dispatcherType)) {
                request.setServletPath(servletPath);
                request.setPathInfo(pathInfo);
            }
            throw th;
        }
    }

    @Override // org.eclipse.jetty.server.handler.ScopedHandler, org.eclipse.jetty.server.handler.HandlerWrapper, org.eclipse.jetty.server.handler.AbstractHandler, org.eclipse.jetty.util.component.AggregateLifeCycle, org.eclipse.jetty.util.component.AbstractLifeCycle
    public synchronized void doStart() {
        SecurityHandler securityHandler;
        ContextHandler.Context currentContext = ContextHandler.getCurrentContext();
        this._servletContext = currentContext;
        ServletContextHandler servletContextHandler = (ServletContextHandler) (currentContext == null ? null : currentContext.getContextHandler());
        this._contextHandler = servletContextHandler;
        if (servletContextHandler != null && (securityHandler = (SecurityHandler) servletContextHandler.getChildHandlerByClass(SecurityHandler.class)) != null) {
            this._identityService = securityHandler.getIdentityService();
        }
        updateNameMappings();
        updateMappings();
        if (this._filterChainsCached) {
            this._chainCache[1] = new ConcurrentHashMap();
            this._chainCache[2] = new ConcurrentHashMap();
            this._chainCache[4] = new ConcurrentHashMap();
            this._chainCache[8] = new ConcurrentHashMap();
            this._chainCache[16] = new ConcurrentHashMap();
            this._chainLRU[1] = new ConcurrentLinkedQueue();
            this._chainLRU[2] = new ConcurrentLinkedQueue();
            this._chainLRU[4] = new ConcurrentLinkedQueue();
            this._chainLRU[8] = new ConcurrentLinkedQueue();
            this._chainLRU[16] = new ConcurrentLinkedQueue();
        }
        super.doStart();
        ServletContextHandler servletContextHandler2 = this._contextHandler;
        if (servletContextHandler2 == null || !(servletContextHandler2 instanceof ServletContextHandler)) {
            initialize();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a3 A[Catch: all -> 0x011d, TRY_LEAVE, TryCatch #2 {, blocks: (B:3:0x0001, B:5:0x0013, B:8:0x0018, B:12:0x0028, B:14:0x0034, B:15:0x0045, B:17:0x004b, B:19:0x0063, B:20:0x0067, B:11:0x0021, B:22:0x0070, B:24:0x0087, B:27:0x008b, B:29:0x0090, B:31:0x00a3, B:34:0x00a8, B:38:0x00b8, B:40:0x00c4, B:41:0x00d5, B:43:0x00db, B:45:0x00f3, B:46:0x00f7, B:37:0x00b1, B:48:0x0100), top: B:60:0x0001, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0100 A[Catch: all -> 0x011d, EDGE_INSN: B:69:0x0100->B:48:0x0100 BREAK  A[LOOP:2: B:32:0x00a4->B:47:0x00fe], TRY_LEAVE, TryCatch #2 {, blocks: (B:3:0x0001, B:5:0x0013, B:8:0x0018, B:12:0x0028, B:14:0x0034, B:15:0x0045, B:17:0x004b, B:19:0x0063, B:20:0x0067, B:11:0x0021, B:22:0x0070, B:24:0x0087, B:27:0x008b, B:29:0x0090, B:31:0x00a3, B:34:0x00a8, B:38:0x00b8, B:40:0x00c4, B:41:0x00d5, B:43:0x00db, B:45:0x00f3, B:46:0x00f7, B:37:0x00b1, B:48:0x0100), top: B:60:0x0001, inners: #0, #1 }] */
    @Override // org.eclipse.jetty.server.handler.HandlerWrapper, org.eclipse.jetty.server.handler.AbstractHandler, org.eclipse.jetty.util.component.AggregateLifeCycle, org.eclipse.jetty.util.component.AbstractLifeCycle
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void doStop() {
        /*
            Method dump skipped, instruction units count: 290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.servlet.ServletHandler.doStop():void");
    }

    @Override // org.eclipse.jetty.server.handler.AbstractHandlerContainer, org.eclipse.jetty.util.component.AggregateLifeCycle, org.eclipse.jetty.util.component.Dumpable
    public void dump(Appendable appendable, String str) {
        super.dumpThis(appendable);
        AggregateLifeCycle.dump(appendable, str, TypeUtil.asList(getHandlers()), getBeans(), TypeUtil.asList(getFilterMappings()), TypeUtil.asList(getFilters()), TypeUtil.asList(getServletMappings()), TypeUtil.asList(getServlets()));
    }

    public Object getContextLog() {
        return null;
    }

    public FilterHolder getFilter(String str) {
        return this._filterNameMap.get(str);
    }

    public f getFilterChain(Request request, String str, ServletHolder servletHolder) {
        Object objAdd;
        MultiMap<String> multiMap;
        ConcurrentMap<String, FilterChain>[] concurrentMapArr;
        f fVar;
        String name = str == null ? servletHolder.getName() : str;
        int iDispatch = FilterMapping.dispatch(request.getDispatcherType());
        if (this._filterChainsCached && (concurrentMapArr = this._chainCache) != null && (fVar = concurrentMapArr[iDispatch].get(name)) != null) {
            return fVar;
        }
        if (str == null || this._filterPathMappings == null) {
            objAdd = null;
        } else {
            objAdd = null;
            for (int i4 = 0; i4 < this._filterPathMappings.size(); i4++) {
                FilterMapping filterMapping = this._filterPathMappings.get(i4);
                if (filterMapping.appliesTo(str, iDispatch)) {
                    objAdd = LazyList.add(objAdd, filterMapping.getFilterHolder());
                }
            }
        }
        if (servletHolder != null && (multiMap = this._filterNameMappings) != null && multiMap.size() > 0 && this._filterNameMappings.size() > 0) {
            Object obj = this._filterNameMappings.get(servletHolder.getName());
            for (int i5 = 0; i5 < LazyList.size(obj); i5++) {
                FilterMapping filterMapping2 = (FilterMapping) LazyList.get(obj, i5);
                if (filterMapping2.appliesTo(iDispatch)) {
                    objAdd = LazyList.add(objAdd, filterMapping2.getFilterHolder());
                }
            }
            Object obj2 = this._filterNameMappings.get("*");
            for (int i6 = 0; i6 < LazyList.size(obj2); i6++) {
                FilterMapping filterMapping3 = (FilterMapping) LazyList.get(obj2, i6);
                if (filterMapping3.appliesTo(iDispatch)) {
                    objAdd = LazyList.add(objAdd, filterMapping3.getFilterHolder());
                }
            }
        }
        if (objAdd == null) {
            return null;
        }
        if (!this._filterChainsCached) {
            if (LazyList.size(objAdd) > 0) {
                return new Chain(request, objAdd, servletHolder);
            }
            return null;
        }
        FilterChain filterChainNewCachedChain = LazyList.size(objAdd) > 0 ? newCachedChain(objAdd, servletHolder) : null;
        ConcurrentMap<String, FilterChain> concurrentMap = this._chainCache[iDispatch];
        Queue<String> queue = this._chainLRU[iDispatch];
        while (true) {
            if (this._maxFilterChainsCacheSize <= 0 || concurrentMap.size() < this._maxFilterChainsCacheSize) {
                break;
            }
            String strPoll = queue.poll();
            if (strPoll == null) {
                concurrentMap.clear();
                break;
            }
            concurrentMap.remove(strPoll);
        }
        concurrentMap.put(name, filterChainNewCachedChain);
        queue.add(name);
        return filterChainNewCachedChain;
    }

    public FilterMapping[] getFilterMappings() {
        return this._filterMappings;
    }

    public FilterHolder[] getFilters() {
        return this._filters;
    }

    public PathMap.Entry getHolderEntry(String str) {
        PathMap pathMap = this._servletPathMap;
        if (pathMap == null) {
            return null;
        }
        return pathMap.getMatch(str);
    }

    public IdentityService getIdentityService() {
        return this._identityService;
    }

    public int getMaxFilterChainsCacheSize() {
        return this._maxFilterChainsCacheSize;
    }

    public ServletHolder getServlet(String str) {
        return this._servletNameMap.get(str);
    }

    public p getServletContext() {
        return this._servletContext;
    }

    public ServletMapping getServletMapping(String str) {
        ServletMapping[] servletMappingArr = this._servletMappings;
        ServletMapping servletMapping = null;
        if (servletMappingArr != null) {
            for (ServletMapping servletMapping2 : servletMappingArr) {
                String[] pathSpecs = servletMapping2.getPathSpecs();
                if (pathSpecs != null) {
                    for (String str2 : pathSpecs) {
                        if (str.equals(str2)) {
                            servletMapping = servletMapping2;
                        }
                    }
                }
            }
        }
        return servletMapping;
    }

    public ServletMapping[] getServletMappings() {
        return this._servletMappings;
    }

    public ServletHolder[] getServlets() {
        return this._servlets;
    }

    public void initialize() throws Exception {
        MultiException multiException = new MultiException();
        if (this._filters != null) {
            int i4 = 0;
            while (true) {
                FilterHolder[] filterHolderArr = this._filters;
                if (i4 >= filterHolderArr.length) {
                    break;
                }
                filterHolderArr[i4].start();
                i4++;
            }
        }
        ServletHolder[] servletHolderArr = this._servlets;
        if (servletHolderArr != null) {
            ServletHolder[] servletHolderArr2 = (ServletHolder[]) servletHolderArr.clone();
            Arrays.sort(servletHolderArr2);
            for (int i5 = 0; i5 < servletHolderArr2.length; i5++) {
                try {
                    if (servletHolderArr2[i5].getClassName() != null || servletHolderArr2[i5].getForcedPath() == null) {
                        servletHolderArr2[i5].start();
                    } else {
                        ServletHolder servletHolder = (ServletHolder) this._servletPathMap.match(servletHolderArr2[i5].getForcedPath());
                        if (servletHolder != null && servletHolder.getClassName() != null) {
                            servletHolderArr2[i5].setClassName(servletHolder.getClassName());
                            servletHolderArr2[i5].start();
                        }
                        multiException.add(new IllegalStateException("No forced path servlet for " + servletHolderArr2[i5].getForcedPath()));
                    }
                } catch (Throwable th) {
                    LOG.debug(Log.EXCEPTION, th);
                    multiException.add(th);
                }
            }
            multiException.ifExceptionThrow();
        }
    }

    public FilterMapping[] insertFilterMapping(FilterMapping filterMapping, int i4, boolean z3) {
        if (i4 < 0) {
            throw new IllegalArgumentException("FilterMapping insertion pos < 0");
        }
        FilterMapping[] filterMappings = getFilterMappings();
        if (filterMappings == null || filterMappings.length == 0) {
            return new FilterMapping[]{filterMapping};
        }
        FilterMapping[] filterMappingArr = new FilterMapping[filterMappings.length + 1];
        if (z3) {
            System.arraycopy(filterMappings, 0, filterMappingArr, 0, i4);
            filterMappingArr[i4] = filterMapping;
            System.arraycopy(filterMappings, i4, filterMappingArr, i4 + 1, filterMappings.length - i4);
        } else {
            int i5 = i4 + 1;
            System.arraycopy(filterMappings, 0, filterMappingArr, 0, i5);
            filterMappingArr[i5] = filterMapping;
            if (filterMappings.length > i5) {
                System.arraycopy(filterMappings, i5, filterMappingArr, i4 + 2, filterMappings.length - i5);
            }
        }
        return filterMappingArr;
    }

    public void invalidateChainsCache() {
        Queue<String>[] queueArr = this._chainLRU;
        if (queueArr[1] != null) {
            queueArr[1].clear();
            this._chainLRU[2].clear();
            this._chainLRU[4].clear();
            this._chainLRU[8].clear();
            this._chainLRU[16].clear();
            this._chainCache[1].clear();
            this._chainCache[2].clear();
            this._chainCache[4].clear();
            this._chainCache[8].clear();
            this._chainCache[16].clear();
        }
    }

    public boolean isAvailable() {
        if (!isStarted()) {
            return false;
        }
        for (ServletHolder servletHolder : getServlets()) {
            if (servletHolder != null && !servletHolder.isAvailable()) {
                return false;
            }
        }
        return true;
    }

    public boolean isFilterChainsCached() {
        return this._filterChainsCached;
    }

    public boolean isStartWithUnavailable() {
        return this._startWithUnavailable;
    }

    public CachedChain newCachedChain(Object obj, ServletHolder servletHolder) {
        return new CachedChain(obj, servletHolder);
    }

    public FilterHolder newFilterHolder(Holder.Source source) {
        return new FilterHolder(source);
    }

    public ServletHolder newServletHolder(Holder.Source source) {
        return new ServletHolder(source);
    }

    public void notFound(c cVar, e eVar) {
        Logger logger = LOG;
        if (logger.isDebugEnabled()) {
            StringBuilder sbA = android.support.v4.media.f.a("Not Found ");
            sbA.append(cVar.getRequestURI());
            logger.debug(sbA.toString(), new Object[0]);
        }
    }

    public void prependFilterMapping(FilterMapping filterMapping) {
        if (filterMapping != null) {
            Holder.Source source = filterMapping.getFilterHolder().getSource();
            FilterMapping[] filterMappings = getFilterMappings();
            if (filterMappings == null || filterMappings.length == 0) {
                setFilterMappings(insertFilterMapping(filterMapping, 0, false));
                if (source == null || Holder.Source.JAVAX_API != source) {
                    return;
                }
                this._matchBeforeIndex = 0;
                return;
            }
            if (source == null || Holder.Source.JAVAX_API != source) {
                setFilterMappings(insertFilterMapping(filterMapping, 0, true));
            } else {
                int i4 = this._matchBeforeIndex;
                if (i4 < 0) {
                    this._matchBeforeIndex = 0;
                    setFilterMappings(insertFilterMapping(filterMapping, 0, true));
                } else {
                    FilterMapping[] filterMappingArrInsertFilterMapping = insertFilterMapping(filterMapping, i4, false);
                    this._matchBeforeIndex++;
                    setFilterMappings(filterMappingArrInsertFilterMapping);
                }
            }
            int i5 = this._matchAfterIndex;
            if (i5 >= 0) {
                this._matchAfterIndex = i5 + 1;
            }
        }
    }

    public void setFilterChainsCached(boolean z3) {
        this._filterChainsCached = z3;
    }

    public void setFilterMappings(FilterMapping[] filterMappingArr) {
        if (getServer() != null) {
            getServer().getContainer().update((Object) this, (Object[]) this._filterMappings, (Object[]) filterMappingArr, "filterMapping", true);
        }
        this._filterMappings = filterMappingArr;
        updateMappings();
        invalidateChainsCache();
    }

    public synchronized void setFilters(FilterHolder[] filterHolderArr) {
        if (getServer() != null) {
            getServer().getContainer().update((Object) this, (Object[]) this._filters, (Object[]) filterHolderArr, "filter", true);
        }
        this._filters = filterHolderArr;
        updateNameMappings();
        invalidateChainsCache();
    }

    public void setMaxFilterChainsCacheSize(int i4) {
        this._maxFilterChainsCacheSize = i4;
    }

    @Override // org.eclipse.jetty.server.handler.HandlerWrapper, org.eclipse.jetty.server.handler.AbstractHandler, org.eclipse.jetty.server.Handler
    public void setServer(Server server) {
        Server server2 = getServer();
        if (server2 != null && server2 != server) {
            getServer().getContainer().update((Object) this, (Object[]) this._filters, (Object[]) null, "filter", true);
            getServer().getContainer().update((Object) this, (Object[]) this._filterMappings, (Object[]) null, "filterMapping", true);
            getServer().getContainer().update((Object) this, (Object[]) this._servlets, (Object[]) null, "servlet", true);
            getServer().getContainer().update((Object) this, (Object[]) this._servletMappings, (Object[]) null, "servletMapping", true);
        }
        super.setServer(server);
        if (server == null || server2 == server) {
            return;
        }
        server.getContainer().update((Object) this, (Object[]) null, (Object[]) this._filters, "filter", true);
        server.getContainer().update((Object) this, (Object[]) null, (Object[]) this._filterMappings, "filterMapping", true);
        server.getContainer().update((Object) this, (Object[]) null, (Object[]) this._servlets, "servlet", true);
        server.getContainer().update((Object) this, (Object[]) null, (Object[]) this._servletMappings, "servletMapping", true);
    }

    public void setServletMappings(ServletMapping[] servletMappingArr) {
        if (getServer() != null) {
            getServer().getContainer().update((Object) this, (Object[]) this._servletMappings, (Object[]) servletMappingArr, "servletMapping", true);
        }
        this._servletMappings = servletMappingArr;
        updateMappings();
        invalidateChainsCache();
    }

    public Set<String> setServletSecurity(x.a aVar, g0 g0Var) {
        ServletContextHandler servletContextHandler = this._contextHandler;
        return servletContextHandler != null ? servletContextHandler.setServletSecurity(aVar, g0Var) : Collections.emptySet();
    }

    public synchronized void setServlets(ServletHolder[] servletHolderArr) {
        if (getServer() != null) {
            getServer().getContainer().update((Object) this, (Object[]) this._servlets, (Object[]) servletHolderArr, "servlet", true);
        }
        this._servlets = servletHolderArr;
        updateNameMappings();
        invalidateChainsCache();
    }

    public void setStartWithUnavailable(boolean z3) {
        this._startWithUnavailable = z3;
    }

    public synchronized void updateMappings() {
        if (this._filterMappings != null) {
            this._filterPathMappings = new ArrayList();
            this._filterNameMappings = new MultiMap<>();
            int i4 = 0;
            while (true) {
                FilterMapping[] filterMappingArr = this._filterMappings;
                if (i4 >= filterMappingArr.length) {
                    break;
                }
                FilterHolder filterHolder = this._filterNameMap.get(filterMappingArr[i4].getFilterName());
                if (filterHolder == null) {
                    throw new IllegalStateException("No filter named " + this._filterMappings[i4].getFilterName());
                }
                this._filterMappings[i4].setFilterHolder(filterHolder);
                if (this._filterMappings[i4].getPathSpecs() != null) {
                    this._filterPathMappings.add(this._filterMappings[i4]);
                }
                if (this._filterMappings[i4].getServletNames() != null) {
                    String[] servletNames = this._filterMappings[i4].getServletNames();
                    for (int i5 = 0; i5 < servletNames.length; i5++) {
                        if (servletNames[i5] != null) {
                            this._filterNameMappings.add(servletNames[i5], this._filterMappings[i4]);
                        }
                    }
                }
                i4++;
            }
        } else {
            this._filterPathMappings = null;
            this._filterNameMappings = null;
        }
        if (this._servletMappings == null || this._servletNameMap == null) {
            this._servletPathMap = null;
        } else {
            PathMap pathMap = new PathMap();
            int i6 = 0;
            while (true) {
                ServletMapping[] servletMappingArr = this._servletMappings;
                if (i6 >= servletMappingArr.length) {
                    this._servletPathMap = pathMap;
                    break;
                }
                ServletHolder servletHolder = this._servletNameMap.get(servletMappingArr[i6].getServletName());
                if (servletHolder == null) {
                    throw new IllegalStateException("No such servlet: " + this._servletMappings[i6].getServletName());
                }
                if (servletHolder.isEnabled() && this._servletMappings[i6].getPathSpecs() != null) {
                    String[] pathSpecs = this._servletMappings[i6].getPathSpecs();
                    for (int i7 = 0; i7 < pathSpecs.length; i7++) {
                        if (pathSpecs[i7] != null) {
                            pathMap.put(pathSpecs[i7], servletHolder);
                        }
                    }
                }
                i6++;
            }
        }
        ConcurrentMap<String, FilterChain>[] concurrentMapArr = this._chainCache;
        if (concurrentMapArr != null) {
            int length = concurrentMapArr.length;
            while (true) {
                int i8 = length - 1;
                if (length <= 0) {
                    break;
                }
                ConcurrentMap<String, FilterChain>[] concurrentMapArr2 = this._chainCache;
                if (concurrentMapArr2[i8] != null) {
                    concurrentMapArr2[i8].clear();
                }
                length = i8;
            }
        }
        Logger logger = LOG;
        if (logger.isDebugEnabled()) {
            logger.debug("filterNameMap=" + this._filterNameMap, new Object[0]);
            logger.debug("pathFilters=" + this._filterPathMappings, new Object[0]);
            logger.debug("servletFilterMap=" + this._filterNameMappings, new Object[0]);
            logger.debug("servletPathMap=" + this._servletPathMap, new Object[0]);
            logger.debug("servletNameMap=" + this._servletNameMap, new Object[0]);
        }
        try {
            ServletContextHandler servletContextHandler = this._contextHandler;
            if ((servletContextHandler != null && servletContextHandler.isStarted()) || (this._contextHandler == null && isStarted())) {
                initialize();
            }
        } catch (Exception e4) {
            throw new RuntimeException(e4);
        }
    }

    public synchronized void updateNameMappings() {
        this._filterNameMap.clear();
        int i4 = 0;
        if (this._filters != null) {
            int i5 = 0;
            while (true) {
                FilterHolder[] filterHolderArr = this._filters;
                if (i5 >= filterHolderArr.length) {
                    break;
                }
                this._filterNameMap.put(filterHolderArr[i5].getName(), this._filters[i5]);
                this._filters[i5].setServletHandler(this);
                i5++;
            }
        }
        this._servletNameMap.clear();
        if (this._servlets != null) {
            while (true) {
                ServletHolder[] servletHolderArr = this._servlets;
                if (i4 >= servletHolderArr.length) {
                    break;
                }
                this._servletNameMap.put(servletHolderArr[i4].getName(), this._servlets[i4]);
                this._servlets[i4].setServletHandler(this);
                i4++;
            }
        }
    }

    public void addFilter(FilterHolder filterHolder, FilterMapping filterMapping) {
        if (filterHolder != null) {
            setFilters((FilterHolder[]) LazyList.addToArray(getFilters(), filterHolder, FilterHolder.class));
        }
        if (filterMapping != null) {
            addFilterMapping(filterMapping);
        }
    }

    public void addFilter(FilterHolder filterHolder) {
        if (filterHolder != null) {
            setFilters((FilterHolder[]) LazyList.addToArray(getFilters(), filterHolder, FilterHolder.class));
        }
    }

    public FilterHolder addFilterWithMapping(String str, String str2, EnumSet<d> enumSet) {
        FilterHolder filterHolderNewFilterHolder = newFilterHolder(Holder.Source.EMBEDDED);
        filterHolderNewFilterHolder.setClassName(str);
        addFilterWithMapping(filterHolderNewFilterHolder, str2, enumSet);
        return filterHolderNewFilterHolder;
    }

    public ServletHolder addServletWithMapping(Class<? extends n> cls, String str) {
        ServletHolder servletHolderNewServletHolder = newServletHolder(Holder.Source.EMBEDDED);
        servletHolderNewServletHolder.setHeldClass(cls);
        addServletWithMapping(servletHolderNewServletHolder, str);
        return servletHolderNewServletHolder;
    }

    public void addFilterWithMapping(FilterHolder filterHolder, String str, EnumSet<d> enumSet) {
        FilterHolder[] filters = getFilters();
        if (filters != null) {
            filters = (FilterHolder[]) filters.clone();
        }
        try {
            setFilters((FilterHolder[]) LazyList.addToArray(filters, filterHolder, FilterHolder.class));
            FilterMapping filterMapping = new FilterMapping();
            filterMapping.setFilterName(filterHolder.getName());
            filterMapping.setPathSpec(str);
            filterMapping.setDispatcherTypes(enumSet);
            addFilterMapping(filterMapping);
        } catch (Error e4) {
            setFilters(filters);
            throw e4;
        } catch (RuntimeException e5) {
            setFilters(filters);
            throw e5;
        }
    }

    public void addServletWithMapping(ServletHolder servletHolder, String str) {
        ServletHolder[] servlets = getServlets();
        if (servlets != null) {
            servlets = (ServletHolder[]) servlets.clone();
        }
        try {
            setServlets((ServletHolder[]) LazyList.addToArray(servlets, servletHolder, ServletHolder.class));
            ServletMapping servletMapping = new ServletMapping();
            servletMapping.setServletName(servletHolder.getName());
            servletMapping.setPathSpec(str);
            setServletMappings((ServletMapping[]) LazyList.addToArray(getServletMappings(), servletMapping, ServletMapping.class));
        } catch (Exception e4) {
            setServlets(servlets);
            if (e4 instanceof RuntimeException) {
                throw ((RuntimeException) e4);
            }
            throw new RuntimeException(e4);
        }
    }

    public FilterHolder addFilterWithMapping(Class<? extends g2.e> cls, String str, int i4) {
        FilterHolder filterHolderNewFilterHolder = newFilterHolder(Holder.Source.EMBEDDED);
        filterHolderNewFilterHolder.setHeldClass(cls);
        addFilterWithMapping(filterHolderNewFilterHolder, str, i4);
        return filterHolderNewFilterHolder;
    }

    public FilterHolder addFilterWithMapping(String str, String str2, int i4) {
        FilterHolder filterHolderNewFilterHolder = newFilterHolder(Holder.Source.EMBEDDED);
        filterHolderNewFilterHolder.setClassName(str);
        addFilterWithMapping(filterHolderNewFilterHolder, str2, i4);
        return filterHolderNewFilterHolder;
    }

    public void addFilterWithMapping(FilterHolder filterHolder, String str, int i4) {
        FilterHolder[] filters = getFilters();
        if (filters != null) {
            filters = (FilterHolder[]) filters.clone();
        }
        try {
            setFilters((FilterHolder[]) LazyList.addToArray(filters, filterHolder, FilterHolder.class));
            FilterMapping filterMapping = new FilterMapping();
            filterMapping.setFilterName(filterHolder.getName());
            filterMapping.setPathSpec(str);
            filterMapping.setDispatches(i4);
            addFilterMapping(filterMapping);
        } catch (Error e4) {
            setFilters(filters);
            throw e4;
        } catch (RuntimeException e5) {
            setFilters(filters);
            throw e5;
        }
    }
}
