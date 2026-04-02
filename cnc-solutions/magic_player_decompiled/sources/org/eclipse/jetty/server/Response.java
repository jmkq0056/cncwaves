package org.eclipse.jetty.server;

import android.support.v4.media.f;
import android.support.v4.media.h;
import g2.w;
import j2.a;
import j2.e;
import j2.g;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.Locale;
import org.eclipse.jetty.http.HttpCookie;
import org.eclipse.jetty.http.HttpFields;
import org.eclipse.jetty.http.HttpGenerator;
import org.eclipse.jetty.http.HttpHeaderValues;
import org.eclipse.jetty.http.HttpHeaders;
import org.eclipse.jetty.http.HttpStatus;
import org.eclipse.jetty.http.HttpURI;
import org.eclipse.jetty.http.HttpVersions;
import org.eclipse.jetty.http.MimeTypes;
import org.eclipse.jetty.io.BufferCache;
import org.eclipse.jetty.io.EofException;
import org.eclipse.jetty.server.handler.ContextHandler;
import org.eclipse.jetty.server.handler.ErrorHandler;
import org.eclipse.jetty.util.ByteArrayISO8859Writer;
import org.eclipse.jetty.util.QuotedStringTokenizer;
import org.eclipse.jetty.util.StringUtil;
import org.eclipse.jetty.util.URIUtil;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class Response implements e {
    public static final String HTTP_ONLY_COMMENT = "__HTTP_ONLY__";
    private static final Logger LOG = Log.getLogger((Class<?>) Response.class);
    public static final int NONE = 0;
    public static final String SET_INCLUDE_HEADER_PREFIX = "org.eclipse.jetty.server.include.";
    public static final int STREAM = 1;
    public static final int WRITER = 2;
    private static final int __MIN_BUFFER_SIZE = 1;
    private BufferCache.CachedBuffer _cachedMimeType;
    private String _characterEncoding;
    private final AbstractHttpConnection _connection;
    private String _contentType;
    private boolean _explicitEncoding;
    private Locale _locale;
    private String _mimeType;
    private volatile int _outputState;
    private String _reason;
    private int _status = 200;
    private PrintWriter _writer;

    public static class NullOutput extends w {
        private NullOutput() {
        }

        @Override // g2.w
        public void print(String str) {
        }

        @Override // g2.w
        public void println(String str) {
        }

        @Override // java.io.OutputStream
        public void write(int i4) {
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i4, int i5) {
        }
    }

    public Response(AbstractHttpConnection abstractHttpConnection) {
        this._connection = abstractHttpConnection;
    }

    public static Response getResponse(e eVar) {
        return eVar instanceof Response ? (Response) eVar : AbstractHttpConnection.getCurrentConnection().getResponse();
    }

    public void addCookie(HttpCookie httpCookie) {
        this._connection.getResponseFields().addSetCookie(httpCookie);
    }

    @Override // j2.e
    public void addDateHeader(String str, long j4) {
        if (this._connection.isIncluding()) {
            return;
        }
        this._connection.getResponseFields().addDateField(str, j4);
    }

    @Override // j2.e
    public void addHeader(String str, String str2) {
        if (this._connection.isIncluding()) {
            if (!str.startsWith(SET_INCLUDE_HEADER_PREFIX)) {
                return;
            } else {
                str = str.substring(33);
            }
        }
        if (HttpHeaders.CONTENT_TYPE.equalsIgnoreCase(str)) {
            setContentType(str2);
            return;
        }
        this._connection.getResponseFields().add(str, str2);
        if (HttpHeaders.CONTENT_LENGTH.equalsIgnoreCase(str)) {
            this._connection._generator.setContentLength(Long.parseLong(str2));
        }
    }

    @Override // j2.e
    public void addIntHeader(String str, int i4) {
        if (this._connection.isIncluding()) {
            return;
        }
        long j4 = i4;
        this._connection.getResponseFields().addLongField(str, j4);
        if (HttpHeaders.CONTENT_LENGTH.equalsIgnoreCase(str)) {
            this._connection._generator.setContentLength(j4);
        }
    }

    public void complete() {
        this._connection.completeResponse();
    }

    @Override // j2.e
    public boolean containsHeader(String str) {
        return this._connection.getResponseFields().containsKey(str);
    }

    @Override // j2.e
    public String encodeRedirectURL(String str) {
        return encodeURL(str);
    }

    @Override // j2.e
    @Deprecated
    public String encodeRedirectUrl(String str) {
        return encodeRedirectURL(str);
    }

    @Override // j2.e
    public String encodeURL(String str) {
        HttpURI httpURI;
        Request request = this._connection.getRequest();
        SessionManager sessionManager = request.getSessionManager();
        if (sessionManager == null) {
            return str;
        }
        String str2 = "";
        if (sessionManager.isCheckingRemoteSessionIdEncoding() && URIUtil.hasScheme(str)) {
            httpURI = new HttpURI(str);
            String path = httpURI.getPath();
            if (path == null) {
                path = "";
            }
            int port = httpURI.getPort();
            if (port < 0) {
                port = "https".equalsIgnoreCase(httpURI.getScheme()) ? 443 : 80;
            }
            if (!request.getServerName().equalsIgnoreCase(httpURI.getHost()) || request.getServerPort() != port || !path.startsWith(request.getContextPath())) {
                return str;
            }
        } else {
            httpURI = null;
        }
        String sessionIdPathParameterNamePrefix = sessionManager.getSessionIdPathParameterNamePrefix();
        if (sessionIdPathParameterNamePrefix == null) {
            return str;
        }
        if (str == null) {
            return null;
        }
        if ((sessionManager.isUsingCookies() && request.isRequestedSessionIdFromCookie()) || !sessionManager.isUsingURLs()) {
            int iIndexOf = str.indexOf(sessionIdPathParameterNamePrefix);
            if (iIndexOf == -1) {
                return str;
            }
            int iIndexOf2 = str.indexOf("?", iIndexOf);
            if (iIndexOf2 < 0) {
                iIndexOf2 = str.indexOf("#", iIndexOf);
            }
            if (iIndexOf2 <= iIndexOf) {
                return str.substring(0, iIndexOf);
            }
            return str.substring(0, iIndexOf) + str.substring(iIndexOf2);
        }
        g session = request.getSession(false);
        if (session == null || !sessionManager.isValid(session)) {
            return str;
        }
        String nodeId = sessionManager.getNodeId(session);
        if (httpURI == null) {
            httpURI = new HttpURI(str);
        }
        int iIndexOf3 = str.indexOf(sessionIdPathParameterNamePrefix);
        if (iIndexOf3 != -1) {
            int iIndexOf4 = str.indexOf("?", iIndexOf3);
            if (iIndexOf4 < 0) {
                iIndexOf4 = str.indexOf("#", iIndexOf3);
            }
            if (iIndexOf4 <= iIndexOf3) {
                return str.substring(0, sessionIdPathParameterNamePrefix.length() + iIndexOf3) + nodeId;
            }
            return str.substring(0, sessionIdPathParameterNamePrefix.length() + iIndexOf3) + nodeId + str.substring(iIndexOf4);
        }
        int iIndexOf5 = str.indexOf(63);
        if (iIndexOf5 < 0) {
            iIndexOf5 = str.indexOf(35);
        }
        if (iIndexOf5 < 0) {
            StringBuilder sbA = f.a(str);
            if (("https".equalsIgnoreCase(httpURI.getScheme()) || "http".equalsIgnoreCase(httpURI.getScheme())) && httpURI.getPath() == null) {
                str2 = "/";
            }
            sbA.append(str2);
            sbA.append(sessionIdPathParameterNamePrefix);
            sbA.append(nodeId);
            return sbA.toString();
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str.substring(0, iIndexOf5));
        if (("https".equalsIgnoreCase(httpURI.getScheme()) || "http".equalsIgnoreCase(httpURI.getScheme())) && httpURI.getPath() == null) {
            str2 = "/";
        }
        sb.append(str2);
        sb.append(sessionIdPathParameterNamePrefix);
        sb.append(nodeId);
        sb.append(str.substring(iIndexOf5));
        return sb.toString();
    }

    @Override // j2.e
    @Deprecated
    public String encodeUrl(String str) {
        return encodeURL(str);
    }

    @Override // g2.e0
    public void flushBuffer() throws EofException {
        this._connection.flushResponse();
    }

    public void fwdReset() {
        resetBuffer();
        this._writer = null;
        this._outputState = 0;
    }

    @Override // g2.e0
    public int getBufferSize() {
        return this._connection.getGenerator().getContentBufferSize();
    }

    @Override // g2.e0
    public String getCharacterEncoding() {
        if (this._characterEncoding == null) {
            this._characterEncoding = "ISO-8859-1";
        }
        return this._characterEncoding;
    }

    public long getContentCount() {
        AbstractHttpConnection abstractHttpConnection = this._connection;
        if (abstractHttpConnection == null || abstractHttpConnection.getGenerator() == null) {
            return -1L;
        }
        return this._connection.getGenerator().getContentWritten();
    }

    @Override // g2.e0
    public String getContentType() {
        return this._contentType;
    }

    @Override // j2.e
    public String getHeader(String str) {
        return this._connection.getResponseFields().getStringField(str);
    }

    @Override // j2.e
    public Collection<String> getHeaderNames() {
        return this._connection.getResponseFields().getFieldNamesCollection();
    }

    @Override // j2.e
    public Collection<String> getHeaders(String str) {
        Collection<String> valuesCollection = this._connection.getResponseFields().getValuesCollection(str);
        return valuesCollection == null ? Collections.EMPTY_LIST : valuesCollection;
    }

    public HttpFields getHttpFields() {
        return this._connection.getResponseFields();
    }

    @Override // g2.e0
    public Locale getLocale() {
        Locale locale = this._locale;
        return locale == null ? Locale.getDefault() : locale;
    }

    @Override // g2.e0
    public w getOutputStream() {
        if (this._outputState != 0 && this._outputState != 1) {
            throw new IllegalStateException("WRITER");
        }
        w outputStream = this._connection.getOutputStream();
        this._outputState = 1;
        return outputStream;
    }

    public String getReason() {
        return this._reason;
    }

    public String getSetCharacterEncoding() {
        return this._characterEncoding;
    }

    @Override // j2.e
    public int getStatus() {
        return this._status;
    }

    @Override // g2.e0
    public PrintWriter getWriter() {
        if (this._outputState != 0 && this._outputState != 2) {
            throw new IllegalStateException("STREAM");
        }
        if (this._writer == null) {
            String charsetFromContentType = this._characterEncoding;
            if (charsetFromContentType == null) {
                BufferCache.CachedBuffer cachedBuffer = this._cachedMimeType;
                if (cachedBuffer != null) {
                    charsetFromContentType = MimeTypes.getCharsetFromContentType(cachedBuffer);
                }
                if (charsetFromContentType == null) {
                    charsetFromContentType = "ISO-8859-1";
                }
                setCharacterEncoding(charsetFromContentType);
            }
            this._writer = this._connection.getPrintWriter(charsetFromContentType);
        }
        this._outputState = 2;
        return this._writer;
    }

    @Override // g2.e0
    public boolean isCommitted() {
        return this._connection.isResponseCommitted();
    }

    public boolean isOutputing() {
        return this._outputState != 0;
    }

    public boolean isWriting() {
        return this._outputState == 2;
    }

    public void recycle() {
        this._status = 200;
        this._reason = null;
        this._locale = null;
        this._mimeType = null;
        this._cachedMimeType = null;
        this._characterEncoding = null;
        this._explicitEncoding = false;
        this._contentType = null;
        this._writer = null;
        this._outputState = 0;
    }

    @Override // g2.e0
    public void reset() {
        resetBuffer();
        fwdReset();
        this._status = 200;
        this._reason = null;
        HttpFields responseFields = this._connection.getResponseFields();
        responseFields.clear();
        String stringField = this._connection.getRequestFields().getStringField(HttpHeaders.CONNECTION_BUFFER);
        if (stringField != null) {
            String[] strArrSplit = stringField.split(",");
            for (int i4 = 0; strArrSplit != null && i4 < strArrSplit.length; i4++) {
                BufferCache.CachedBuffer cachedBuffer = HttpHeaderValues.CACHE.get(strArrSplit[0].trim());
                if (cachedBuffer != null) {
                    int ordinal = cachedBuffer.getOrdinal();
                    if (ordinal == 1) {
                        responseFields.put(HttpHeaders.CONNECTION_BUFFER, HttpHeaderValues.CLOSE_BUFFER);
                    } else if (ordinal != 5) {
                        if (ordinal == 8) {
                            responseFields.put(HttpHeaders.CONNECTION_BUFFER, "TE");
                        }
                    } else if (HttpVersions.HTTP_1_0.equalsIgnoreCase(this._connection.getRequest().getProtocol())) {
                        responseFields.put(HttpHeaders.CONNECTION_BUFFER, HttpHeaderValues.KEEP_ALIVE);
                    }
                }
            }
        }
    }

    @Override // g2.e0
    public void resetBuffer() {
        if (isCommitted()) {
            throw new IllegalStateException("Committed");
        }
        this._connection.getGenerator().resetBuffer();
    }

    @Override // j2.e
    public void sendError(int i4, String str) throws IOException {
        if (this._connection.isIncluding()) {
            return;
        }
        if (isCommitted()) {
            LOG.warn("Committed before " + i4 + " " + str, new Object[0]);
        }
        resetBuffer();
        this._characterEncoding = null;
        setHeader(HttpHeaders.EXPIRES, null);
        setHeader(HttpHeaders.LAST_MODIFIED, null);
        setHeader(HttpHeaders.CACHE_CONTROL, null);
        setHeader(HttpHeaders.CONTENT_TYPE, null);
        setHeader(HttpHeaders.CONTENT_LENGTH, null);
        this._outputState = 0;
        setStatus(i4, str);
        if (str == null) {
            str = HttpStatus.getMessage(i4);
        }
        if (i4 != 204 && i4 != 304 && i4 != 206 && i4 >= 200) {
            Request request = this._connection.getRequest();
            ContextHandler.Context context = request.getContext();
            ErrorHandler errorHandler = context != null ? context.getContextHandler().getErrorHandler() : null;
            if (errorHandler == null) {
                errorHandler = (ErrorHandler) this._connection.getConnector().getServer().getBean(ErrorHandler.class);
            }
            if (errorHandler != null) {
                request.setAttribute("javax.servlet.error.status_code", new Integer(i4));
                request.setAttribute("javax.servlet.error.message", str);
                request.setAttribute("javax.servlet.error.request_uri", request.getRequestURI());
                request.setAttribute("javax.servlet.error.servlet_name", request.getServletName());
                errorHandler.handle(null, this._connection.getRequest(), this._connection.getRequest(), this);
            } else {
                setHeader(HttpHeaders.CACHE_CONTROL, "must-revalidate,no-cache,no-store");
                setContentType(MimeTypes.TEXT_HTML_8859_1);
                ByteArrayISO8859Writer byteArrayISO8859Writer = new ByteArrayISO8859Writer(2048);
                if (str != null) {
                    str = StringUtil.replace(StringUtil.replace(StringUtil.replace(str, "&", "&amp;"), "<", "&lt;"), ">", "&gt;");
                }
                String requestURI = request.getRequestURI();
                if (requestURI != null) {
                    requestURI = StringUtil.replace(StringUtil.replace(StringUtil.replace(requestURI, "&", "&amp;"), "<", "&lt;"), ">", "&gt;");
                }
                byteArrayISO8859Writer.write("<html>\n<head>\n<meta http-equiv=\"Content-Type\" content=\"text/html;charset=ISO-8859-1\"/>\n");
                byteArrayISO8859Writer.write("<title>Error ");
                byteArrayISO8859Writer.write(Integer.toString(i4));
                byteArrayISO8859Writer.write(' ');
                if (str == null) {
                    str = HttpStatus.getMessage(i4);
                }
                byteArrayISO8859Writer.write(str);
                byteArrayISO8859Writer.write("</title>\n</head>\n<body>\n<h2>HTTP ERROR: ");
                byteArrayISO8859Writer.write(Integer.toString(i4));
                byteArrayISO8859Writer.write("</h2>\n<p>Problem accessing ");
                byteArrayISO8859Writer.write(requestURI);
                byteArrayISO8859Writer.write(". Reason:\n<pre>    ");
                byteArrayISO8859Writer.write(str);
                byteArrayISO8859Writer.write("</pre>");
                byteArrayISO8859Writer.write("</p>\n");
                if (this._connection.getServer().getSendServerVersion()) {
                    byteArrayISO8859Writer.write("<hr /><i><small>Powered by Jetty:// ");
                    byteArrayISO8859Writer.write(Server.getVersion());
                    byteArrayISO8859Writer.write("</small></i>");
                }
                for (int i5 = 0; i5 < 20; i5++) {
                    byteArrayISO8859Writer.write("\n                                                ");
                }
                byteArrayISO8859Writer.write("\n</body>\n</html>\n");
                byteArrayISO8859Writer.flush();
                setContentLength(byteArrayISO8859Writer.size());
                byteArrayISO8859Writer.writeTo(getOutputStream());
                byteArrayISO8859Writer.destroy();
            }
        } else if (i4 != 206) {
            this._connection.getRequestFields().remove(HttpHeaders.CONTENT_TYPE_BUFFER);
            this._connection.getRequestFields().remove(HttpHeaders.CONTENT_LENGTH_BUFFER);
            this._characterEncoding = null;
            this._mimeType = null;
            this._cachedMimeType = null;
        }
        complete();
    }

    public void sendProcessing() {
        if (!this._connection.isExpecting102Processing() || isCommitted()) {
            return;
        }
        ((HttpGenerator) this._connection.getGenerator()).send1xx(102);
    }

    @Override // j2.e
    public void sendRedirect(String str) {
        String strCanonicalPath;
        if (this._connection.isIncluding()) {
            return;
        }
        if (str == null) {
            throw new IllegalArgumentException();
        }
        if (!URIUtil.hasScheme(str)) {
            StringBuilder rootURL = this._connection.getRequest().getRootURL();
            if (str.startsWith("/")) {
                strCanonicalPath = URIUtil.canonicalPath(str);
            } else {
                String requestURI = this._connection.getRequest().getRequestURI();
                if (!requestURI.endsWith("/")) {
                    requestURI = URIUtil.parentPath(requestURI);
                }
                strCanonicalPath = URIUtil.canonicalPath(URIUtil.addPaths(requestURI, str));
                if (!strCanonicalPath.startsWith("/")) {
                    rootURL.append('/');
                }
            }
            if (strCanonicalPath == null) {
                throw new IllegalStateException("path cannot be above root");
            }
            rootURL.append(strCanonicalPath);
            str = rootURL.toString();
        }
        resetBuffer();
        setHeader(HttpHeaders.LOCATION, str);
        setStatus(302);
        complete();
    }

    @Override // g2.e0
    public void setBufferSize(int i4) {
        if (isCommitted() || getContentCount() > 0) {
            throw new IllegalStateException("Committed or content written");
        }
        if (i4 <= 0) {
            i4 = 1;
        }
        this._connection.getGenerator().increaseContentBufferSize(i4);
    }

    @Override // g2.e0
    public void setCharacterEncoding(String str) {
        BufferCache.CachedBuffer associate;
        if (this._connection.isIncluding() || this._outputState != 0 || isCommitted()) {
            return;
        }
        this._explicitEncoding = true;
        if (str == null) {
            if (this._characterEncoding != null) {
                this._characterEncoding = null;
                BufferCache.CachedBuffer cachedBuffer = this._cachedMimeType;
                if (cachedBuffer != null) {
                    this._contentType = cachedBuffer.toString();
                } else {
                    String str2 = this._mimeType;
                    if (str2 != null) {
                        this._contentType = str2;
                    } else {
                        this._contentType = null;
                    }
                }
                if (this._contentType == null) {
                    this._connection.getResponseFields().remove(HttpHeaders.CONTENT_TYPE_BUFFER);
                    return;
                } else {
                    this._connection.getResponseFields().put(HttpHeaders.CONTENT_TYPE_BUFFER, this._contentType);
                    return;
                }
            }
            return;
        }
        this._characterEncoding = str;
        String str3 = this._contentType;
        if (str3 != null) {
            int iIndexOf = str3.indexOf(59);
            if (iIndexOf < 0) {
                this._contentType = null;
                BufferCache.CachedBuffer cachedBuffer2 = this._cachedMimeType;
                if (cachedBuffer2 != null && (associate = cachedBuffer2.getAssociate(this._characterEncoding)) != null) {
                    this._contentType = associate.toString();
                    this._connection.getResponseFields().put(HttpHeaders.CONTENT_TYPE_BUFFER, associate);
                }
                if (this._contentType == null) {
                    this._contentType = this._mimeType + ";charset=" + QuotedStringTokenizer.quoteIfNeeded(this._characterEncoding, ";= ");
                    this._connection.getResponseFields().put(HttpHeaders.CONTENT_TYPE_BUFFER, this._contentType);
                    return;
                }
                return;
            }
            int iIndexOf2 = this._contentType.indexOf("charset=", iIndexOf);
            if (iIndexOf2 < 0) {
                this._contentType += ";charset=" + QuotedStringTokenizer.quoteIfNeeded(this._characterEncoding, ";= ");
            } else {
                int i4 = iIndexOf2 + 8;
                int iIndexOf3 = this._contentType.indexOf(" ", i4);
                if (iIndexOf3 < 0) {
                    this._contentType = this._contentType.substring(0, i4) + QuotedStringTokenizer.quoteIfNeeded(this._characterEncoding, ";= ");
                } else {
                    this._contentType = this._contentType.substring(0, i4) + QuotedStringTokenizer.quoteIfNeeded(this._characterEncoding, ";= ") + this._contentType.substring(iIndexOf3);
                }
            }
            this._connection.getResponseFields().put(HttpHeaders.CONTENT_TYPE_BUFFER, this._contentType);
        }
    }

    @Override // g2.e0
    public void setContentLength(int i4) {
        if (isCommitted() || this._connection.isIncluding()) {
            return;
        }
        long j4 = i4;
        this._connection._generator.setContentLength(j4);
        if (i4 > 0) {
            this._connection.getResponseFields().putLongField(HttpHeaders.CONTENT_LENGTH, j4);
            if (this._connection._generator.isAllContentWritten()) {
                if (this._outputState == 2) {
                    this._writer.close();
                } else if (this._outputState == 1) {
                    try {
                        getOutputStream().close();
                    } catch (IOException e4) {
                        throw new RuntimeException(e4);
                    }
                }
            }
        }
    }

    @Override // g2.e0
    public void setContentType(String str) {
        if (isCommitted() || this._connection.isIncluding()) {
            return;
        }
        if (str == null) {
            if (this._locale == null) {
                this._characterEncoding = null;
            }
            this._mimeType = null;
            this._cachedMimeType = null;
            this._contentType = null;
            this._connection.getResponseFields().remove(HttpHeaders.CONTENT_TYPE_BUFFER);
            return;
        }
        int iIndexOf = str.indexOf(59);
        if (iIndexOf <= 0) {
            this._mimeType = str;
            BufferCache.CachedBuffer cachedBuffer = MimeTypes.CACHE.get(str);
            this._cachedMimeType = cachedBuffer;
            String str2 = this._characterEncoding;
            if (str2 == null) {
                if (cachedBuffer != null) {
                    this._contentType = cachedBuffer.toString();
                    this._connection.getResponseFields().put(HttpHeaders.CONTENT_TYPE_BUFFER, this._cachedMimeType);
                    return;
                } else {
                    this._contentType = str;
                    this._connection.getResponseFields().put(HttpHeaders.CONTENT_TYPE_BUFFER, this._contentType);
                    return;
                }
            }
            if (cachedBuffer == null) {
                StringBuilder sbA = android.support.v4.media.g.a(str, ";charset=");
                sbA.append(QuotedStringTokenizer.quoteIfNeeded(this._characterEncoding, ";= "));
                this._contentType = sbA.toString();
                this._connection.getResponseFields().put(HttpHeaders.CONTENT_TYPE_BUFFER, this._contentType);
                return;
            }
            BufferCache.CachedBuffer associate = cachedBuffer.getAssociate(str2);
            if (associate != null) {
                this._contentType = associate.toString();
                this._connection.getResponseFields().put(HttpHeaders.CONTENT_TYPE_BUFFER, associate);
                return;
            }
            this._contentType = this._mimeType + ";charset=" + QuotedStringTokenizer.quoteIfNeeded(this._characterEncoding, ";= ");
            this._connection.getResponseFields().put(HttpHeaders.CONTENT_TYPE_BUFFER, this._contentType);
            return;
        }
        String strTrim = str.substring(0, iIndexOf).trim();
        this._mimeType = strTrim;
        BufferCache bufferCache = MimeTypes.CACHE;
        this._cachedMimeType = bufferCache.get(strTrim);
        int i4 = iIndexOf + 1;
        int iIndexOf2 = str.indexOf("charset=", i4);
        if (iIndexOf2 < 0) {
            this._cachedMimeType = null;
            if (this._characterEncoding != null) {
                StringBuilder sbA2 = android.support.v4.media.g.a(str, ";charset=");
                sbA2.append(QuotedStringTokenizer.quoteIfNeeded(this._characterEncoding, ";= "));
                str = sbA2.toString();
            }
            this._contentType = str;
            this._connection.getResponseFields().put(HttpHeaders.CONTENT_TYPE_BUFFER, this._contentType);
            return;
        }
        this._explicitEncoding = true;
        int i5 = iIndexOf2 + 8;
        int iIndexOf3 = str.indexOf(32, i5);
        if (this._outputState != 2) {
            if ((iIndexOf2 != i4 || iIndexOf3 >= 0) && !(iIndexOf2 == iIndexOf + 2 && iIndexOf3 < 0 && str.charAt(i4) == ' ')) {
                if (iIndexOf3 > 0) {
                    this._characterEncoding = QuotedStringTokenizer.unquote(str.substring(i5, iIndexOf3));
                    this._contentType = str;
                    this._connection.getResponseFields().put(HttpHeaders.CONTENT_TYPE_BUFFER, this._contentType);
                    return;
                } else {
                    this._characterEncoding = QuotedStringTokenizer.unquote(str.substring(i5));
                    this._contentType = str;
                    this._connection.getResponseFields().put(HttpHeaders.CONTENT_TYPE_BUFFER, this._contentType);
                    return;
                }
            }
            this._cachedMimeType = bufferCache.get(this._mimeType);
            String strUnquote = QuotedStringTokenizer.unquote(str.substring(i5));
            this._characterEncoding = strUnquote;
            BufferCache.CachedBuffer cachedBuffer2 = this._cachedMimeType;
            if (cachedBuffer2 == null) {
                this._contentType = str;
                this._connection.getResponseFields().put(HttpHeaders.CONTENT_TYPE_BUFFER, this._contentType);
                return;
            }
            BufferCache.CachedBuffer associate2 = cachedBuffer2.getAssociate(strUnquote);
            if (associate2 != null) {
                this._contentType = associate2.toString();
                this._connection.getResponseFields().put(HttpHeaders.CONTENT_TYPE_BUFFER, associate2);
                return;
            } else {
                this._contentType = str;
                this._connection.getResponseFields().put(HttpHeaders.CONTENT_TYPE_BUFFER, this._contentType);
                return;
            }
        }
        if ((iIndexOf2 != i4 || iIndexOf3 >= 0) && !(iIndexOf2 == iIndexOf + 2 && iIndexOf3 < 0 && str.charAt(i4) == ' ')) {
            if (iIndexOf3 < 0) {
                this._contentType = str.substring(0, iIndexOf2) + ";charset=" + QuotedStringTokenizer.quoteIfNeeded(this._characterEncoding, ";= ");
                this._connection.getResponseFields().put(HttpHeaders.CONTENT_TYPE_BUFFER, this._contentType);
                return;
            }
            this._contentType = str.substring(0, iIndexOf2) + str.substring(iIndexOf3) + ";charset=" + QuotedStringTokenizer.quoteIfNeeded(this._characterEncoding, ";= ");
            this._connection.getResponseFields().put(HttpHeaders.CONTENT_TYPE_BUFFER, this._contentType);
            return;
        }
        BufferCache.CachedBuffer cachedBuffer3 = this._cachedMimeType;
        if (cachedBuffer3 == null) {
            this._contentType = this._mimeType + ";charset=" + this._characterEncoding;
            this._connection.getResponseFields().put(HttpHeaders.CONTENT_TYPE_BUFFER, this._contentType);
            return;
        }
        BufferCache.CachedBuffer associate3 = cachedBuffer3.getAssociate(this._characterEncoding);
        if (associate3 != null) {
            this._contentType = associate3.toString();
            this._connection.getResponseFields().put(HttpHeaders.CONTENT_TYPE_BUFFER, associate3);
            return;
        }
        this._contentType = this._mimeType + ";charset=" + this._characterEncoding;
        this._connection.getResponseFields().put(HttpHeaders.CONTENT_TYPE_BUFFER, this._contentType);
    }

    @Override // j2.e
    public void setDateHeader(String str, long j4) {
        if (this._connection.isIncluding()) {
            return;
        }
        this._connection.getResponseFields().putDateField(str, j4);
    }

    @Override // j2.e
    public void setHeader(String str, String str2) {
        if (HttpHeaders.CONTENT_TYPE.equalsIgnoreCase(str)) {
            setContentType(str2);
            return;
        }
        if (this._connection.isIncluding()) {
            if (!str.startsWith(SET_INCLUDE_HEADER_PREFIX)) {
                return;
            } else {
                str = str.substring(33);
            }
        }
        this._connection.getResponseFields().put(str, str2);
        if (HttpHeaders.CONTENT_LENGTH.equalsIgnoreCase(str)) {
            if (str2 == null) {
                this._connection._generator.setContentLength(-1L);
            } else {
                this._connection._generator.setContentLength(Long.parseLong(str2));
            }
        }
    }

    @Override // j2.e
    public void setIntHeader(String str, int i4) {
        if (this._connection.isIncluding()) {
            return;
        }
        long j4 = i4;
        this._connection.getResponseFields().putLongField(str, j4);
        if (HttpHeaders.CONTENT_LENGTH.equalsIgnoreCase(str)) {
            this._connection._generator.setContentLength(j4);
        }
    }

    @Override // g2.e0
    public void setLocale(Locale locale) {
        String localeEncoding;
        if (locale == null || isCommitted() || this._connection.isIncluding()) {
            return;
        }
        this._locale = locale;
        this._connection.getResponseFields().put(HttpHeaders.CONTENT_LANGUAGE_BUFFER, locale.toString().replace('_', '-'));
        if (this._explicitEncoding || this._outputState != 0 || this._connection.getRequest().getContext() == null || (localeEncoding = this._connection.getRequest().getContext().getContextHandler().getLocaleEncoding(locale)) == null || localeEncoding.length() <= 0) {
            return;
        }
        this._characterEncoding = localeEncoding;
        String contentType = getContentType();
        if (contentType != null) {
            this._characterEncoding = localeEncoding;
            int iIndexOf = contentType.indexOf(59);
            if (iIndexOf < 0) {
                this._mimeType = contentType;
                this._contentType = h.a(contentType, ";charset=", localeEncoding);
            } else {
                this._mimeType = contentType.substring(0, iIndexOf);
                String str = this._mimeType + ";charset=" + localeEncoding;
                this._mimeType = str;
                this._contentType = str;
            }
            this._cachedMimeType = MimeTypes.CACHE.get(this._mimeType);
            this._connection.getResponseFields().put(HttpHeaders.CONTENT_TYPE_BUFFER, this._contentType);
        }
    }

    public void setLongContentLength(long j4) {
        if (isCommitted() || this._connection.isIncluding()) {
            return;
        }
        this._connection._generator.setContentLength(j4);
        this._connection.getResponseFields().putLongField(HttpHeaders.CONTENT_LENGTH, j4);
    }

    @Override // j2.e
    public void setStatus(int i4) {
        setStatus(i4, null);
    }

    public String toString() {
        StringBuilder sbA = f.a("HTTP/1.1 ");
        sbA.append(this._status);
        sbA.append(" ");
        String str = this._reason;
        if (str == null) {
            str = "";
        }
        sbA.append(str);
        sbA.append(System.getProperty("line.separator"));
        sbA.append(this._connection.getResponseFields().toString());
        return sbA.toString();
    }

    @Override // j2.e
    public void addCookie(a aVar) {
        String str;
        boolean z3;
        String str2 = aVar.f2018c;
        if (str2 == null || str2.indexOf(HTTP_ONLY_COMMENT) < 0) {
            str = str2;
            z3 = false;
        } else {
            String strTrim = str2.replace(HTTP_ONLY_COMMENT, "").trim();
            if (strTrim.length() == 0) {
                strTrim = null;
            }
            str = strTrim;
            z3 = true;
        }
        this._connection.getResponseFields().addSetCookie(aVar.f2016a, aVar.f2017b, aVar.f2019d, aVar.f2020e, -1, str, false, z3, aVar.f2021f);
    }

    @Override // j2.e
    public void setStatus(int i4, String str) {
        if (i4 <= 0) {
            throw new IllegalArgumentException();
        }
        if (this._connection.isIncluding()) {
            return;
        }
        this._status = i4;
        this._reason = str;
    }

    public void reset(boolean z3) {
        if (!z3) {
            reset();
            return;
        }
        HttpFields responseFields = this._connection.getResponseFields();
        ArrayList arrayList = new ArrayList(5);
        Enumeration<String> values = responseFields.getValues(HttpHeaders.SET_COOKIE);
        while (values.hasMoreElements()) {
            arrayList.add(values.nextElement());
        }
        reset();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            responseFields.add(HttpHeaders.SET_COOKIE, (String) it.next());
        }
    }

    @Override // j2.e
    public void sendError(int i4) {
        if (i4 == -1) {
            this._connection.getEndPoint().close();
        } else if (i4 != 102) {
            sendError(i4, null);
        } else {
            sendProcessing();
        }
    }
}
