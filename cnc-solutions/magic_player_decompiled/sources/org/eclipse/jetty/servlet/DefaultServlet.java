package org.eclipse.jetty.servlet;

import android.support.v4.media.f;
import g2.k0;
import g2.p;
import j2.b;
import j2.c;
import j2.e;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Enumeration;
import java.util.List;
import org.eclipse.jetty.http.HttpContent;
import org.eclipse.jetty.http.HttpFields;
import org.eclipse.jetty.http.HttpHeaderValues;
import org.eclipse.jetty.http.HttpHeaders;
import org.eclipse.jetty.http.HttpMethods;
import org.eclipse.jetty.http.HttpStatus;
import org.eclipse.jetty.http.MimeTypes;
import org.eclipse.jetty.http.PathMap;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.io.ByteArrayBuffer;
import org.eclipse.jetty.io.EofException;
import org.eclipse.jetty.io.WriterOutputStream;
import org.eclipse.jetty.server.AbstractHttpConnection;
import org.eclipse.jetty.server.Connector;
import org.eclipse.jetty.server.HttpOutput;
import org.eclipse.jetty.server.InclusiveByteRange;
import org.eclipse.jetty.server.ResourceCache;
import org.eclipse.jetty.server.Response;
import org.eclipse.jetty.server.handler.ContextHandler;
import org.eclipse.jetty.server.nio.NIOConnector;
import org.eclipse.jetty.server.ssl.SslConnector;
import org.eclipse.jetty.util.IO;
import org.eclipse.jetty.util.MultiPartOutputStream;
import org.eclipse.jetty.util.QuotedStringTokenizer;
import org.eclipse.jetty.util.StringUtil;
import org.eclipse.jetty.util.URIUtil;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;
import org.eclipse.jetty.util.resource.FileResource;
import org.eclipse.jetty.util.resource.Resource;
import org.eclipse.jetty.util.resource.ResourceCollection;
import org.eclipse.jetty.util.resource.ResourceFactory;
import org.xbill.DNS.TTL;

/* JADX INFO: loaded from: classes2.dex */
public class DefaultServlet extends b implements ResourceFactory {
    private static final Logger LOG = Log.getLogger((Class<?>) DefaultServlet.class);
    private static final long serialVersionUID = 4930458713846881193L;
    private ResourceCache _cache;
    private ByteArrayBuffer _cacheControl;
    private ContextHandler _contextHandler;
    private ServletHolder _defaultHolder;
    private MimeTypes _mimeTypes;
    private String _relativeResourceBase;
    private Resource _resourceBase;
    private p _servletContext;
    private ServletHandler _servletHandler;
    private Resource _stylesheet;
    private String[] _welcomes;
    private boolean _acceptRanges = true;
    private boolean _dirAllowed = true;
    private boolean _welcomeServlets = false;
    private boolean _welcomeExactServlets = false;
    private boolean _redirectWelcome = false;
    private boolean _gzip = true;
    private boolean _pathInfoOnly = false;
    private boolean _etags = false;
    private boolean _useFileMappedBuffer = false;

    private boolean getInitBoolean(String str, boolean z3) {
        String initParameter = getInitParameter(str);
        return (initParameter == null || initParameter.length() == 0) ? z3 : initParameter.startsWith("t") || initParameter.startsWith("T") || initParameter.startsWith("y") || initParameter.startsWith("Y") || initParameter.startsWith("1");
    }

    private int getInitInt(String str, int i4) {
        String initParameter = getInitParameter(str);
        if (initParameter == null) {
            initParameter = getInitParameter(str);
        }
        return (initParameter == null || initParameter.length() <= 0) ? i4 : Integer.parseInt(initParameter);
    }

    private String getWelcomeFile(String str) {
        PathMap.Entry holderEntry;
        String str2 = null;
        if (this._welcomes == null) {
            return null;
        }
        int i4 = 0;
        while (true) {
            String[] strArr = this._welcomes;
            if (i4 >= strArr.length) {
                return str2;
            }
            String strAddPaths = URIUtil.addPaths(str, strArr[i4]);
            Resource resource = getResource(strAddPaths);
            if (resource != null && resource.exists()) {
                return this._welcomes[i4];
            }
            if ((this._welcomeServlets || this._welcomeExactServlets) && str2 == null && (holderEntry = this._servletHandler.getHolderEntry(strAddPaths)) != null && holderEntry.getValue() != this._defaultHolder && (this._welcomeServlets || (this._welcomeExactServlets && holderEntry.getKey().equals(strAddPaths)))) {
                str2 = strAddPaths;
            }
            i4++;
        }
    }

