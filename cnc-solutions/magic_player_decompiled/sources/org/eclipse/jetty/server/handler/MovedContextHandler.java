package org.eclipse.jetty.server.handler;

import j2.c;
import j2.e;
import org.eclipse.jetty.http.HttpHeaders;
import org.eclipse.jetty.http.HttpStatus;
import org.eclipse.jetty.server.HandlerContainer;
import org.eclipse.jetty.server.Request;
import org.eclipse.jetty.util.URIUtil;

/* JADX INFO: loaded from: classes2.dex */
public class MovedContextHandler extends ContextHandler {
    public boolean _discardPathInfo;
    public boolean _discardQuery;
    public String _expires;
    public String _newContextURL;
    public boolean _permanent;
    public final Redirector _redirector;

    public class Redirector extends AbstractHandler {
        private Redirector() {
        }

        @Override // org.eclipse.jetty.server.Handler
        public void handle(String str, Request request, c cVar, e eVar) {
            MovedContextHandler movedContextHandler = MovedContextHandler.this;
            String strAddPaths = movedContextHandler._newContextURL;
            if (strAddPaths == null) {
                return;
            }
            if (!movedContextHandler._discardPathInfo && cVar.getPathInfo() != null) {
                strAddPaths = URIUtil.addPaths(strAddPaths, cVar.getPathInfo());
            }
            StringBuilder sb = URIUtil.hasScheme(strAddPaths) ? new StringBuilder() : request.getRootURL();
            sb.append(strAddPaths);
            if (!MovedContextHandler.this._discardQuery && cVar.getQueryString() != null) {
                sb.append('?');
                sb.append(cVar.getQueryString().replaceAll("\r\n?&=", "!"));
            }
            eVar.setHeader(HttpHeaders.LOCATION, sb.toString());
            String str2 = MovedContextHandler.this._expires;
            if (str2 != null) {
                eVar.setHeader(HttpHeaders.EXPIRES, str2);
            }
            eVar.setStatus(MovedContextHandler.this._permanent ? HttpStatus.MOVED_PERMANENTLY_301 : 302);
            eVar.setContentLength(0);
            request.setHandled(true);
        }
    }

    public MovedContextHandler() {
        Redirector redirector = new Redirector();
        this._redirector = redirector;
        setHandler(redirector);
        setAllowNullPathInfo(true);
    }

    public String getExpires() {
        return this._expires;
    }

    public String getNewContextURL() {
        return this._newContextURL;
    }

    public boolean isDiscardPathInfo() {
        return this._discardPathInfo;
    }

    public boolean isDiscardQuery() {
        return this._discardQuery;
    }

    public boolean isPermanent() {
        return this._permanent;
    }

    public void setDiscardPathInfo(boolean z3) {
        this._discardPathInfo = z3;
    }

    public void setDiscardQuery(boolean z3) {
        this._discardQuery = z3;
    }

    public void setExpires(String str) {
        this._expires = str;
    }

    public void setNewContextURL(String str) {
        this._newContextURL = str;
    }

    public void setPermanent(boolean z3) {
        this._permanent = z3;
    }

    public MovedContextHandler(HandlerContainer handlerContainer, String str, String str2) {
        super(handlerContainer, str);
        this._newContextURL = str2;
        Redirector redirector = new Redirector();
        this._redirector = redirector;
        setHandler(redirector);
    }
}
