package org.eclipse.jetty.server.handler;

import g2.u;
import j2.c;
import j2.e;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import org.eclipse.jetty.http.HttpHeaders;
import org.eclipse.jetty.http.HttpMethods;
import org.eclipse.jetty.http.HttpStatus;
import org.eclipse.jetty.http.MimeTypes;
import org.eclipse.jetty.server.AbstractHttpConnection;
import org.eclipse.jetty.server.Dispatcher;
import org.eclipse.jetty.server.Request;
import org.eclipse.jetty.util.ByteArrayISO8859Writer;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class ErrorHandler extends AbstractHandler {
    public static final String ERROR_PAGE = "org.eclipse.jetty.server.error_page";
    private static final Logger LOG = Log.getLogger((Class<?>) ErrorHandler.class);
    public boolean _showStacks = true;
    public boolean _showMessageInTitle = true;
    public String _cacheControl = "must-revalidate,no-cache,no-store";

    public interface ErrorPageMapper {
        String getErrorPage(c cVar);
    }

    public String getCacheControl() {
        return this._cacheControl;
    }

    public boolean getShowMessageInTitle() {
        return this._showMessageInTitle;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.eclipse.jetty.server.Handler
    public void handle(String str, Request request, c cVar, e eVar) {
        String errorPage;
        String str2;
        AbstractHttpConnection currentConnection = AbstractHttpConnection.getCurrentConnection();
        String method = cVar.getMethod();
        if (!method.equals(HttpMethods.GET) && !method.equals(HttpMethods.POST) && !method.equals(HttpMethods.HEAD)) {
            currentConnection.getRequest().setHandled(true);
            return;
        }
        if ((this instanceof ErrorPageMapper) && (errorPage = ((ErrorPageMapper) this).getErrorPage(cVar)) != null && cVar.getServletContext() != null && ((str2 = (String) cVar.getAttribute(ERROR_PAGE)) == null || !str2.equals(errorPage))) {
            cVar.setAttribute(ERROR_PAGE, errorPage);
            Dispatcher dispatcher = (Dispatcher) cVar.getServletContext().getRequestDispatcher(errorPage);
            try {
                if (dispatcher != null) {
                    dispatcher.error(cVar, eVar);
                    return;
                }
                LOG.warn("No error page " + errorPage, new Object[0]);
            } catch (u e4) {
                LOG.warn(Log.EXCEPTION, e4);
                return;
            }
        }
        currentConnection.getRequest().setHandled(true);
        eVar.setContentType(MimeTypes.TEXT_HTML_8859_1);
        String str3 = this._cacheControl;
        if (str3 != null) {
            eVar.setHeader(HttpHeaders.CACHE_CONTROL, str3);
        }
        ByteArrayISO8859Writer byteArrayISO8859Writer = new ByteArrayISO8859Writer(4096);
        handleErrorPage(cVar, byteArrayISO8859Writer, currentConnection.getResponse().getStatus(), currentConnection.getResponse().getReason());
        byteArrayISO8859Writer.flush();
        eVar.setContentLength(byteArrayISO8859Writer.size());
        byteArrayISO8859Writer.writeTo(eVar.getOutputStream());
        byteArrayISO8859Writer.destroy();
    }

    public void handleErrorPage(c cVar, Writer writer, int i4, String str) throws IOException {
        writeErrorPage(cVar, writer, i4, str, this._showStacks);
    }

    public boolean isShowStacks() {
        return this._showStacks;
    }

    public void setCacheControl(String str) {
        this._cacheControl = str;
    }

    public void setShowMessageInTitle(boolean z3) {
        this._showMessageInTitle = z3;
    }

    public void setShowStacks(boolean z3) {
        this._showStacks = z3;
    }

    public void write(Writer writer, String str) throws IOException {
        if (str == null) {
            return;
        }
        for (int i4 = 0; i4 < str.length(); i4++) {
            char cCharAt = str.charAt(i4);
            if (cCharAt == '&') {
                writer.write("&amp;");
            } else if (cCharAt == '<') {
                writer.write("&lt;");
            } else if (cCharAt == '>') {
                writer.write("&gt;");
            } else if (!Character.isISOControl(cCharAt) || Character.isWhitespace(cCharAt)) {
                writer.write(cCharAt);
            } else {
                writer.write(63);
            }
        }
    }

    public void writeErrorPage(c cVar, Writer writer, int i4, String str, boolean z3) throws IOException {
        if (str == null) {
            str = HttpStatus.getMessage(i4);
        }
        String str2 = str;
        writer.write("<html>\n<head>\n");
        writeErrorPageHead(cVar, writer, i4, str2);
        writer.write("</head>\n<body>");
        writeErrorPageBody(cVar, writer, i4, str2, z3);
        writer.write("\n</body>\n</html>\n");
    }

    public void writeErrorPageBody(c cVar, Writer writer, int i4, String str, boolean z3) throws IOException {
        writeErrorPageMessage(cVar, writer, i4, str, cVar.getRequestURI());
        if (z3) {
            writeErrorPageStacks(cVar, writer);
        }
        writer.write("<hr /><i><small>Powered by Jetty://</small></i>");
        for (int i5 = 0; i5 < 20; i5++) {
            writer.write("<br/>                                                \n");
        }
    }

    public void writeErrorPageHead(c cVar, Writer writer, int i4, String str) throws IOException {
        writer.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\"/>\n");
        writer.write("<title>Error ");
        writer.write(Integer.toString(i4));
        if (this._showMessageInTitle) {
            writer.write(32);
            write(writer, str);
        }
        writer.write("</title>\n");
    }

    public void writeErrorPageMessage(c cVar, Writer writer, int i4, String str, String str2) throws IOException {
        writer.write("<h2>HTTP ERROR ");
        writer.write(Integer.toString(i4));
        writer.write("</h2>\n<p>Problem accessing ");
        write(writer, str2);
        writer.write(". Reason:\n<pre>    ");
        write(writer, str);
        writer.write("</pre></p>");
    }

    public void writeErrorPageStacks(c cVar, Writer writer) throws IOException {
        for (Throwable cause = (Throwable) cVar.getAttribute("javax.servlet.error.exception"); cause != null; cause = cause.getCause()) {
            writer.write("<h3>Caused by:</h3><pre>");
            StringWriter stringWriter = new StringWriter();
            PrintWriter printWriter = new PrintWriter(stringWriter);
            cause.printStackTrace(printWriter);
            printWriter.flush();
            write(writer, stringWriter.getBuffer().toString());
            writer.write("</pre>\n");
        }
    }
}
