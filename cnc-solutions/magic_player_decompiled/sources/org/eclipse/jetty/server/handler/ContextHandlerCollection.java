package org.eclipse.jetty.server.handler;

import android.support.v4.media.f;
import androidx.appcompat.view.a;
import j2.c;
import j2.e;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.jetty.http.PathMap;
import org.eclipse.jetty.server.AsyncContinuation;
import org.eclipse.jetty.server.Handler;
import org.eclipse.jetty.server.HandlerContainer;
import org.eclipse.jetty.server.Request;
import org.eclipse.jetty.util.LazyList;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class ContextHandlerCollection extends HandlerCollection {
    private static final Logger LOG = Log.getLogger((Class<?>) ContextHandlerCollection.class);
    private Class<? extends ContextHandler> _contextClass;
    private volatile PathMap _contextMap;

    public ContextHandlerCollection() {
        super(true);
        this._contextClass = ContextHandler.class;
    }

    private String normalizeHostname(String str) {
        if (str == null) {
            return null;
        }
        return str.endsWith(".") ? str.substring(0, str.length() - 1) : str;
    }

    public ContextHandler addContext(String str, String str2) {
        try {
            ContextHandler contextHandlerNewInstance = this._contextClass.newInstance();
            contextHandlerNewInstance.setContextPath(str);
            contextHandlerNewInstance.setResourceBase(str2);
            addHandler(contextHandlerNewInstance);
            return contextHandlerNewInstance;
        } catch (Exception e4) {
            LOG.debug(e4);
            throw new Error(e4);
        }
    }

    @Override // org.eclipse.jetty.server.handler.HandlerCollection, org.eclipse.jetty.server.handler.AbstractHandler, org.eclipse.jetty.util.component.AggregateLifeCycle, org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStart() {
        mapContexts();
        super.doStart();
    }

    public Class getContextClass() {
        return this._contextClass;
    }

    @Override // org.eclipse.jetty.server.handler.HandlerCollection, org.eclipse.jetty.server.Handler
    public void handle(String str, Request request, c cVar, e eVar) {
        ContextHandler contextHandler;
        Handler[] handlers = getHandlers();
        if (handlers == null || handlers.length == 0) {
            return;
        }
        AsyncContinuation asyncContinuation = request.getAsyncContinuation();
        if (asyncContinuation.isAsync() && (contextHandler = asyncContinuation.getContextHandler()) != null) {
            contextHandler.handle(str, request, cVar, eVar);
            return;
        }
        PathMap pathMap = this._contextMap;
        if (pathMap == null || str == null || !str.startsWith("/")) {
            for (Handler handler : handlers) {
                handler.handle(str, request, cVar, eVar);
                if (request.isHandled()) {
                    return;
                }
            }
            return;
        }
        Object lazyMatches = pathMap.getLazyMatches(str);
        for (int i4 = 0; i4 < LazyList.size(lazyMatches); i4++) {
            Object value = ((Map.Entry) LazyList.get(lazyMatches, i4)).getValue();
            if (value instanceof Map) {
                Map map = (Map) value;
                String strNormalizeHostname = normalizeHostname(cVar.getServerName());
                Object obj = map.get(strNormalizeHostname);
                for (int i5 = 0; i5 < LazyList.size(obj); i5++) {
                    ((Handler) LazyList.get(obj, i5)).handle(str, request, cVar, eVar);
                    if (request.isHandled()) {
                        return;
                    }
                }
                StringBuilder sbA = f.a("*.");
                sbA.append(strNormalizeHostname.substring(strNormalizeHostname.indexOf(".") + 1));
                Object obj2 = map.get(sbA.toString());
                for (int i6 = 0; i6 < LazyList.size(obj2); i6++) {
                    ((Handler) LazyList.get(obj2, i6)).handle(str, request, cVar, eVar);
                    if (request.isHandled()) {
                        return;
                    }
                }
                Object obj3 = map.get("*");
                for (int i7 = 0; i7 < LazyList.size(obj3); i7++) {
                    ((Handler) LazyList.get(obj3, i7)).handle(str, request, cVar, eVar);
                    if (request.isHandled()) {
                        return;
                    }
                }
            } else {
                for (int i8 = 0; i8 < LazyList.size(value); i8++) {
                    ((Handler) LazyList.get(value, i8)).handle(str, request, cVar, eVar);
                    if (request.isHandled()) {
                        return;
                    }
                }
            }
        }
    }

    public void mapContexts() {
        Handler[] childHandlersByClass;
        Map map;
        PathMap pathMap = new PathMap();
        Handler[] handlers = getHandlers();
        for (int i4 = 0; handlers != null && i4 < handlers.length; i4++) {
            if (handlers[i4] instanceof ContextHandler) {
                childHandlersByClass = new Handler[]{handlers[i4]};
            } else if (handlers[i4] instanceof HandlerContainer) {
                childHandlersByClass = ((HandlerContainer) handlers[i4]).getChildHandlersByClass(ContextHandler.class);
            } else {
                continue;
            }
            for (Handler handler : childHandlersByClass) {
                ContextHandler contextHandler = (ContextHandler) handler;
                String contextPath = contextHandler.getContextPath();
                if (contextPath == null || contextPath.indexOf(44) >= 0 || contextPath.startsWith("*")) {
                    throw new IllegalArgumentException(a.a("Illegal context spec:", contextPath));
                }
                if (!contextPath.startsWith("/")) {
                    contextPath = '/' + contextPath;
                }
                if (contextPath.length() > 1) {
                    if (contextPath.endsWith("/")) {
                        contextPath = a.a(contextPath, "*");
                    } else if (!contextPath.endsWith("/*")) {
                        contextPath = a.a(contextPath, "/*");
                    }
                }
                Object obj = pathMap.get(contextPath);
                String[] virtualHosts = contextHandler.getVirtualHosts();
                if (virtualHosts != null && virtualHosts.length > 0) {
                    if (obj instanceof Map) {
                        map = (Map) obj;
                    } else {
                        HashMap map2 = new HashMap();
                        map2.put("*", obj);
                        pathMap.put(contextPath, map2);
                        map = map2;
                    }
                    for (String str : virtualHosts) {
                        map.put(str, LazyList.add(map.get(str), handlers[i4]));
                    }
                } else if (obj instanceof Map) {
                    Map map3 = (Map) obj;
                    map3.put("*", LazyList.add(map3.get("*"), handlers[i4]));
                } else {
                    pathMap.put(contextPath, LazyList.add(obj, handlers[i4]));
                }
            }
        }
        this._contextMap = pathMap;
    }

    public void setContextClass(Class cls) {
        if (cls == null || !ContextHandler.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException();
        }
        this._contextClass = cls;
    }

    @Override // org.eclipse.jetty.server.handler.HandlerCollection
    public void setHandlers(Handler[] handlerArr) {
        this._contextMap = null;
        super.setHandlers(handlerArr);
        if (isStarted()) {
            mapContexts();
        }
    }
}
