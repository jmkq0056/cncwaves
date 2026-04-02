package org.eclipse.jetty.server.handler;

import android.support.v4.media.f;
import g2.w;
import j2.c;
import j2.e;
import java.io.IOException;
import java.net.URL;
import org.eclipse.jetty.http.HttpHeaders;
import org.eclipse.jetty.http.HttpMethods;
import org.eclipse.jetty.http.HttpStatus;
import org.eclipse.jetty.http.MimeTypes;
import org.eclipse.jetty.server.Handler;
import org.eclipse.jetty.server.Request;
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.util.ByteArrayISO8859Writer;
import org.eclipse.jetty.util.IO;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;
import org.eclipse.jetty.util.resource.Resource;

/* JADX INFO: loaded from: classes2.dex */
public class DefaultHandler extends AbstractHandler {
    private static final Logger LOG = Log.getLogger((Class<?>) DefaultHandler.class);
    public byte[] _favicon;
    public final long _faviconModified = (System.currentTimeMillis() / 1000) * 1000;
    public boolean _serveIcon = true;
    public boolean _showContexts = true;

    public DefaultHandler() {
        try {
            URL resource = getClass().getClassLoader().getResource("org/eclipse/jetty/favicon.ico");
            if (resource != null) {
                this._favicon = IO.readBytes(Resource.newResource(resource).getInputStream());
            }
        } catch (Exception e4) {
            LOG.warn(e4);
        }
    }

    public boolean getServeIcon() {
        return this._serveIcon;
    }

    public boolean getShowContexts() {
        return this._showContexts;
    }

    @Override // org.eclipse.jetty.server.Handler
    public void handle(String str, Request request, c cVar, e eVar) throws IOException {
        if (eVar.isCommitted() || request.isHandled()) {
            return;
        }
        request.setHandled(true);
        String method = cVar.getMethod();
        if (this._serveIcon && this._favicon != null && method.equals(HttpMethods.GET) && cVar.getRequestURI().equals("/favicon.ico")) {
            if (cVar.getDateHeader(HttpHeaders.IF_MODIFIED_SINCE) == this._faviconModified) {
                eVar.setStatus(HttpStatus.NOT_MODIFIED_304);
                return;
            }
            eVar.setStatus(200);
            eVar.setContentType("image/x-icon");
            eVar.setContentLength(this._favicon.length);
            eVar.setDateHeader(HttpHeaders.LAST_MODIFIED, this._faviconModified);
            eVar.setHeader(HttpHeaders.CACHE_CONTROL, "max-age=360000,public");
            eVar.getOutputStream().write(this._favicon);
            return;
        }
        if (!method.equals(HttpMethods.GET) || !cVar.getRequestURI().equals("/")) {
            eVar.sendError(HttpStatus.NOT_FOUND_404);
            return;
        }
        eVar.setStatus(HttpStatus.NOT_FOUND_404);
        eVar.setContentType(MimeTypes.TEXT_HTML);
        ByteArrayISO8859Writer byteArrayISO8859Writer = new ByteArrayISO8859Writer(1500);
        byteArrayISO8859Writer.write("<HTML>\n<HEAD>\n<TITLE>Error 404 - Not Found");
        byteArrayISO8859Writer.write("</TITLE>\n<BODY>\n<H2>Error 404 - Not Found.</H2>\n");
        byteArrayISO8859Writer.write("No context on this server matched or handled this request.<BR>");
        if (this._showContexts) {
            byteArrayISO8859Writer.write("Contexts known to this server are: <ul>");
            Server server = getServer();
            Handler[] childHandlersByClass = server == null ? null : server.getChildHandlersByClass(ContextHandler.class);
            for (int i4 = 0; childHandlersByClass != null && i4 < childHandlersByClass.length; i4++) {
                ContextHandler contextHandler = (ContextHandler) childHandlersByClass[i4];
                if (contextHandler.isRunning()) {
                    byteArrayISO8859Writer.write("<li><a href=\"");
                    if (contextHandler.getVirtualHosts() != null && contextHandler.getVirtualHosts().length > 0) {
                        StringBuilder sbA = f.a("http://");
                        sbA.append(contextHandler.getVirtualHosts()[0]);
                        sbA.append(":");
                        sbA.append(cVar.getLocalPort());
                        byteArrayISO8859Writer.write(sbA.toString());
                    }
                    byteArrayISO8859Writer.write(contextHandler.getContextPath());
                    if (contextHandler.getContextPath().length() > 1 && contextHandler.getContextPath().endsWith("/")) {
                        byteArrayISO8859Writer.write("/");
                    }
                    byteArrayISO8859Writer.write("\">");
                    byteArrayISO8859Writer.write(contextHandler.getContextPath());
                    if (contextHandler.getVirtualHosts() != null && contextHandler.getVirtualHosts().length > 0) {
                        StringBuilder sbA2 = f.a("&nbsp;@&nbsp;");
                        sbA2.append(contextHandler.getVirtualHosts()[0]);
                        sbA2.append(":");
                        sbA2.append(cVar.getLocalPort());
                        byteArrayISO8859Writer.write(sbA2.toString());
                    }
                    byteArrayISO8859Writer.write("&nbsp;--->&nbsp;");
                    byteArrayISO8859Writer.write(contextHandler.toString());
                    byteArrayISO8859Writer.write("</a></li>\n");
                } else {
                    byteArrayISO8859Writer.write("<li>");
                    byteArrayISO8859Writer.write(contextHandler.getContextPath());
                    if (contextHandler.getVirtualHosts() != null && contextHandler.getVirtualHosts().length > 0) {
                        StringBuilder sbA3 = f.a("&nbsp;@&nbsp;");
                        sbA3.append(contextHandler.getVirtualHosts()[0]);
                        sbA3.append(":");
                        sbA3.append(cVar.getLocalPort());
                        byteArrayISO8859Writer.write(sbA3.toString());
                    }
                    byteArrayISO8859Writer.write("&nbsp;--->&nbsp;");
                    byteArrayISO8859Writer.write(contextHandler.toString());
                    if (contextHandler.isFailed()) {
                        byteArrayISO8859Writer.write(" [failed]");
                    }
                    if (contextHandler.isStopped()) {
                        byteArrayISO8859Writer.write(" [stopped]");
                    }
                    byteArrayISO8859Writer.write("</li>\n");
                }
            }
        }
        for (int i5 = 0; i5 < 10; i5++) {
            byteArrayISO8859Writer.write("\n<!-- Padding for IE                  -->");
        }
        byteArrayISO8859Writer.write("\n</BODY>\n</HTML>\n");
        byteArrayISO8859Writer.flush();
        eVar.setContentLength(byteArrayISO8859Writer.size());
        w outputStream = eVar.getOutputStream();
        byteArrayISO8859Writer.writeTo(outputStream);
        outputStream.close();
    }

    public void setServeIcon(boolean z3) {
        this._serveIcon = z3;
    }

    public void setShowContexts(boolean z3) {
        this._showContexts = z3;
    }
}
