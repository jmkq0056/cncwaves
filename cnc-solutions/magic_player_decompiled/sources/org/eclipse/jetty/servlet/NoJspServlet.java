package org.eclipse.jetty.servlet;

import j2.b;
import j2.c;
import j2.e;
import org.eclipse.jetty.http.HttpStatus;

/* JADX INFO: loaded from: classes2.dex */
public class NoJspServlet extends b {
    private boolean _warned;

    @Override // j2.b
    public void doGet(c cVar, e eVar) {
        if (!this._warned) {
            getServletContext().log("No JSP support.  Check that JSP jars are in lib/jsp and that the JSP option has been specified to start.jar");
        }
        this._warned = true;
        eVar.sendError(HttpStatus.INTERNAL_SERVER_ERROR_500, "JSP support not configured");
    }
}
