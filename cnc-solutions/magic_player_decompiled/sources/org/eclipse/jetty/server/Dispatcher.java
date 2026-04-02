package org.eclipse.jetty.server;

import android.support.v4.media.f;
import g2.d;
import g2.e0;
import g2.m;
import g2.y;
import j2.c;
import j2.e;
import java.io.IOException;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Map;
import org.eclipse.jetty.server.handler.ContextHandler;
import org.eclipse.jetty.util.Attributes;
import org.eclipse.jetty.util.LazyList;
import org.eclipse.jetty.util.MultiMap;
import org.eclipse.jetty.util.UrlEncoded;

/* JADX INFO: loaded from: classes2.dex */
public class Dispatcher implements m {
    public static final String __FORWARD_PREFIX = "javax.servlet.forward.";
    public static final String __INCLUDE_PREFIX = "javax.servlet.include.";
    public static final String __JSP_FILE = "org.apache.catalina.jsp_file";
    private final ContextHandler _contextHandler;
    private final String _dQuery;
    private final String _named;
    private final String _path;
    private final String _uri;

    public class ForwardAttributes implements Attributes {
        public final Attributes _attr;
        public String _contextPath;
        public String _pathInfo;
        public String _query;
        public String _requestURI;
        public String _servletPath;

        public ForwardAttributes(Attributes attributes) {
            this._attr = attributes;
        }

        @Override // org.eclipse.jetty.util.Attributes
        public void clearAttributes() {
            throw new IllegalStateException();
        }

        @Override // org.eclipse.jetty.util.Attributes
        public Object getAttribute(String str) {
            if (Dispatcher.this._named == null) {
                if (str.equals("javax.servlet.forward.path_info")) {
                    return this._pathInfo;
                }
                if (str.equals("javax.servlet.forward.request_uri")) {
                    return this._requestURI;
                }
                if (str.equals("javax.servlet.forward.servlet_path")) {
                    return this._servletPath;
                }
                if (str.equals("javax.servlet.forward.context_path")) {
                    return this._contextPath;
                }
                if (str.equals("javax.servlet.forward.query_string")) {
                    return this._query;
                }
            }
            if (str.startsWith(Dispatcher.__INCLUDE_PREFIX)) {
                return null;
            }
            return this._attr.getAttribute(str);
        }

        @Override // org.eclipse.jetty.util.Attributes
        public Enumeration getAttributeNames() {
            HashSet hashSet = new HashSet();
            Enumeration<String> attributeNames = this._attr.getAttributeNames();
            while (attributeNames.hasMoreElements()) {
                String strNextElement = attributeNames.nextElement();
                if (!strNextElement.startsWith(Dispatcher.__INCLUDE_PREFIX) && !strNextElement.startsWith(Dispatcher.__FORWARD_PREFIX)) {
                    hashSet.add(strNextElement);
                }
            }
            if (Dispatcher.this._named == null) {
                if (this._pathInfo != null) {
                    hashSet.add("javax.servlet.forward.path_info");
                } else {
                    hashSet.remove("javax.servlet.forward.path_info");
                }
                hashSet.add("javax.servlet.forward.request_uri");
                hashSet.add("javax.servlet.forward.servlet_path");
                hashSet.add("javax.servlet.forward.context_path");
                if (this._query != null) {
                    hashSet.add("javax.servlet.forward.query_string");
                } else {
                    hashSet.remove("javax.servlet.forward.query_string");
                }
            }
            return Collections.enumeration(hashSet);
        }

        @Override // org.eclipse.jetty.util.Attributes
        public void removeAttribute(String str) {
            setAttribute(str, null);
        }

        @Override // org.eclipse.jetty.util.Attributes
        public void setAttribute(String str, Object obj) {
            if (Dispatcher.this._named != null || !str.startsWith("javax.servlet.")) {
                if (obj == null) {
                    this._attr.removeAttribute(str);
                    return;
                } else {
                    this._attr.setAttribute(str, obj);
                    return;
                }
            }
            if (str.equals("javax.servlet.forward.path_info")) {
                this._pathInfo = (String) obj;
                return;
            }
            if (str.equals("javax.servlet.forward.request_uri")) {
                this._requestURI = (String) obj;
                return;
            }
            if (str.equals("javax.servlet.forward.servlet_path")) {
                this._servletPath = (String) obj;
                return;
            }
            if (str.equals("javax.servlet.forward.context_path")) {
                this._contextPath = (String) obj;
                return;
            }
            if (str.equals("javax.servlet.forward.query_string")) {
                this._query = (String) obj;
            } else if (obj == null) {
                this._attr.removeAttribute(str);
            } else {
                this._attr.setAttribute(str, obj);
            }
        }

        public String toString() {
            StringBuilder sbA = f.a("FORWARD+");
            sbA.append(this._attr.toString());
            return sbA.toString();
        }
    }

    public class IncludeAttributes implements Attributes {
        public final Attributes _attr;
        public String _contextPath;
        public String _pathInfo;
        public String _query;
        public String _requestURI;
        public String _servletPath;

