package j2;

import g2.e0;
import g2.u;
import g2.y;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Method;
import java.text.MessageFormat;
import java.util.Enumeration;
import java.util.ResourceBundle;
import org.eclipse.jetty.http.HttpHeaders;
import org.eclipse.jetty.http.HttpStatus;
import org.eclipse.jetty.http.MimeTypes;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b extends g2.i {
    private static final String HEADER_IFMODSINCE = "If-Modified-Since";
    private static final String HEADER_LASTMOD = "Last-Modified";
    private static final String METHOD_DELETE = "DELETE";
    private static final String METHOD_GET = "GET";
    private static final String METHOD_HEAD = "HEAD";
    private static final String METHOD_OPTIONS = "OPTIONS";
    private static final String METHOD_POST = "POST";
    private static final String METHOD_PUT = "PUT";
    private static final String METHOD_TRACE = "TRACE";
    private static final String LSTRING_FILE = "javax.servlet.http.LocalStrings";
    private static ResourceBundle lStrings = ResourceBundle.getBundle(LSTRING_FILE);

    private Method[] getAllDeclaredMethods(Class<?> cls) {
        if (cls.equals(b.class)) {
            return null;
        }
        Method[] allDeclaredMethods = getAllDeclaredMethods(cls.getSuperclass());
        Method[] declaredMethods = cls.getDeclaredMethods();
        if (allDeclaredMethods == null || allDeclaredMethods.length <= 0) {
            return declaredMethods;
        }
        Method[] methodArr = new Method[allDeclaredMethods.length + declaredMethods.length];
        System.arraycopy(allDeclaredMethods, 0, methodArr, 0, allDeclaredMethods.length);
        System.arraycopy(declaredMethods, 0, methodArr, allDeclaredMethods.length, declaredMethods.length);
        return methodArr;
    }

    private void maybeSetLastModified(e eVar, long j4) {
        if (!eVar.containsHeader("Last-Modified") && j4 >= 0) {
            eVar.setDateHeader("Last-Modified", j4);
        }
    }

    public void doDelete(c cVar, e eVar) {
        String protocol = cVar.getProtocol();
        String string = lStrings.getString("http.method_delete_not_supported");
        if (protocol.endsWith("1.1")) {
            eVar.sendError(HttpStatus.METHOD_NOT_ALLOWED_405, string);
        } else {
            eVar.sendError(HttpStatus.BAD_REQUEST_400, string);
        }
    }

    public void doGet(c cVar, e eVar) {
        String protocol = cVar.getProtocol();
        String string = lStrings.getString("http.method_get_not_supported");
        if (protocol.endsWith("1.1")) {
            eVar.sendError(HttpStatus.METHOD_NOT_ALLOWED_405, string);
        } else {
            eVar.sendError(HttpStatus.BAD_REQUEST_400, string);
        }
    }

    public void doHead(c cVar, e eVar) {
        p pVar = new p(eVar);
        doGet(cVar, pVar);
        if (pVar.f2028c) {
            return;
        }
        PrintWriter printWriter = pVar.f2027b;
        if (printWriter != null) {
            printWriter.flush();
        }
        pVar.setContentLength(pVar.f2026a.f2024a);
    }

    public void doOptions(c cVar, e eVar) {
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        for (Method method : getAllDeclaredMethods(getClass())) {
            if (method.getName().equals("doGet")) {
                z3 = true;
                z4 = true;
            }
            if (method.getName().equals("doPost")) {
                z5 = true;
            }
            if (method.getName().equals("doPut")) {
                z6 = true;
            }
            if (method.getName().equals("doDelete")) {
                z7 = true;
            }
        }
        String strA = z3 ? "GET" : null;
        if (z4) {
            strA = strA == null ? "HEAD" : androidx.appcompat.view.a.a(strA, ", HEAD");
        }
        if (z5) {
            strA = strA == null ? "POST" : androidx.appcompat.view.a.a(strA, ", POST");
        }
        if (z6) {
            strA = strA == null ? "PUT" : androidx.appcompat.view.a.a(strA, ", PUT");
        }
        if (z7) {
            strA = strA == null ? "DELETE" : androidx.appcompat.view.a.a(strA, ", DELETE");
        }
        String strA2 = strA == null ? "TRACE" : androidx.appcompat.view.a.a(strA, ", TRACE");
        eVar.setHeader(HttpHeaders.ALLOW, strA2 == null ? "OPTIONS" : androidx.appcompat.view.a.a(strA2, ", OPTIONS"));
    }

    public void doPost(c cVar, e eVar) {
        String protocol = cVar.getProtocol();
        String string = lStrings.getString("http.method_post_not_supported");
        if (protocol.endsWith("1.1")) {
            eVar.sendError(HttpStatus.METHOD_NOT_ALLOWED_405, string);
        } else {
            eVar.sendError(HttpStatus.BAD_REQUEST_400, string);
        }
    }

    public void doPut(c cVar, e eVar) {
        String protocol = cVar.getProtocol();
        String string = lStrings.getString("http.method_put_not_supported");
        if (protocol.endsWith("1.1")) {
            eVar.sendError(HttpStatus.METHOD_NOT_ALLOWED_405, string);
        } else {
            eVar.sendError(HttpStatus.BAD_REQUEST_400, string);
        }
    }

    public void doTrace(c cVar, e eVar) throws IOException {
        StringBuilder sb = new StringBuilder("TRACE ");
        sb.append(cVar.getRequestURI());
        sb.append(" ");
        sb.append(cVar.getProtocol());
        Enumeration<String> headerNames = cVar.getHeaderNames();
        while (headerNames.hasMoreElements()) {
            String strNextElement = headerNames.nextElement();
            sb.append("\r\n");
            sb.append(strNextElement);
            sb.append(": ");
            sb.append(cVar.getHeader(strNextElement));
        }
        sb.append("\r\n");
        int length = sb.length();
        eVar.setContentType(MimeTypes.MESSAGE_HTTP);
        eVar.setContentLength(length);
        eVar.getOutputStream().print(sb.toString());
    }

    public long getLastModified(c cVar) {
        return -1L;
    }

    public void service(c cVar, e eVar) throws IOException {
        String method = cVar.getMethod();
        if (method.equals("GET")) {
            long lastModified = getLastModified(cVar);
            if (lastModified == -1) {
                doGet(cVar, eVar);
                return;
            } else if (cVar.getDateHeader("If-Modified-Since") >= lastModified) {
                eVar.setStatus(HttpStatus.NOT_MODIFIED_304);
                return;
            } else {
                maybeSetLastModified(eVar, lastModified);
                doGet(cVar, eVar);
                return;
            }
        }
        if (method.equals("HEAD")) {
            maybeSetLastModified(eVar, getLastModified(cVar));
            doHead(cVar, eVar);
            return;
        }
        if (method.equals("POST")) {
            doPost(cVar, eVar);
            return;
        }
        if (method.equals("PUT")) {
            doPut(cVar, eVar);
            return;
        }
        if (method.equals("DELETE")) {
            doDelete(cVar, eVar);
            return;
        }
        if (method.equals("OPTIONS")) {
            doOptions(cVar, eVar);
        } else if (method.equals("TRACE")) {
            doTrace(cVar, eVar);
        } else {
            eVar.sendError(HttpStatus.NOT_IMPLEMENTED_501, MessageFormat.format(lStrings.getString("http.method_not_implemented"), method));
        }
    }

    @Override // g2.i, g2.n
    public void service(y yVar, e0 e0Var) throws IOException, u {
        try {
            service((c) yVar, (e) e0Var);
        } catch (ClassCastException unused) {
            throw new u("non-HTTP request or response");
        }
    }
}
