package org.eclipse.jetty.servlet;

import androidx.appcompat.view.a;
import g2.k0;
import g2.n;
import j2.b;
import j2.c;
import j2.d;
import j2.e;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.eclipse.jetty.http.HttpStatus;
import org.eclipse.jetty.http.PathMap;
import org.eclipse.jetty.server.AbstractHttpConnection;
import org.eclipse.jetty.server.Handler;
import org.eclipse.jetty.server.Request;
import org.eclipse.jetty.server.handler.ContextHandler;
import org.eclipse.jetty.server.handler.HandlerWrapper;
import org.eclipse.jetty.util.LazyList;
import org.eclipse.jetty.util.URIUtil;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class Invoker extends b {
    private static final Logger LOG = Log.getLogger((Class<?>) Invoker.class);
    private ContextHandler _contextHandler;
    private Map.Entry _invokerEntry;
    private boolean _nonContextServlets;
    private Map _parameters;
    private ServletHandler _servletHandler;
    private boolean _verbose;

    public class InvokedRequest extends d {
        public boolean _included;
        public String _pathInfo;
        public String _servletPath;

        public InvokedRequest(c cVar, boolean z3, String str, String str2, String str3) {
            super(cVar);
            this._included = z3;
            this._servletPath = URIUtil.addPaths(str2, str);
            String strSubstring = str3.substring(str.length() + 1);
            this._pathInfo = strSubstring;
            if (strSubstring.length() == 0) {
                this._pathInfo = null;
            }
        }

        @Override // g2.d0, g2.y
        public Object getAttribute(String str) {
            if (this._included) {
                if (str.equals("javax.servlet.include.request_uri")) {
                    return URIUtil.addPaths(URIUtil.addPaths(getContextPath(), this._servletPath), this._pathInfo);
                }
                if (str.equals("javax.servlet.include.path_info")) {
                    return this._pathInfo;
                }
                if (str.equals("javax.servlet.include.servlet_path")) {
                    return this._servletPath;
                }
            }
            return super.getAttribute(str);
        }

        @Override // j2.d, j2.c
        public String getPathInfo() {
            return this._included ? super.getPathInfo() : this._pathInfo;
        }

        @Override // j2.d, j2.c
        public String getServletPath() {
            return this._included ? super.getServletPath() : this._servletPath;
        }
    }

    private ServletHolder getHolder(ServletHolder[] servletHolderArr, String str) {
        ServletHolder servletHolder = null;
        if (servletHolderArr == null) {
            return null;
        }
        for (int i4 = 0; servletHolder == null && i4 < servletHolderArr.length; i4++) {
            if (servletHolderArr[i4].getName().equals(str)) {
                servletHolder = servletHolderArr[i4];
            }
        }
        return servletHolder;
    }

    @Override // g2.i
    public void init() {
        ContextHandler contextHandler = ((ContextHandler.Context) getServletContext()).getContextHandler();
        this._contextHandler = contextHandler;
        Handler handler = contextHandler.getHandler();
        while (handler != null && !(handler instanceof ServletHandler) && (handler instanceof HandlerWrapper)) {
            handler = ((HandlerWrapper) handler).getHandler();
        }
        this._servletHandler = (ServletHandler) handler;
        Enumeration<String> initParameterNames = getInitParameterNames();
        while (initParameterNames.hasMoreElements()) {
            String strNextElement = initParameterNames.nextElement();
            String initParameter = getInitParameter(strNextElement);
            String lowerCase = initParameter.toLowerCase(Locale.ENGLISH);
            if ("nonContextServlets".equals(strNextElement)) {
                this._nonContextServlets = initParameter.length() > 0 && lowerCase.startsWith("t");
            }
            if ("verbose".equals(strNextElement)) {
                this._verbose = initParameter.length() > 0 && lowerCase.startsWith("t");
            } else {
                if (this._parameters == null) {
                    this._parameters = new HashMap();
                }
                this._parameters.put(strNextElement, initParameter);
            }
        }
    }

    @Override // j2.b
    public void service(c cVar, e eVar) {
        String servletPath;
        boolean z3;
        ServletHolder servletHolder;
        String str;
        String str2 = (String) cVar.getAttribute("javax.servlet.include.servlet_path");
        if (str2 == null) {
            servletPath = cVar.getServletPath();
            z3 = false;
        } else {
            servletPath = str2;
            z3 = true;
        }
        String pathInfo = (String) cVar.getAttribute("javax.servlet.include.path_info");
        if (pathInfo == null) {
            pathInfo = cVar.getPathInfo();
        }
        String str3 = pathInfo;
        if (str3 == null || str3.length() <= 1) {
            eVar.sendError(HttpStatus.NOT_FOUND_404);
            return;
        }
        int i4 = str3.charAt(0) != '/' ? 0 : 1;
        int iIndexOf = str3.indexOf(47, i4);
        String strSubstring = iIndexOf < 0 ? str3.substring(i4) : str3.substring(i4, iIndexOf);
        ServletHolder holder = getHolder(this._servletHandler.getServlets(), strSubstring);
        if (holder != null) {
            Logger logger = LOG;
            if (logger.isDebugEnabled()) {
                StringBuilder sbA = androidx.appcompat.view.b.a("Adding servlet mapping for named servlet:", strSubstring, ":");
                sbA.append(URIUtil.addPaths(servletPath, strSubstring));
                sbA.append("/*");
                logger.debug(sbA.toString(), new Object[0]);
            }
            ServletMapping servletMapping = new ServletMapping();
            servletMapping.setServletName(strSubstring);
            servletMapping.setPathSpec(URIUtil.addPaths(servletPath, strSubstring) + "/*");
            ServletHandler servletHandler = this._servletHandler;
            servletHandler.setServletMappings((ServletMapping[]) LazyList.addToArray(servletHandler.getServletMappings(), servletMapping, ServletMapping.class));
            str = strSubstring;
        } else {
            if (strSubstring.endsWith(".class")) {
                strSubstring = strSubstring.substring(0, strSubstring.length() - 6);
            }
            if (strSubstring == null || strSubstring.length() == 0) {
                eVar.sendError(HttpStatus.NOT_FOUND_404);
                return;
            }
            synchronized (this._servletHandler) {
                this._invokerEntry = this._servletHandler.getHolderEntry(servletPath);
                String strAddPaths = URIUtil.addPaths(servletPath, strSubstring);
                PathMap.Entry holderEntry = this._servletHandler.getHolderEntry(strAddPaths);
                if (holderEntry == null || holderEntry.equals(this._invokerEntry)) {
                    Logger logger2 = LOG;
                    if (logger2.isDebugEnabled()) {
                        logger2.debug("Making new servlet=" + strSubstring + " with path=" + strAddPaths + "/*", new Object[0]);
                    }
                    ServletHolder servletHolderAddServletWithMapping = this._servletHandler.addServletWithMapping(strSubstring, strAddPaths + "/*");
                    Map<String, String> map = this._parameters;
                    if (map != null) {
                        servletHolderAddServletWithMapping.setInitParameters(map);
                    }
                    try {
                        servletHolderAddServletWithMapping.start();
                        if (!this._nonContextServlets) {
                            n servlet = servletHolderAddServletWithMapping.getServlet();
                            if (this._contextHandler.getClassLoader() != servlet.getClass().getClassLoader()) {
                                try {
                                    servletHolderAddServletWithMapping.stop();
                                } catch (Exception e4) {
                                    LOG.ignore(e4);
                                }
                                LOG.warn("Dynamic servlet " + servlet + " not loaded from context " + cVar.getContextPath(), new Object[0]);
                                throw new k0("Not in context");
                            }
                        }
                        if (this._verbose && logger2.isDebugEnabled()) {
                            logger2.debug("Dynamic load '" + strSubstring + "' at " + strAddPaths, new Object[0]);
                        }
                        servletHolder = servletHolderAddServletWithMapping;
                    } catch (Exception e5) {
                        LOG.debug(e5);
                        throw new k0(e5.toString());
                    }
                } else {
                    servletHolder = (ServletHolder) holderEntry.getValue();
                }
            }
            str = strSubstring;
            holder = servletHolder;
        }
        if (holder != null) {
            holder.handle(cVar instanceof Request ? (Request) cVar : AbstractHttpConnection.getCurrentConnection().getRequest(), new InvokedRequest(cVar, z3, str, servletPath, str3), eVar);
        } else {
            LOG.info(a.a("Can't find holder for servlet: ", str), new Object[0]);
            eVar.sendError(HttpStatus.NOT_FOUND_404);
        }
    }
}