        public IncludeAttributes(Attributes attributes) {
            this._attr = attributes;
        }

        @Override // org.eclipse.jetty.util.Attributes
        public void clearAttributes() {
            throw new IllegalStateException();
        }

        @Override // org.eclipse.jetty.util.Attributes
        public Object getAttribute(String str) {
            if (Dispatcher.this._named == null) {
                if (str.equals("javax.servlet.include.path_info")) {
                    return this._pathInfo;
                }
                if (str.equals("javax.servlet.include.servlet_path")) {
                    return this._servletPath;
                }
                if (str.equals("javax.servlet.include.context_path")) {
                    return this._contextPath;
                }
                if (str.equals("javax.servlet.include.query_string")) {
                    return this._query;
                }
                if (str.equals("javax.servlet.include.request_uri")) {
                    return this._requestURI;
                }
            } else if (str.startsWith(Dispatcher.__INCLUDE_PREFIX)) {
                return null;
            }
            return this._attr.getAttribute(str);
        }

        @Override // org.eclipse.jetty.util.Attributes
        public Enumeration getAttributeNames() {
            HashSet hashSet = new HashSet();
            Enumeration<String> attributeNames = this._attr.getAttributeNames();
            while (attributeNames.hasMoreElements()) {
                String strNextElement = attributeNames.nextElement();
                if (!strNextElement.startsWith(Dispatcher.__INCLUDE_PREFIX)) {
                    hashSet.add(strNextElement);
                }
            }
            if (Dispatcher.this._named == null) {
                if (this._pathInfo != null) {
                    hashSet.add("javax.servlet.include.path_info");
                } else {
                    hashSet.remove("javax.servlet.include.path_info");
                }
                hashSet.add("javax.servlet.include.request_uri");
                hashSet.add("javax.servlet.include.servlet_path");
                hashSet.add("javax.servlet.include.context_path");
                if (this._query != null) {
                    hashSet.add("javax.servlet.include.query_string");
                } else {
                    hashSet.remove("javax.servlet.include.query_string");
                }
            }
            return Collections.enumeration(hashSet);
        }

        @Override // org.eclipse.jetty.util.Attributes
        public void removeAttribute(String str) {
            setAttribute(str, null);
        }

        @Override // org.eclipse.jetty.util.Attributes
        public void setAttribute(String str, Object obj) {
            if (Dispatcher.this._named != null || !str.startsWith("javax.servlet.")) {
                if (obj == null) {
                    this._attr.removeAttribute(str);
                    return;
                } else {
                    this._attr.setAttribute(str, obj);
                    return;
                }
            }
            if (str.equals("javax.servlet.include.path_info")) {
                this._pathInfo = (String) obj;
                return;
            }
            if (str.equals("javax.servlet.include.request_uri")) {
                this._requestURI = (String) obj;
                return;
            }
            if (str.equals("javax.servlet.include.servlet_path")) {
                this._servletPath = (String) obj;
                return;
            }
            if (str.equals("javax.servlet.include.context_path")) {
                this._contextPath = (String) obj;
                return;
            }
            if (str.equals("javax.servlet.include.query_string")) {
                this._query = (String) obj;
            } else if (obj == null) {
                this._attr.removeAttribute(str);
            } else {
                this._attr.setAttribute(str, obj);
            }
        }

        public String toString() {
            StringBuilder sbA = f.a("INCLUDE+");
            sbA.append(this._attr.toString());
            return sbA.toString();
        }
    }

    public Dispatcher(ContextHandler contextHandler, String str, String str2, String str3) {
        this._contextHandler = contextHandler;
        this._uri = str;
        this._path = str2;
        this._dQuery = str3;
        this._named = null;
    }

    private void commitResponse(e0 e0Var, Request request) throws IOException {
        if (request.getResponse().isWriting()) {
            try {
                e0Var.getWriter().close();
            } catch (IllegalStateException unused) {
                e0Var.getOutputStream().close();
            }
        } else {
            try {
                e0Var.getOutputStream().close();
            } catch (IllegalStateException unused2) {
                e0Var.getWriter().close();
            }
        }
    }

    public void error(y yVar, e0 e0Var) {
        forward(yVar, e0Var, d.ERROR);
    }

    @Override // g2.m
    public void forward(y yVar, e0 e0Var) {
        forward(yVar, e0Var, d.FORWARD);
    }

