package org.eclipse.jetty.server.handler;

import j2.c;
import j2.e;
import java.io.IOException;
import java.io.OutputStream;
import java.net.MalformedURLException;
import org.eclipse.jetty.http.HttpFields;
import org.eclipse.jetty.http.HttpHeaders;
import org.eclipse.jetty.http.HttpMethods;
import org.eclipse.jetty.http.HttpStatus;
import org.eclipse.jetty.http.MimeTypes;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.io.ByteArrayBuffer;
import org.eclipse.jetty.io.WriterOutputStream;
import org.eclipse.jetty.server.AbstractHttpConnection;
import org.eclipse.jetty.server.Request;
import org.eclipse.jetty.server.Response;
import org.eclipse.jetty.server.handler.ContextHandler;
import org.eclipse.jetty.util.URIUtil;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;
import org.eclipse.jetty.util.resource.FileResource;
import org.eclipse.jetty.util.resource.Resource;

/* JADX INFO: loaded from: classes2.dex */
public class ResourceHandler extends HandlerWrapper {
    private static final Logger LOG = Log.getLogger((Class<?>) ResourceHandler.class);
    public boolean _aliases;
    public Resource _baseResource;
    public ByteArrayBuffer _cacheControl;
    public ContextHandler _context;
    public Resource _defaultStylesheet;
    public boolean _directory;
    public boolean _etags;
    public Resource _stylesheet;
    public String[] _welcomeFiles = {"index.html"};
    public MimeTypes _mimeTypes = new MimeTypes();

    public void doDirectory(c cVar, e eVar, Resource resource) {
        if (!this._directory) {
            eVar.sendError(HttpStatus.FORBIDDEN_403);
            return;
        }
        String listHTML = resource.getListHTML(cVar.getRequestURI(), cVar.getPathInfo().lastIndexOf("/") > 0);
        eVar.setContentType("text/html; charset=UTF-8");
        eVar.getWriter().println(listHTML);
    }

    public void doResponseHeaders(e eVar, Resource resource, String str) {
        if (str != null) {
            eVar.setContentType(str);
        }
        long length = resource.length();
        if (!(eVar instanceof Response)) {
            if (length > 0) {
                eVar.setHeader(HttpHeaders.CONTENT_LENGTH, Long.toString(length));
            }
            ByteArrayBuffer byteArrayBuffer = this._cacheControl;
            if (byteArrayBuffer != null) {
                eVar.setHeader(HttpHeaders.CACHE_CONTROL, byteArrayBuffer.toString());
                return;
            }
            return;
        }
        HttpFields httpFields = ((Response) eVar).getHttpFields();
        if (length > 0) {
            httpFields.putLongField(HttpHeaders.CONTENT_LENGTH_BUFFER, length);
        }
        ByteArrayBuffer byteArrayBuffer2 = this._cacheControl;
        if (byteArrayBuffer2 != null) {
            httpFields.put(HttpHeaders.CACHE_CONTROL_BUFFER, byteArrayBuffer2);
        }
    }