    private boolean hasDefinedRange(Enumeration<String> enumeration) {
        return enumeration != null && enumeration.hasMoreElements();
    }

    @Override // g2.i, g2.n
    public void destroy() {
        ResourceCache resourceCache = this._cache;
        if (resourceCache != null) {
            resourceCache.flushCache();
        }
        super.destroy();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(15:0|2|(1:4)(1:5)|6|(18:14|(1:16)(1:17)|18|(0)|21|(1:23)|24|200|25|(1:53)(5:31|(1:33)(3:34|(1:36)(2:198|37)|38)|(3:204|40|(0)(9:44|(0)(1:48)|(3:56|(1:58)(2:60|(1:62)(1:63))|59)|69|203|70|(3:72|(1:74)(1:75)|76)|(2:158|(1:160)(2:165|166))(2:81|(1:(4:(2:95|96)(1:97)|98|(2:(2:103|(1:105))|106)|107)(3:88|(1:92)|93))(1:(3:141|288|154)(2:114|(2:116|(2:118|(1:123)(1:122))(2:124|(2:126|(1:128)(1:129))))(5:130|201|131|(1:135)|136))))|(2:162|206)(1:(2:164|208)(1:207))))|(1:(1:189))(1:190)|192)|54|(0)|69|203|70|(0)|(4:78|80|158|(0)(0))(0)|(0)(0))(2:10|(1:12))|13|21|(0)|24|200|25|(10:27|53|54|(0)|69|203|70|(0)|(0)(0)|(0)(0))(0)|(0)(0)|192|(1:(0))) */
    /* JADX WARN: Can't wrap try/catch for region: R(18:14|(1:16)(1:17)|18|(0)|21|(1:23)|24|200|25|(1:53)(5:31|(1:33)(3:34|(1:36)(2:198|37)|38)|(3:204|40|(0)(9:44|(0)(1:48)|(3:56|(1:58)(2:60|(1:62)(1:63))|59)|69|203|70|(3:72|(1:74)(1:75)|76)|(2:158|(1:160)(2:165|166))(2:81|(1:(4:(2:95|96)(1:97)|98|(2:(2:103|(1:105))|106)|107)(3:88|(1:92)|93))(1:(3:141|288|154)(2:114|(2:116|(2:118|(1:123)(1:122))(2:124|(2:126|(1:128)(1:129))))(5:130|201|131|(1:135)|136))))|(2:162|206)(1:(2:164|208)(1:207))))|(1:(1:189))(1:190)|192)|54|(0)|69|203|70|(0)|(4:78|80|158|(0)(0))(0)|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x02ef, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x02f1, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x02f2, code lost:
    
        r11 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x02f5, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x02f6, code lost:
    
        r10 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x02f8, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x02f9, code lost:
    
        r11 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:158:0x02c1 A[Catch: all -> 0x02ef, IllegalArgumentException -> 0x02f1, TryCatch #9 {IllegalArgumentException -> 0x02f1, all -> 0x02ef, blocks: (B:70:0x00f5, B:72:0x00fd, B:76:0x011d, B:78:0x012b, B:81:0x0133, B:84:0x013b, B:86:0x0143, B:88:0x0149, B:90:0x0158, B:92:0x015e, B:93:0x0172, B:95:0x0187, B:109:0x01d3, B:111:0x01d9, B:114:0x01e3, B:116:0x01e9, B:118:0x01f6, B:120:0x01ff, B:122:0x0205, B:123:0x022c, B:124:0x023f, B:126:0x0245, B:128:0x024b, B:129:0x0250, B:130:0x025a, B:141:0x0284, B:142:0x0288, B:157:0x02c0, B:158:0x02c1, B:160:0x02c7, B:165:0x02d8, B:166:0x02ee), top: B:203:0x00f5 }] */
    /* JADX WARN: Removed duplicated region for block: B:160:0x02c7 A[Catch: all -> 0x02ef, IllegalArgumentException -> 0x02f1, TRY_LEAVE, TryCatch #9 {IllegalArgumentException -> 0x02f1, all -> 0x02ef, blocks: (B:70:0x00f5, B:72:0x00fd, B:76:0x011d, B:78:0x012b, B:81:0x0133, B:84:0x013b, B:86:0x0143, B:88:0x0149, B:90:0x0158, B:92:0x015e, B:93:0x0172, B:95:0x0187, B:109:0x01d3, B:111:0x01d9, B:114:0x01e3, B:116:0x01e9, B:118:0x01f6, B:120:0x01ff, B:122:0x0205, B:123:0x022c, B:124:0x023f, B:126:0x0245, B:128:0x024b, B:129:0x0250, B:130:0x025a, B:141:0x0284, B:142:0x0288, B:157:0x02c0, B:158:0x02c1, B:160:0x02c7, B:165:0x02d8, B:166:0x02ee), top: B:203:0x00f5 }] */
    /* JADX WARN: Removed duplicated region for block: B:162:0x02ce  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x02d2  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x02d8 A[Catch: all -> 0x02ef, IllegalArgumentException -> 0x02f1, TRY_ENTER, TryCatch #9 {IllegalArgumentException -> 0x02f1, all -> 0x02ef, blocks: (B:70:0x00f5, B:72:0x00fd, B:76:0x011d, B:78:0x012b, B:81:0x0133, B:84:0x013b, B:86:0x0143, B:88:0x0149, B:90:0x0158, B:92:0x015e, B:93:0x0172, B:95:0x0187, B:109:0x01d3, B:111:0x01d9, B:114:0x01e3, B:116:0x01e9, B:118:0x01f6, B:120:0x01ff, B:122:0x0205, B:123:0x022c, B:124:0x023f, B:126:0x0245, B:128:0x024b, B:129:0x0250, B:130:0x025a, B:141:0x0284, B:142:0x0288, B:157:0x02c0, B:158:0x02c1, B:160:0x02c7, B:165:0x02d8, B:166:0x02ee), top: B:203:0x00f5 }] */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0307 A[Catch: all -> 0x031c, TRY_LEAVE, TryCatch #6 {all -> 0x031c, blocks: (B:176:0x02fa, B:178:0x0307), top: B:194:0x02fa }] */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0312  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0316  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0321  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0327  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00d8 A[Catch: all -> 0x00ee, IllegalArgumentException -> 0x00f1, TryCatch #8 {IllegalArgumentException -> 0x00f1, all -> 0x00ee, blocks: (B:40:0x00a4, B:42:0x00aa, B:44:0x00b0, B:46:0x00bf, B:56:0x00d8, B:58:0x00dc, B:60:0x00e2, B:63:0x00e9, B:98:0x019f, B:100:0x01a5, B:103:0x01ad, B:105:0x01bc, B:106:0x01bf), top: B:204:0x00a4 }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00fd A[Catch: all -> 0x02ef, IllegalArgumentException -> 0x02f1, TryCatch #9 {IllegalArgumentException -> 0x02f1, all -> 0x02ef, blocks: (B:70:0x00f5, B:72:0x00fd, B:76:0x011d, B:78:0x012b, B:81:0x0133, B:84:0x013b, B:86:0x0143, B:88:0x0149, B:90:0x0158, B:92:0x015e, B:93:0x0172, B:95:0x0187, B:109:0x01d3, B:111:0x01d9, B:114:0x01e3, B:116:0x01e9, B:118:0x01f6, B:120:0x01ff, B:122:0x0205, B:123:0x022c, B:124:0x023f, B:126:0x0245, B:128:0x024b, B:129:0x0250, B:130:0x025a, B:141:0x0284, B:142:0x0288, B:157:0x02c0, B:158:0x02c1, B:160:0x02c7, B:165:0x02d8, B:166:0x02ee), top: B:203:0x00f5 }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x012b A[Catch: all -> 0x02ef, IllegalArgumentException -> 0x02f1, TryCatch #9 {IllegalArgumentException -> 0x02f1, all -> 0x02ef, blocks: (B:70:0x00f5, B:72:0x00fd, B:76:0x011d, B:78:0x012b, B:81:0x0133, B:84:0x013b, B:86:0x0143, B:88:0x0149, B:90:0x0158, B:92:0x015e, B:93:0x0172, B:95:0x0187, B:109:0x01d3, B:111:0x01d9, B:114:0x01e3, B:116:0x01e9, B:118:0x01f6, B:120:0x01ff, B:122:0x0205, B:123:0x022c, B:124:0x023f, B:126:0x0245, B:128:0x024b, B:129:0x0250, B:130:0x025a, B:141:0x0284, B:142:0x0288, B:157:0x02c0, B:158:0x02c1, B:160:0x02c7, B:165:0x02d8, B:166:0x02ee), top: B:203:0x00f5 }] */
    @Override // j2.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void doGet(j2.c r17, j2.e r18) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 813
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.servlet.DefaultServlet.doGet(j2.c, j2.e):void");
    }

    @Override // j2.b
    public void doOptions(c cVar, e eVar) {
        eVar.setHeader(HttpHeaders.ALLOW, "GET,HEAD,POST,OPTIONS");
    }

    @Override // j2.b
    public void doPost(c cVar, e eVar) throws Throwable {
        doGet(cVar, eVar);
    }

    @Override // j2.b
    public void doTrace(c cVar, e eVar) {
        eVar.sendError(HttpStatus.METHOD_NOT_ALLOWED_405);
    }

    @Override // g2.i, g2.o
    public String getInitParameter(String str) {
        String initParameter = getServletContext().getInitParameter("org.eclipse.jetty.servlet.Default." + str);
        return initParameter == null ? super.getInitParameter(str) : initParameter;
    }

    @Override // org.eclipse.jetty.util.resource.ResourceFactory
    public Resource getResource(String str) {
        Resource resourceAddPath;
        IOException e4;
        String str2 = this._relativeResourceBase;
        if (str2 != null) {
            str = URIUtil.addPaths(str2, str);
        }
        Resource resource = null;
        try {
            Resource resource2 = this._resourceBase;
            if (resource2 != null) {
                resourceAddPath = resource2.addPath(str);
                try {
                    if (this._contextHandler.checkAlias(str, resourceAddPath)) {
                        resource = resourceAddPath;
                    }
                } catch (IOException e5) {
                    e4 = e5;
                    LOG.ignore(e4);
                    resource = resourceAddPath;
                }
            } else {
                p pVar = this._servletContext;
                resource = pVar instanceof ContextHandler.Context ? this._contextHandler.getResource(str) : this._contextHandler.newResource(pVar.getResource(str));
            }
            Logger logger = LOG;
            if (logger.isDebugEnabled()) {
                logger.debug("Resource " + str + "=" + resource, new Object[0]);
            }
        } catch (IOException e6) {
            resourceAddPath = resource;
            e4 = e6;
        }
        return ((resource == null || !resource.exists()) && str.endsWith("/jetty-dir.css")) ? this._stylesheet : resource;
    }

    @Override // g2.i
    public void init() throws k0 {
        p servletContext = getServletContext();
        this._servletContext = servletContext;
        ContextHandler contextHandlerInitContextHandler = initContextHandler(servletContext);
        this._contextHandler = contextHandlerInitContextHandler;
        this._mimeTypes = contextHandlerInitContextHandler.getMimeTypes();
        String[] welcomeFiles = this._contextHandler.getWelcomeFiles();
        this._welcomes = welcomeFiles;
        if (welcomeFiles == null) {
            this._welcomes = new String[]{"index.html", "index.jsp"};
        }
        this._acceptRanges = getInitBoolean("acceptRanges", this._acceptRanges);
        this._dirAllowed = getInitBoolean("dirAllowed", this._dirAllowed);
        this._redirectWelcome = getInitBoolean("redirectWelcome", this._redirectWelcome);
        this._gzip = getInitBoolean(HttpHeaderValues.GZIP, this._gzip);
        this._pathInfoOnly = getInitBoolean("pathInfoOnly", this._pathInfoOnly);
        if ("exact".equals(getInitParameter("welcomeServlets"))) {
            this._welcomeExactServlets = true;
            this._welcomeServlets = false;
        } else {
            this._welcomeServlets = getInitBoolean("welcomeServlets", this._welcomeServlets);
        }
        if (getInitParameter("aliases") != null) {
            this._contextHandler.setAliases(getInitBoolean("aliases", false));
        }
        boolean zIsAliases = this._contextHandler.isAliases();
        if (!zIsAliases && !FileResource.getCheckAliases()) {
            throw new IllegalStateException("Alias checking disabled");
        }
        if (zIsAliases) {
            this._servletContext.log("Aliases are enabled! Security constraints may be bypassed!!!");
        }
        this._useFileMappedBuffer = getInitBoolean("useFileMappedBuffer", this._useFileMappedBuffer);
        this._relativeResourceBase = getInitParameter("relativeResourceBase");
        String initParameter = getInitParameter("resourceBase");
        if (initParameter != null) {
            if (this._relativeResourceBase != null) {
                throw new k0("resourceBase & relativeResourceBase");
            }
            try {
                this._resourceBase = this._contextHandler.newResource(initParameter);
            } catch (Exception e4) {
                LOG.warn(Log.EXCEPTION, e4);
                throw new k0(e4.toString());
            }
        }
        String initParameter2 = getInitParameter("stylesheet");
        if (initParameter2 != null) {
            try {
                Resource resourceNewResource = Resource.newResource(initParameter2);
                this._stylesheet = resourceNewResource;
                if (!resourceNewResource.exists()) {
                    LOG.warn("!" + initParameter2, new Object[0]);
                    this._stylesheet = null;
                }
            } catch (Exception e5) {
                Logger logger = LOG;
                logger.warn(e5.toString(), new Object[0]);
                logger.debug(e5);
            }
        }
        if (this._stylesheet == null) {
            this._stylesheet = Resource.newResource(getClass().getResource("/jetty-dir.css"));
        }
        String initParameter3 = getInitParameter("cacheControl");
        if (initParameter3 != null) {
            this._cacheControl = new ByteArrayBuffer(initParameter3);
        }
        String initParameter4 = getInitParameter("resourceCache");
        int initInt = getInitInt("maxCacheSize", -2);
        int initInt2 = getInitInt("maxCachedFileSize", -2);
        int initInt3 = getInitInt("maxCachedFiles", -2);
        if (initParameter4 != null) {
            if (initInt != -1 || initInt2 != -2 || initInt3 != -2) {
                LOG.debug("ignoring resource cache configuration, using resourceCache attribute", new Object[0]);
            }
            if (this._relativeResourceBase != null || this._resourceBase != null) {
                throw new k0("resourceCache specified with resource bases");
            }
            ResourceCache resourceCache = (ResourceCache) this._servletContext.getAttribute(initParameter4);
            this._cache = resourceCache;
            LOG.debug("Cache {}={}", initParameter4, resourceCache);
        }
        this._etags = getInitBoolean("etags", this._etags);
        try {
            if (this._cache == null && initInt3 > 0) {
                ResourceCache resourceCache2 = new ResourceCache(null, this, this._mimeTypes, this._useFileMappedBuffer, this._etags);
                this._cache = resourceCache2;
                if (initInt > 0) {
                    resourceCache2.setMaxCacheSize(initInt);
                }
                if (initInt2 >= -1) {
                    this._cache.setMaxCachedFileSize(initInt2);
                }
                if (initInt3 >= -1) {
                    this._cache.setMaxCachedFiles(initInt3);
                }
            }
            ServletHandler servletHandler = (ServletHandler) this._contextHandler.getChildHandlerByClass(ServletHandler.class);
            this._servletHandler = servletHandler;
            for (ServletHolder servletHolder : servletHandler.getServlets()) {
                if (servletHolder.getServletInstance() == this) {
                    this._defaultHolder = servletHolder;
                }
            }
            Logger logger2 = LOG;
            if (logger2.isDebugEnabled()) {
                StringBuilder sbA = f.a("resource base = ");
                sbA.append(this._resourceBase);
                logger2.debug(sbA.toString(), new Object[0]);
            }
        } catch (Exception e6) {
            LOG.warn(Log.EXCEPTION, e6);
            throw new k0(e6.toString());
        }
    }

    public ContextHandler initContextHandler(p pVar) {
        if (ContextHandler.getCurrentContext() != null) {
            return ContextHandler.getCurrentContext().getContextHandler();
        }
        if (pVar instanceof ContextHandler.Context) {
            return ((ContextHandler.Context) pVar).getContextHandler();
        }
        throw new IllegalArgumentException("The servletContext " + pVar + " " + pVar.getClass().getName() + " is not " + ContextHandler.Context.class.getName());
    }

    public boolean passConditionalHeaders(c cVar, e eVar, Resource resource, HttpContent httpContent) throws EofException {
        Buffer lastModified;
        boolean z3;
        try {
            if (!cVar.getMethod().equals(HttpMethods.HEAD)) {
                if (this._etags) {
                    String header = cVar.getHeader(HttpHeaders.IF_MATCH);
                    if (header != null) {
                        if (httpContent == null || httpContent.getETag() == null) {
                            z3 = false;
                        } else {
                            QuotedStringTokenizer quotedStringTokenizer = new QuotedStringTokenizer(header, ", ", false, true);
                            z3 = false;
                            while (!z3 && quotedStringTokenizer.hasMoreTokens()) {
                                if (httpContent.getETag().toString().equals(quotedStringTokenizer.nextToken())) {
                                    z3 = true;
                                }
                            }
                        }
                        if (!z3) {
                            Response response = Response.getResponse(eVar);
                            response.reset(true);
                            response.setStatus(HttpStatus.PRECONDITION_FAILED_412);
                            return false;
                        }
                    }
                    String header2 = cVar.getHeader(HttpHeaders.IF_NONE_MATCH);
                    if (header2 != null && httpContent != null && httpContent.getETag() != null) {
                        if (httpContent.getETag().toString().equals(cVar.getAttribute("o.e.j.s.GzipFilter.ETag"))) {
                            Response response2 = Response.getResponse(eVar);
                            response2.reset(true);
                            response2.setStatus(HttpStatus.NOT_MODIFIED_304);
                            response2.getHttpFields().put(HttpHeaders.ETAG_BUFFER, header2);
                            return false;
                        }
                        if (httpContent.getETag().toString().equals(header2)) {
                            Response response3 = Response.getResponse(eVar);
                            response3.reset(true);
                            response3.setStatus(HttpStatus.NOT_MODIFIED_304);
                            response3.getHttpFields().put(HttpHeaders.ETAG_BUFFER, httpContent.getETag());
                            return false;
                        }
                        QuotedStringTokenizer quotedStringTokenizer2 = new QuotedStringTokenizer(header2, ", ", false, true);
                        while (quotedStringTokenizer2.hasMoreTokens()) {
                            if (httpContent.getETag().toString().equals(quotedStringTokenizer2.nextToken())) {
                                Response response4 = Response.getResponse(eVar);
                                response4.reset(true);
                                response4.setStatus(HttpStatus.NOT_MODIFIED_304);
                                response4.getHttpFields().put(HttpHeaders.ETAG_BUFFER, httpContent.getETag());
                                return false;
                            }
                        }
                        return true;
                    }
                }
                String header3 = cVar.getHeader(HttpHeaders.IF_MODIFIED_SINCE);
                if (header3 != null) {
                    Response response5 = Response.getResponse(eVar);
                    if (httpContent != null && (lastModified = httpContent.getLastModified()) != null && header3.equals(lastModified.toString())) {
                        response5.reset(true);
                        response5.setStatus(HttpStatus.NOT_MODIFIED_304);
                        if (this._etags) {
                            response5.getHttpFields().add(HttpHeaders.ETAG_BUFFER, httpContent.getETag());
                        }
                        response5.flushBuffer();
                        return false;
                    }
                    long dateHeader = cVar.getDateHeader(HttpHeaders.IF_MODIFIED_SINCE);
                    if (dateHeader != -1 && resource.lastModified() / 1000 <= dateHeader / 1000) {
                        response5.reset(true);
                        response5.setStatus(HttpStatus.NOT_MODIFIED_304);
                        if (this._etags) {
                            response5.getHttpFields().add(HttpHeaders.ETAG_BUFFER, httpContent.getETag());
                        }
                        response5.flushBuffer();
                        return false;
                    }
                }
                long dateHeader2 = cVar.getDateHeader(HttpHeaders.IF_UNMODIFIED_SINCE);
                if (dateHeader2 != -1 && resource.lastModified() / 1000 > dateHeader2 / 1000) {
                    eVar.sendError(HttpStatus.PRECONDITION_FAILED_412);
                    return false;
                }
            }
            return true;
        } catch (IllegalArgumentException e4) {
            if (!eVar.isCommitted()) {
                eVar.sendError(HttpStatus.BAD_REQUEST_400, e4.getMessage());
            }
            throw e4;
        }
    }

    public void sendData(c cVar, e eVar, boolean z3, Resource resource, HttpContent httpContent, Enumeration enumeration) throws IOException {
        boolean z4;
        long contentLength;
        OutputStream writerOutputStream;
        boolean zIsWritten;
        if (httpContent == null) {
            contentLength = resource.length();
            z4 = false;
        } else {
            Connector connector = AbstractHttpConnection.getCurrentConnection().getConnector();
            z4 = (connector instanceof NIOConnector) && ((NIOConnector) connector).getUseDirectBuffers() && !(connector instanceof SslConnector);
            contentLength = httpContent.getContentLength();
        }
        try {
            writerOutputStream = eVar.getOutputStream();
            zIsWritten = writerOutputStream instanceof HttpOutput ? ((HttpOutput) writerOutputStream).isWritten() : AbstractHttpConnection.getCurrentConnection().getGenerator().isWritten();
        } catch (IllegalStateException unused) {
            writerOutputStream = new WriterOutputStream(eVar.getWriter());
            zIsWritten = true;
        }
        if (enumeration == null || !enumeration.hasMoreElements() || contentLength < 0) {
            if (z3) {
                resource.writeTo(writerOutputStream, 0L, contentLength);
                return;
            }
            if (httpContent == null || zIsWritten || !(writerOutputStream instanceof HttpOutput)) {
                writeHeaders(eVar, httpContent, zIsWritten ? -1L : contentLength);
                Buffer indirectBuffer = httpContent == null ? null : httpContent.getIndirectBuffer();
                if (indirectBuffer != null) {
                    indirectBuffer.writeTo(writerOutputStream);
                    return;
                } else {
                    resource.writeTo(writerOutputStream, 0L, contentLength);
                    return;
                }
            }
            if (eVar instanceof Response) {
                writeOptionHeaders(((Response) eVar).getHttpFields());
                ((AbstractHttpConnection.Output) writerOutputStream).sendContent(httpContent);
                return;
            }
            Buffer directBuffer = z4 ? httpContent.getDirectBuffer() : httpContent.getIndirectBuffer();
            if (directBuffer != null) {
                writeHeaders(eVar, httpContent, contentLength);
                ((AbstractHttpConnection.Output) writerOutputStream).sendContent(directBuffer);
                return;
            } else {
                writeHeaders(eVar, httpContent, contentLength);
                resource.writeTo(writerOutputStream, 0L, contentLength);
                return;
            }
        }
        List listSatisfiableRanges = InclusiveByteRange.satisfiableRanges(enumeration, contentLength);
        if (listSatisfiableRanges == null || listSatisfiableRanges.size() == 0) {
            writeHeaders(eVar, httpContent, contentLength);
            eVar.setStatus(HttpStatus.REQUESTED_RANGE_NOT_SATISFIABLE_416);
            eVar.setHeader(HttpHeaders.CONTENT_RANGE, InclusiveByteRange.to416HeaderRangeString(contentLength));
            resource.writeTo(writerOutputStream, 0L, contentLength);
            return;
        }
        if (listSatisfiableRanges.size() == 1) {
            InclusiveByteRange inclusiveByteRange = (InclusiveByteRange) listSatisfiableRanges.get(0);
            long size = inclusiveByteRange.getSize(contentLength);
            writeHeaders(eVar, httpContent, size);
            eVar.setStatus(206);
            eVar.setHeader(HttpHeaders.CONTENT_RANGE, inclusiveByteRange.toHeaderRangeString(contentLength));
            resource.writeTo(writerOutputStream, inclusiveByteRange.getFirst(contentLength), size);
            return;
        }
        writeHeaders(eVar, httpContent, -1L);
        String string = httpContent.getContentType() == null ? null : httpContent.getContentType().toString();
        if (string == null) {
            Logger logger = LOG;
            StringBuilder sbA = f.a("Unknown mimetype for ");
            sbA.append(cVar.getRequestURI());
            logger.warn(sbA.toString(), new Object[0]);
        }
        MultiPartOutputStream multiPartOutputStream = new MultiPartOutputStream(writerOutputStream);
        eVar.setStatus(206);
        StringBuilder sbA2 = f.a(cVar.getHeader(HttpHeaders.REQUEST_RANGE) != null ? "multipart/x-byteranges; boundary=" : "multipart/byteranges; boundary=");
        sbA2.append(multiPartOutputStream.getBoundary());
        eVar.setContentType(sbA2.toString());
        InputStream inputStream = resource.getInputStream();
        String[] strArr = new String[listSatisfiableRanges.size()];
        int i4 = 0;
        int last = 0;
        while (i4 < listSatisfiableRanges.size()) {
            InclusiveByteRange inclusiveByteRange2 = (InclusiveByteRange) listSatisfiableRanges.get(i4);
            strArr[i4] = inclusiveByteRange2.toHeaderRangeString(contentLength);
            last = (int) ((inclusiveByteRange2.getLast(contentLength) - inclusiveByteRange2.getFirst(contentLength)) + ((long) (strArr[i4].length() + multiPartOutputStream.getBoundary().length() + (i4 > 0 ? 2 : 0) + 2 + 2 + (string == null ? 0 : string.length() + 14) + 2 + 13 + 2 + 2 + 2)) + 1 + ((long) last));
            i4++;
        }
        eVar.setContentLength(multiPartOutputStream.getBoundary().length() + 4 + 2 + 2 + last);
        long j4 = 0;
        for (int i5 = 0; i5 < listSatisfiableRanges.size(); i5++) {
            InclusiveByteRange inclusiveByteRange3 = (InclusiveByteRange) listSatisfiableRanges.get(i5);
            StringBuilder sbA3 = f.a("Content-Range: ");
            sbA3.append(strArr[i5]);
            multiPartOutputStream.startPart(string, new String[]{sbA3.toString()});
            long first = inclusiveByteRange3.getFirst(contentLength);
            long size2 = inclusiveByteRange3.getSize(contentLength);
            if (inputStream != null) {
                if (first < j4) {
                    inputStream.close();
                    inputStream = resource.getInputStream();
                    j4 = 0;
                }
                if (j4 < first) {
                    inputStream.skip(first - j4);
                } else {
                    first = j4;
                }
                IO.copy(inputStream, multiPartOutputStream, size2);
                j4 = first + size2;
            } else {
                resource.writeTo(multiPartOutputStream, first, size2);
            }
        }
        if (inputStream != null) {
            inputStream.close();
        }
        multiPartOutputStream.close();
    }

    public void sendDirectory(c cVar, e eVar, Resource resource, String str) throws IOException {
        if (!this._dirAllowed) {
            eVar.sendError(HttpStatus.FORBIDDEN_403);
            return;
        }
        String strAddPaths = URIUtil.addPaths(cVar.getRequestURI(), "/");
        Resource resource2 = this._resourceBase;
        if (resource2 != null) {
            if (resource2 instanceof ResourceCollection) {
                resource = resource2.addPath(str);
            }
        } else if (this._contextHandler.getBaseResource() instanceof ResourceCollection) {
            resource = this._contextHandler.getBaseResource().addPath(str);
        }
        String listHTML = resource.getListHTML(strAddPaths, str.length() > 1);
        if (listHTML == null) {
            eVar.sendError(HttpStatus.FORBIDDEN_403, "No directory");
            return;
        }
        byte[] bytes = listHTML.getBytes(StringUtil.__UTF8);
        eVar.setContentType("text/html; charset=UTF-8");
        eVar.setContentLength(bytes.length);
        eVar.getOutputStream().write(bytes);
    }

    public void writeHeaders(e eVar, HttpContent httpContent, long j4) {
        if (httpContent.getContentType() != null && eVar.getContentType() == null) {
            eVar.setContentType(httpContent.getContentType().toString());
        }
        if (!(eVar instanceof Response)) {
            long jLastModified = httpContent.getResource().lastModified();
            if (jLastModified >= 0) {
                eVar.setDateHeader(HttpHeaders.LAST_MODIFIED, jLastModified);
            }
            if (j4 != -1) {
                if (j4 < TTL.MAX_VALUE) {
                    eVar.setContentLength((int) j4);
                } else {
                    eVar.setHeader(HttpHeaders.CONTENT_LENGTH, Long.toString(j4));
                }
            }
            writeOptionHeaders(eVar);
            if (this._etags) {
                eVar.setHeader(HttpHeaders.ETAG, httpContent.getETag().toString());
                return;
            }
            return;
        }
        Response response = (Response) eVar;
        HttpFields httpFields = response.getHttpFields();
        if (httpContent.getLastModified() != null) {
            httpFields.put(HttpHeaders.LAST_MODIFIED_BUFFER, httpContent.getLastModified());
        } else if (httpContent.getResource() != null) {
            long jLastModified2 = httpContent.getResource().lastModified();
            if (jLastModified2 != -1) {
                httpFields.putDateField(HttpHeaders.LAST_MODIFIED_BUFFER, jLastModified2);
            }
        }
        if (j4 != -1) {
            response.setLongContentLength(j4);
        }
        writeOptionHeaders(httpFields);
        if (this._etags) {
            httpFields.put(HttpHeaders.ETAG_BUFFER, httpContent.getETag());
        }
    }

    public void writeOptionHeaders(HttpFields httpFields) {
        if (this._acceptRanges) {
            httpFields.put(HttpHeaders.ACCEPT_RANGES_BUFFER, HttpHeaderValues.BYTES_BUFFER);
        }
        ByteArrayBuffer byteArrayBuffer = this._cacheControl;
        if (byteArrayBuffer != null) {
            httpFields.put(HttpHeaders.CACHE_CONTROL_BUFFER, byteArrayBuffer);
        }
    }

    public void writeOptionHeaders(e eVar) {
        if (this._acceptRanges) {
            eVar.setHeader(HttpHeaders.ACCEPT_RANGES, HttpHeaderValues.BYTES);
        }
        ByteArrayBuffer byteArrayBuffer = this._cacheControl;
        if (byteArrayBuffer != null) {
            eVar.setHeader(HttpHeaders.CACHE_CONTROL, byteArrayBuffer.toString());
        }
    }
}