    @Override // g2.m
    public void include(y yVar, e0 e0Var) {
        Request request = yVar instanceof Request ? (Request) yVar : AbstractHttpConnection.getCurrentConnection().getRequest();
        if (!(yVar instanceof c)) {
            yVar = new ServletRequestHttpWrapper(yVar);
        }
        if (!(e0Var instanceof e)) {
            e0Var = new ServletResponseHttpWrapper(e0Var);
        }
        d dispatcherType = request.getDispatcherType();
        Attributes attributes = request.getAttributes();
        MultiMap<String> parameters = request.getParameters();
        try {
            request.setDispatcherType(d.INCLUDE);
            request.getConnection().include();
            String str = this._named;
            if (str != null) {
                this._contextHandler.handle(str, request, (c) yVar, (e) e0Var);
            } else {
                String str2 = this._dQuery;
                if (str2 != null) {
                    if (parameters == null) {
                        request.extractParameters();
                        parameters = request.getParameters();
                    }
                    MultiMap<String> multiMap = new MultiMap<>();
                    UrlEncoded.decodeTo(str2, multiMap, request.getCharacterEncoding());
                    if (parameters != null && parameters.size() > 0) {
                        for (Map.Entry<String, Object> entry : parameters.entrySet()) {
                            String key = entry.getKey();
                            Object value = entry.getValue();
                            for (int i4 = 0; i4 < LazyList.size(value); i4++) {
                                multiMap.add(key, LazyList.get(value, i4));
                            }
                        }
                    }
                    request.setParameters(multiMap);
                }
                IncludeAttributes includeAttributes = new IncludeAttributes(attributes);
                includeAttributes._requestURI = this._uri;
                includeAttributes._contextPath = this._contextHandler.getContextPath();
                includeAttributes._servletPath = null;
                includeAttributes._pathInfo = this._path;
                includeAttributes._query = str2;
                request.setAttributes(includeAttributes);
                this._contextHandler.handle(this._path, request, (c) yVar, (e) e0Var);
            }
        } finally {
            request.setAttributes(attributes);
            request.getConnection().included();
            request.setParameters(parameters);
            request.setDispatcherType(dispatcherType);
        }
    }

    public void forward(y yVar, e0 e0Var, d dVar) {
        Request request = yVar instanceof Request ? (Request) yVar : AbstractHttpConnection.getCurrentConnection().getRequest();
        Response response = request.getResponse();
        e0Var.resetBuffer();
        response.fwdReset();
        if (!(yVar instanceof c)) {
            yVar = new ServletRequestHttpWrapper(yVar);
        }
        if (!(e0Var instanceof e)) {
            e0Var = new ServletResponseHttpWrapper(e0Var);
        }
        boolean zIsHandled = request.isHandled();
        String requestURI = request.getRequestURI();
        String contextPath = request.getContextPath();
        String servletPath = request.getServletPath();
        String pathInfo = request.getPathInfo();
        String queryString = request.getQueryString();
        Attributes attributes = request.getAttributes();
        d dispatcherType = request.getDispatcherType();
        MultiMap<String> parameters = request.getParameters();
        try {
            request.setHandled(false);
            request.setDispatcherType(dVar);
            String str = this._named;
            if (str != null) {
                this._contextHandler.handle(str, request, (c) yVar, (e) e0Var);
            } else {
                String str2 = this._dQuery;
                if (str2 != null) {
                    if (parameters == null) {
                        request.extractParameters();
                        parameters = request.getParameters();
                    }
                    request.mergeQueryString(str2);
                }
                ForwardAttributes forwardAttributes = new ForwardAttributes(attributes);
                if (attributes.getAttribute("javax.servlet.forward.request_uri") != null) {
                    forwardAttributes._pathInfo = (String) attributes.getAttribute("javax.servlet.forward.path_info");
                    forwardAttributes._query = (String) attributes.getAttribute("javax.servlet.forward.query_string");
                    forwardAttributes._requestURI = (String) attributes.getAttribute("javax.servlet.forward.request_uri");
                    forwardAttributes._contextPath = (String) attributes.getAttribute("javax.servlet.forward.context_path");
                    forwardAttributes._servletPath = (String) attributes.getAttribute("javax.servlet.forward.servlet_path");
                } else {
                    forwardAttributes._pathInfo = pathInfo;
                    forwardAttributes._query = queryString;
                    forwardAttributes._requestURI = requestURI;
                    forwardAttributes._contextPath = contextPath;
                    forwardAttributes._servletPath = servletPath;
                }
                request.setRequestURI(this._uri);
                request.setContextPath(this._contextHandler.getContextPath());
                request.setServletPath(null);
                request.setPathInfo(this._uri);
                request.setAttributes(forwardAttributes);
                this._contextHandler.handle(this._path, request, (c) yVar, (e) e0Var);
                if (!request.getAsyncContinuation().isAsyncStarted()) {
                    commitResponse(e0Var, request);
                }
            }
        } finally {
            request.setHandled(zIsHandled);
            request.setRequestURI(requestURI);
            request.setContextPath(contextPath);
            request.setServletPath(servletPath);
            request.setPathInfo(pathInfo);
            request.setAttributes(attributes);
            request.setParameters(parameters);
            request.setQueryString(queryString);
            request.setDispatcherType(dispatcherType);
        }
    }

    public Dispatcher(ContextHandler contextHandler, String str) {
        this._contextHandler = contextHandler;
        this._named = str;
        this._uri = null;
        this._path = null;
        this._dQuery = null;
    }
}