    @Override // org.eclipse.jetty.server.handler.HandlerWrapper, org.eclipse.jetty.server.handler.AbstractHandler, org.eclipse.jetty.util.component.AggregateLifeCycle, org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStart() {
        ContextHandler.Context currentContext = ContextHandler.getCurrentContext();
        ContextHandler contextHandler = currentContext == null ? null : currentContext.getContextHandler();
        this._context = contextHandler;
        if (contextHandler != null) {
            this._aliases = contextHandler.isAliases();
        }
        if (!this._aliases && !FileResource.getCheckAliases()) {
            throw new IllegalStateException("Alias checking disabled");
        }
        super.doStart();
    }

    public Resource getBaseResource() {
        Resource resource = this._baseResource;
        if (resource == null) {
            return null;
        }
        return resource;
    }

    public String getCacheControl() {
        return this._cacheControl.toString();
    }

    public MimeTypes getMimeTypes() {
        return this._mimeTypes;
    }

    public Resource getResource(String str) throws MalformedURLException {
        ContextHandler contextHandler;
        if (str == null || !str.startsWith("/")) {
            throw new MalformedURLException(str);
        }
        Resource baseResource = this._baseResource;
        if (baseResource == null && ((contextHandler = this._context) == null || (baseResource = contextHandler.getBaseResource()) == null)) {
            return null;
        }
        try {
            return baseResource.addPath(URIUtil.canonicalPath(str));
        } catch (Exception e4) {
            LOG.ignore(e4);
            return null;
        }
    }

    public String getResourceBase() {
        Resource resource = this._baseResource;
        if (resource == null) {
            return null;
        }
        return resource.toString();
    }

    public Resource getStylesheet() {
        Resource resource = this._stylesheet;
        if (resource != null) {
            return resource;
        }
        if (this._defaultStylesheet == null) {
            try {
                this._defaultStylesheet = Resource.newResource(getClass().getResource("/jetty-dir.css"));
            } catch (IOException e4) {
                Logger logger = LOG;
                logger.warn(e4.toString(), new Object[0]);
                logger.debug(e4);
            }
        }
        return this._defaultStylesheet;
    }

    public Resource getWelcome(Resource resource) {
        int i4 = 0;
        while (true) {
            String[] strArr = this._welcomeFiles;
            if (i4 >= strArr.length) {
                return null;
            }
            Resource resourceAddPath = resource.addPath(strArr[i4]);
            if (resourceAddPath.exists() && !resourceAddPath.isDirectory()) {
                return resourceAddPath;
            }
            i4++;
        }
    }

    public String[] getWelcomeFiles() {
        return this._welcomeFiles;
    }

    @Override // org.eclipse.jetty.server.handler.HandlerWrapper, org.eclipse.jetty.server.Handler
    public void handle(String str, Request request, c cVar, e eVar) throws IOException {
        boolean z3;
        Resource resource;
        String weakETag;
        OutputStream writerOutputStream;
        if (request.isHandled()) {
            return;
        }
        if (HttpMethods.GET.equals(cVar.getMethod())) {
            z3 = false;
        } else {
            if (!HttpMethods.HEAD.equals(cVar.getMethod())) {
                super.handle(str, request, cVar, eVar);
                return;
            }
            z3 = true;
        }
        Resource resource2 = getResource(cVar);
        if (resource2 == null || !resource2.exists()) {
            if (!str.endsWith("/jetty-dir.css")) {
                super.handle(str, request, cVar, eVar);
                return;
            }
            resource2 = getStylesheet();
            if (resource2 == null) {
                return;
            } else {
                eVar.setContentType("text/css");
            }
        }
        if (!this._aliases && resource2.getAlias() != null) {
            LOG.info(resource2 + " aliased to " + resource2.getAlias(), new Object[0]);
            return;
        }
        request.setHandled(true);
        if (!resource2.isDirectory()) {
            resource = resource2;
        } else {
            if (!cVar.getPathInfo().endsWith("/")) {
                eVar.sendRedirect(eVar.encodeRedirectURL(URIUtil.addPaths(cVar.getRequestURI(), "/")));
                return;
            }
            Resource welcome = getWelcome(resource2);
            if (welcome == null || !welcome.exists()) {
                doDirectory(cVar, eVar, resource2);
                request.setHandled(true);
                return;
            }
            resource = welcome;
        }
        long jLastModified = resource.lastModified();
        if (this._etags) {
            String header = cVar.getHeader(HttpHeaders.IF_NONE_MATCH);
            weakETag = resource.getWeakETag();
            if (header != null && header.equals(weakETag)) {
                eVar.setStatus(HttpStatus.NOT_MODIFIED_304);
                request.getResponse().getHttpFields().put(HttpHeaders.ETAG_BUFFER, weakETag);
                return;
            }
        } else {
            weakETag = null;
        }
        if (jLastModified > 0) {
            long dateHeader = cVar.getDateHeader(HttpHeaders.IF_MODIFIED_SINCE);
            if (dateHeader > 0 && jLastModified / 1000 <= dateHeader / 1000) {
                eVar.setStatus(HttpStatus.NOT_MODIFIED_304);
                return;
            }
        }
        Buffer mimeByExtension = this._mimeTypes.getMimeByExtension(resource.toString());
        if (mimeByExtension == null) {
            mimeByExtension = this._mimeTypes.getMimeByExtension(cVar.getPathInfo());
        }
        doResponseHeaders(eVar, resource, mimeByExtension != null ? mimeByExtension.toString() : null);
        eVar.setDateHeader(HttpHeaders.LAST_MODIFIED, jLastModified);
        if (this._etags) {
            request.getResponse().getHttpFields().put(HttpHeaders.ETAG_BUFFER, weakETag);
        }
        if (z3) {
            return;
        }
        try {
            writerOutputStream = eVar.getOutputStream();
        } catch (IllegalStateException unused) {
            writerOutputStream = new WriterOutputStream(eVar.getWriter());
        }
        OutputStream outputStream = writerOutputStream;
        if (outputStream instanceof AbstractHttpConnection.Output) {
            ((AbstractHttpConnection.Output) outputStream).sendContent(resource.getInputStream());
        } else {
            resource.writeTo(outputStream, 0L, resource.length());
        }
    }

    public boolean isAliases() {
        return this._aliases;
    }

    public boolean isDirectoriesListed() {
        return this._directory;
    }

    public boolean isEtags() {
        return this._etags;
    }

    public void setAliases(boolean z3) {
        this._aliases = z3;
    }

    public void setBaseResource(Resource resource) {
        this._baseResource = resource;
    }

    public void setCacheControl(String str) {
        this._cacheControl = str == null ? null : new ByteArrayBuffer(str);
    }

    public void setDirectoriesListed(boolean z3) {
        this._directory = z3;
    }

    public void setEtags(boolean z3) {
        this._etags = z3;
    }

    public void setMimeTypes(MimeTypes mimeTypes) {
        this._mimeTypes = mimeTypes;
    }

    public void setResourceBase(String str) {
        try {
            setBaseResource(Resource.newResource(str));
        } catch (Exception e4) {
            Logger logger = LOG;
            logger.warn(e4.toString(), new Object[0]);
            logger.debug(e4);
            throw new IllegalArgumentException(str);
        }
    }

    public void setStylesheet(String str) {
        try {
            Resource resourceNewResource = Resource.newResource(str);
            this._stylesheet = resourceNewResource;
            if (resourceNewResource.exists()) {
                return;
            }
            LOG.warn("unable to find custom stylesheet: " + str, new Object[0]);
            this._stylesheet = null;
        } catch (Exception e4) {
            Logger logger = LOG;
            logger.warn(e4.toString(), new Object[0]);
            logger.debug(e4);
            throw new IllegalArgumentException(str.toString());
        }
    }

    public void setWelcomeFiles(String[] strArr) {
        this._welcomeFiles = strArr;
    }

    public Resource getResource(c cVar) {
        String servletPath;
        String pathInfo;
        Boolean boolValueOf = Boolean.valueOf(cVar.getAttribute("javax.servlet.include.request_uri") != null);
        if (boolValueOf != null && boolValueOf.booleanValue()) {
            servletPath = (String) cVar.getAttribute("javax.servlet.include.servlet_path");
            pathInfo = (String) cVar.getAttribute("javax.servlet.include.path_info");
            if (servletPath == null && pathInfo == null) {
                servletPath = cVar.getServletPath();
                pathInfo = cVar.getPathInfo();
            }
        } else {
            servletPath = cVar.getServletPath();
            pathInfo = cVar.getPathInfo();
        }
        return getResource(URIUtil.addPaths(servletPath, pathInfo));
    }
}
