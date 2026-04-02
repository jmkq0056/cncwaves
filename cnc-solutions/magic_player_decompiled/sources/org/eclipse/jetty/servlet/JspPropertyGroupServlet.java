package org.eclipse.jetty.servlet;

import g2.e0;
import g2.i;
import g2.u;
import g2.y;
import j2.c;
import java.net.MalformedURLException;
import org.eclipse.jetty.server.handler.ContextHandler;
import org.eclipse.jetty.util.URIUtil;
import org.eclipse.jetty.util.resource.Resource;

/* JADX INFO: loaded from: classes2.dex */
public class JspPropertyGroupServlet extends i {
    public static final String NAME = "__org.eclipse.jetty.servlet.JspPropertyGroupServlet__";
    private static final long serialVersionUID = 3681783214726776945L;
    private final ContextHandler _contextHandler;
    private ServletHolder _dftServlet;
    private ServletHolder _jspServlet;
    private final ServletHandler _servletHandler;
    private boolean _starJspMapped;

    public JspPropertyGroupServlet(ContextHandler contextHandler, ServletHandler servletHandler) {
        this._contextHandler = contextHandler;
        this._servletHandler = servletHandler;
    }

    @Override // g2.i
    public void init() {
        String servletName;
        ServletMapping servletMapping = this._servletHandler.getServletMapping("*.jsp");
        if (servletMapping != null) {
            this._starJspMapped = true;
            for (ServletMapping servletMapping2 : this._servletHandler.getServletMappings()) {
                String[] pathSpecs = servletMapping2.getPathSpecs();
                if (pathSpecs != null) {
                    for (String str : pathSpecs) {
                        if ("*.jsp".equals(str) && !NAME.equals(servletMapping2.getServletName())) {
                            servletMapping = servletMapping2;
                        }
                    }
                }
            }
            servletName = servletMapping.getServletName();
        } else {
            servletName = "jsp";
        }
        this._jspServlet = this._servletHandler.getServlet(servletName);
        ServletMapping servletMapping3 = this._servletHandler.getServletMapping("/");
        this._dftServlet = this._servletHandler.getServlet(servletMapping3 != null ? servletMapping3.getServletName() : ServletHandler.__DEFAULT_SERVLET);
    }

    @Override // g2.i, g2.n
    public void service(y yVar, e0 e0Var) throws MalformedURLException, u {
        String servletPath;
        String pathInfo;
        if (!(yVar instanceof c)) {
            throw new u("Request not HttpServletRequest");
        }
        c cVar = (c) yVar;
        if (cVar.getAttribute("javax.servlet.include.request_uri") != null) {
            servletPath = (String) cVar.getAttribute("javax.servlet.include.servlet_path");
            pathInfo = (String) cVar.getAttribute("javax.servlet.include.path_info");
            if (servletPath == null) {
                servletPath = cVar.getServletPath();
                pathInfo = cVar.getPathInfo();
            }
        } else {
            servletPath = cVar.getServletPath();
            pathInfo = cVar.getPathInfo();
        }
        String strAddPaths = URIUtil.addPaths(servletPath, pathInfo);
        if (strAddPaths.endsWith("/")) {
            this._dftServlet.getServlet().service(yVar, e0Var);
            return;
        }
        if (this._starJspMapped && strAddPaths.toLowerCase().endsWith(".jsp")) {
            this._jspServlet.getServlet().service(yVar, e0Var);
            return;
        }
        Resource resource = this._contextHandler.getResource(strAddPaths);
        if (resource == null || !resource.isDirectory()) {
            this._jspServlet.getServlet().service(yVar, e0Var);
        } else {
            this._dftServlet.getServlet().service(yVar, e0Var);
        }
    }
}
